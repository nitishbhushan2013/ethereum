pragma solidity 0.4.18;

// Three ways of conversion 
    // 1. Implicit conversion
    // 2. Explicit conversion
    // 3. deduction 
    
//value Type variable - bool,int,uint : they always pass by values     
    
contract BasicDataType {
    uint8 x8 = 255; // 1 byte unsigned integer
    uint16 x16 = 16; // 2 byte unsigned integer
    
    address owner; // address datatype,20 bytes: member variable - balance| methods -transfer(), send()
    uint ownerInitialBalance;
    
    // constructer function
    function BasicDataType(address addr) {   
        owner = addr;
        ownerInitialBalance = addr.balance;
    }
    
   function dataConversion() {
       int x256;// 8 bytes signed integer
       
      // x8 = x256; // compilation failure, 
       x256 = x8; // compilation successful , implicit conversion
       
       x8 = uint8(x256); // explicit conversion
       
       var x81 = x8; //deduction, based on assigned value, compiler would deduce the type. 
       x81=24;
      // Boolean  - Boo
      bool flag; // default to false
        flag = false;
      //if(1){ // implicit conversion between two datatype is not supported
      if (1 > 0) {
         // this if condition results boolean and hence allow  
      }
   }
   
   function moreDataType() {
       
   }

   
    function checkNullvalues() {
       bool addressFlag;
       
       addressFlag = (owner == address(0x0) ); 
   }
}