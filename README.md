# Custom Cryptocurrency using Solidity

I provided three approaches for creating your own cryptocurrency on the Ethereum blockchain:
- A really **simple** approach with a few lines of _solidity_ source code with the following specifications
- A good implementation based on [ERC-20 standards][0]
- A smart contract that is inherited from the `ERC20` smart contract

## Background

According to [ERC-20 standards][0], if a smart contract implements the following **methods** and **events** it can be called an _ERC-20_ Token Contract and, once deployed, it will be responsible to keep track of the created tokens on Ethereum :

### Methods

```solidity
function name() public view returns (string)
function symbol() public view returns (string)
function decimals() public view returns (uint8)
function totalSupply() public view returns (uint256)
function balanceOf(address _owner) public view returns (uint256 balance)
function transfer(address _to, uint256 _value) public returns (bool success)
```

### Events

```solidity
event Transfer(address indexed _from, address indexed _to, uint256 _value)
event Approval(address indexed _owner, address indexed _spender, uint256 _value)
```


## Simple Approach Specifications

- No inheritance from any other smart contracts like `ERC20`
- The creator (deployer) is the **only** one that can create new coins
- It defines an unlimited number of coins
- Anyone can send coins to the others using and ethereum keypair


[0]: https://ethereum.org/en/developers/docs/standards/tokens/erc-20/
