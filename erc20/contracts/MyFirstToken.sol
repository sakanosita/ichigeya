// SPDX-License-Identifier: MIT
pragma solidity >=0.7.6;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract MyFirstToken is ERC20 {
    constructor (uint256 initialSupply) ERC20("MyFirstToken", "MFT") {
        _mint(msg.sender, initialSupply * 10 ** uint(decimals()));
    }
}
