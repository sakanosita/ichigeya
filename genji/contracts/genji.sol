// contracts/SimpleToken.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GenjiToken is ERC20 {
    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor (uint256 initialSupply
    ) public ERC20("GenjiToken", "GENJI") {
        _mint(msg.sender, initialSupply);
    }
}
