pragma solidity ^0.8.0;


// File @1inch/solidity-utils/contracts/interfaces/IERC20MetadataUppercase.sol@v2.1.1




interface IERC20MetadataUppercase {
    function NAME() external view returns (string memory);  // solhint-disable-line func-name-mixedcase
    function SYMBOL() external view returns (string memory);  // solhint-disable-line func-name-mixedcase
}

