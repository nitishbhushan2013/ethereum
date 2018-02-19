pragma solidity ^0.4.18;

contract Globals {
    enum timeFormat { SECOND, MINUTE, HOUR, DAY, WEEK, YEAR }
    
    
    function calculateTime(uint number, uint timeIndex) returns(uint finalTime) {
        finalTime = now;
        
        if(timeIndex == uint(timeFormat.SECOND))
            finalTime = now + number * 1 seconds;
        else if (timeIndex == uint(timeFormat.MINUTE))    
            finalTime = now + number * 1 minutes;
        else if (timeIndex == uint(timeFormat.HOUR))    
            finalTime = now + number * 1 hours;    
        else if (timeIndex == uint(timeFormat.DAY))    
            finalTime = now + number * 1 days;    
        else if (timeIndex == uint(timeFormat.WEEK))    
            finalTime = now + number * 1 weeks;
        else if (timeIndex == uint(timeFormat.YEAR))    
            finalTime = now + number * 1 years;    
    }
    
    
    function getCurrentBlockDetails() returns(uint number, address miner, uint difficulty, bytes32 hash, uint gasLimit) {
            number = block.number;
            miner = block.coinbase;
            difficulty = block.difficulty;
            hash = block.blockhash(number - 1);
            gasLimit = block.gaslimit;
    }
    
    
    function callCryptoFunctions(string strValue ) returns (bytes32[5] result ) {
        strValue = "Helllo callCryptoFunctions!!!!";
        result[0] = sha256(strValue);
        result[1] = sha3(strValue);
        result[2] = keccak256(strValue);
        result[3] = ripemd160(strValue);
        result[4] = sha3("Hello","Solidity","learning"); // we can give multiple parameters of type bytes, function will concatenate first and then call the function
    }
    
    
    
}
