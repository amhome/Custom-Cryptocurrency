# Custom Cryptocurrency using Solidity

This is a really **simple** _solidity_ source code for creating your own custom cryptocurrency on the Ethereum blockchain. According to ERC-20 standards, if a smart contract  implements the following methods and events it can be called an ERC-20 Token Contract and, once deployed, it will be responsible to keep track of the created tokens on Ethereum :

### Methods

```solidity
function name() public view returns (string)
function symbol() public view returns (string)
function decimals() public view returns (uint8)
function totalSupply() public view returns (uint256)
function balanceOf(address _owner) public view returns (uint256 balance)
function transfer(address _to, uint256 _value) public returns (bool success)
```

## Specifications
<ul>
  <li>No inheretance from <code>ERC20</code> contract</li>
  <li>The contract allow its creator (deployer) to create new coins <b>only</b></li>
  <li>Anyone can send coins to the others using and ethereum keypair</li>
  <li>It checks the sender balance before sending the coins</li>
</ul>
