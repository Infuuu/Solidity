// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyToken{

    // Creating variables to hold Token Name , Token Abbrv., Total Supply
    string public tokenName;
    string public tokenAbbrv;
    uint256 public totalSupply;

    //creating a mapping of address to balances
    mapping(address => uint256) public balances;

    function mint(address _toWhome, uint _howMuch) public{
        balances[_toWhome] += _howMuch;
        totalSupply += _howMuch;
    }

    function burn(address _toWhome, uint _howMuch) public{
        require(balances[msg.sender] >= _howMuch, "You dont have enough tokens");
        balances[_toWhome] -= _howMuch;
        totalSupply -= _howMuch;
    }
}