pragma solidity ^0.4.0;

contract functionsBasic {
    
    string ownerName;
    uint ownerAge;
    uint amount;
    
    
    //we can omit the variable name,if its not used in the funtion body
    function funtionsBasic(string name, uint age, uint ) { 
        ownerName = name;
        ownerAge = age;
    }
   
   function getOwnerName_style1 () returns(string) {
       return ownerName;
   } 
   
   function getOwnerName_style2() returns(string name) {
       name = ownerName;
       return name;
   }
   
   //name is available as local variable in this function body. 
   //Once declared, we do not need to specifically use return keyword 
   function getOwnerName_style3() returns(string name) {
       name = ownerName;
   }

    // mutiple return value. will receive by the calling method as Tuples. which is an array of result. 
    //result[0] = name, result[1]=age, result[2]=amount. 
    function getOwnerDetails() returns(string name, uint age, uint amount) {
        name = ownerName;
        age = ownerAge;
        amount = 50;
    }   
    
    function printValues() {
        byte[5] memory array1 = [byte(1),2,3,4,5];
        uint array_len = array1.length;
        
        for(uint i = 0; i < array_len; i++){
            // do some thing 
        }
        
        // compiler error - we can not initialize any existing local variable. 
       // uint i = 4;
        
    }
    
    
}