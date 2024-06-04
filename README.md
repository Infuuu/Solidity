# Creating a Token in Solidity

This Solidity program uses some fundamental concepts of Solidity programming language like mapping, variables, functions, conditional statements etc.The purpose of this program is to implement the concepts that we have learned as a begginer.

## Description

MyToken contract is an Ethereum token contract written in Solidity, which is very simple in nature. It enables creating and issuing custom tokens such as minting new tokens or burning existing tokens.

The following are key ingredients of this contract:

1. **Token Name:** String variable to hold the name of the token.

2. **Token Abbreviation:** String variable holding abbreviation of a given token.

3. **Total Supply:** uint256 variable keeping track of all tokens available at any time.

4. **Balances:** Mapping linking Ethereum addresses and their corresponding token balance.

There are two major functions within this contract:

1. **Mint:** A function that allows approved users to create new tokens in addition to sending them towards an ethereum address resulting into both increasing recipient’s balance and total supply.

2. **Burn:** The second one is used by authorized persons to destroy some portion of existing coins subject to having enough numbers authenticated if not updating user’s account while also impacting general supply available in marketplace.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., CreateAToken.sol). Copy and paste the following code into the file:

```javascript
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile CreateAToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "CreateAToken" contract from the dropdown menu, and then click on the "Deploy" button.

After the MyToken contract has been deployed, one can do the following:

Interact with Contract Functions:

1. **Mint:** The mint() function will be usable by authorized users to generate brand-new tokens and assign them to a particular Ethereum address. This updates the balance of the recipient as well as total supply of coins.

2. **Burn:** The burn() function is going to enable authorized users to delete existing tokens. First, this function checks whether or not this user has enough tokens that it can burn and then it modifies his/her balance and total supply accordingly.

Access Contract Variables:

1. **Token Name:** For retrieving the name of the token, one may access tokenName variable.

2. **Token Abbreviation:** To find out about the abbreviated form of this token, you may use tokenAbbrv variable.

3. **Total Supply:** To get how many tokens are there in circulation completely you can access totalSupply variable.

4. **Balances:** A specific Ethereum address’s token balance would be obtained through accessing balances mapping.

## Authors
Sharad Singh

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
