pragma solidity ^0.4.4;


contract BankDepositWithdrawal {
    
    address public owner; //address of the contarct creator
    mapping (address => uint) private balances;
    event logEvent(address, uint);
    function BankDepositWithdrawal () {
        owner = msg.sender; // msg.sender always poit to the address of the person who initially deployed the contract
    }
    
    function balance() constant public returns(uint) { // constant function would not allowed to change the state variable
        return balances[msg.sender];
    }
    
    function deposit() payable public  returns (uint) { // msg.value is available to payable function
        //check amount overflow
        require((balances[msg.sender]+msg.value) > balances[msg.sender]); //if false, it will return an exception if condition not met. require used to check user input.
        //deposit operation
        balances[msg.sender]+= msg.value;
        
        logEvent(msg.sender, msg.value);
        return balances[msg.sender];
        
    }

    function withdrawal(uint amount) public returns (uint) {
        // check withdrawal condition
        require(amount < balances[msg.sender]); // otherwise throw exception
        balances[msg.sender]-= amount; // first take the amount from the owner
        msg.sender.transfer(amount);
        return balances[msg.sender];
    }
    
    function kill() {    // kill the contract. remaining ether and gas in this contract will send back to owner
        if(owner == msg.sender) {
           // suicide(owner);
           selfdestruct(owner);  // this is newer implementation name for suicide()
        }   else { throw;
        }
    }

}
