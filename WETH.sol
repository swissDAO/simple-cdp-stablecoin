// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";


contract WETH is ERC20, Ownable {

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    constructor() ERC20("Wrapped ETH", "WETH") Ownable(msg.sender){
        _totalSupply = 1000000000*1e18;
    }

        function mint(address _to, uint256 _amount) external onlyOwner returns (bool) {
        require(_amount > 0, "amount has to be bigger than 0");
        _mint(_to, _amount);
        return true;
    }
}