pragma solidity ^0.4.4;

// byte type
//special array : bytes and string : array of byte type data
// we can represent bytes in term of byte[]
//static 
    // byte[12] data; //array of 12 byte data --> bytes12 data; { range -->  bytes[1-32] }
    
//Dynamic
    //byte[] data; -->   bytes data;
    
//restriction on fixed size byte array
    // its read only 
    
contract SpecialArray {
    //declaration
    
    byte byteType = 1; 
    byte[12] byteArray; //static byte array of 12 bytes
    byte[] dynamicByteArray; // dynamic array
    
    bytes bytesData;  // dynamic array
    bytes12 bytesArray12; //static array of 12 byte
    
    
    //Restriction 
    bytes3 fixedBytesData;
    //fixedBytesData[2] = 12;  // compilation error, its read only
    //fixedBytesData = [int(1),2,3]; // compilation error, its read only
    //fixedBytesData.length=5; // compilation error. Cabn not chnage the length of static array.
    
     // dynamic behaviour
     //  byte[]  dynamicByteArray;
       bytes  dynamicBytesArray;
       
       //dynamicByteArray = new byte[](4);
      // dynamicBytesArray = new bytes(4);
       
      // dynamicByteArray = [byte(1),2,3];
       
    function bytesConversion() {
        //static behaviour
        byte[3] memory byteArray3;
        //bytes3 bytesArray3;
    
       byteArray3  =[byte(1),2,3]; // explicit conversion from uint to byte 
       byteArray3[2] = 4; //explicit assignment is allowed in byte dta type
       
       //bytesArray3 = [bytes(2),3,4]; // compiler error, explicit conversion is not allowed
       //bytesArray3[1] = 3; // compiler error, explicit conversion is not allowed
       
    }
    
      
}