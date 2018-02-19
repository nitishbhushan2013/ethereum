pragma solidity ^0.4.4;

// assignment: Blockchain-Course-Solidity-Exercise
contract MultiNumberBettingV3 {
    uint8[] uint_array = new uint8[](3);
    uint8 loserCount;
    uint8 winnerCount;
    uint256 lastWinnerAt;
    string lastWinnerName;
    address winner;
    
    //constructer function
    function MultiNumberBettingV1(uint8[]arrays ) {
        uint_array = arrays;
    }
    
    
    function totalGuesses() returns(uint8) {
        return 5;
    }
    
    function guess(uint8 guess, string guessName) returns (bool) {     
        
        if(guess > 10)
            revert;
        uint array_length =  uint_array.length;
        for(uint8 i = 0; i < array_length; i++) {
            if(uint_array[i] == guess ) {
                winnerCount++;
                lastWinnerName = guessName;
                lastWinnerAt = now;
                
                 return true;
            } else {
                loserCount++;
                return false;
            }    
        }
    }
    
    
    function daysSinceLastWinning() returns (uint256 timeInterval ) {
        uint32 daysSinceLastWinning;
        uint32 hoursSinceLastWinning;
        uint32  minutesSinceLastWinning;
        if(winnerCount == 0)
            return 0;
            
        timeInterval = now - lastWinnerAt;
        daysSinceLastWinning = uint32(timeInterval/(3600*24));
         hoursSinceLastWinning = uint32(timeInterval/(3600));
         minutesSinceLastWinning = uint32(timeInterval/(60));
    }
    
   
}