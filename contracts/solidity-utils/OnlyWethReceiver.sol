pragma solidity ^0.8.0;


// File @1inch/solidity-utils/contracts/OnlyWethReceiver.sol@v2.1.1



abstract contract OnlyWethReceiver is EthReceiver {
    address private immutable _WETH;  // solhint-disable-line var-name-mixedcase

    constructor(address weth) {
        _WETH = address(weth);
    }

    function _receive() internal virtual override {
        if (msg.sender != _WETH) revert EthDepositRejected();
    }
}