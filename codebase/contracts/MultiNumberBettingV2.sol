pragma solidity ^0.4.4;

// assignment: Blockchain-Course-Solidity-Exercise
contract MultiNumberBettingV2 {
    uint8[] uint_array = new uint8[](3);
    uint8 loserCount;
    uint8 winnerCount;
    string lastWinnerName;
    
    //constructer function
    function MultiNumberBettingV1(uint8[]arrays ) {
        uint_array = arrays;
    }
    
    
    function totalGuesses() returns(uint8) {
        return 5;
    }
    
    function guess(uint8 guess, string guessName) returns (bool) {     
        uint array_length =  uint_array.length;
        for(uint8 i = 0; i < array_length; i++) {
            if(uint_array[i] == guess ) {
                winnerCount++;
                lastWinnerName = guessName;
                return true;
            } else {
                loserCount++;
                return false;
            }    
        }
    }
    
    function getLastWinner() returns(uint3 name) {
        Bytes lastWinnerNameBytes = bytes(lastWinnerName);
        if(lastWinnerNameBytes.length >0)
            
    }

}