pragma solidity ^0.8.0;

import "hardhat/console.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenEthTestnet is ERC20 {
    // create the token passing the name and symbol
    constructor(
        uint256 _initialSupply
    ) ERC20("TokenEthTestnet", "TET") {
        // mint all tokens and send them to the deployer's wallet
        _mint(msg.sender, _initialSupply * (10**uint256(10)));
        console.log("Tokens are successfully minted %s", _initialSupply);
        console.log("Contract deployed! Tokens sent to %s", msg.sender);
    }
}
