pragma solidity >=0.7.0 <0.9.0;


contract MyCurrency {
    
    address public minter;

    mapping(address => uint) public balances;

    constructor() {
        minter = msg.sender; // set deployer as minter
    }

    error insufficientBalance(uint requested, uint available);
    event sentEvent(address from, address to, uint amount);

    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);  // allow deployer to mint
        balances[receiver] += amount;   // send arbitrary amount to receiver
    }


    function send(address receiver, uint amount) public {
        if(amount > balances[msg.sender]) // check sender balance
            revert insufficientBalance({ requested: amount, available: balances[msg.sender]});
        
        balances[msg.sender] -= amount;                 // reduce from sender
        balances[receiver] += amount;                   // add to receiver
        emit sentEvent(msg.sender, receiver, amount);   // log event
    }
}
