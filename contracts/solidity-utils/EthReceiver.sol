pragma solidity ^0.8.0;


// File @1inch/solidity-utils/contracts/EthReceiver.sol@v2.1.1



abstract contract EthReceiver {
    error EthDepositRejected();

    receive() external payable {
        _receive();
    }

    function _receive() internal virtual {
        // solhint-disable-next-line avoid-tx-origin
        if (msg.sender == tx.origin) revert EthDepositRejected();
    }
}
