pragma solidity ^0.8.0;


// File @1inch/solidity-utils/contracts/interfaces/IWETH.sol@v2.1.1



interface IWETH is IERC20 {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
}

