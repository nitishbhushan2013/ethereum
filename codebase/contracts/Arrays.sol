pragma solidity ^0.4.4 ;

// static and dynamic Arrays
// different behaviour for storage or memory 

//dynamic Array 'memory' and 'storage'  behaviour difference 
//static array:
    // uint8[] memory array_memory ;   uint8[] array_storage;
    //array_memory = new uinit8[](4);      array_storage = new uint[8](4);
    //  we can not push                    array_storage.push(5);
    // we can not initialize               array_storage= [1,2,3,4]
    //


contract Arrays { 

    uint8[] array_uint_storage = [1,2,3]; // storage reference
    //int8[] array_int =  array_uint_storage; // implicit conversion fails, can not convert from unsigned int to signed int
    int[3]static_array = [1,2]; //last place is initialized by compiler as 0
    // int[3]static_array_1 = [1,2,3,4]; // compiler error, as we have more elements
   
    int8[] dynamic_intArray;
    //int8[] memory dynamic_int_memory_Array; // compiler error, can not define memory at root level. reserved for storage declaration
    bool[] dynamic_boolArray;

   
   function arrayOperation() {
       int8[] memory dynamic_memory_intArray;
       // initializing 
       dynamic_boolArray.length= 5; // devlaring the size of synamic array
       dynamic_boolArray = new bool[](3);
       dynamic_boolArray = [true, false, true];
       
       dynamic_intArray = [int8(1),2,3]; // explicit conversion to conevrt from uint to int.
      
       dynamic_memory_intArray =  new int8[](4);// alloction is allowed
       //dynamic_memory_intArray = [int8(1),2,3];// compiler error: declaration not allowed for memory variable
       //dynamic_memory_intArray.push(3);//compiler error: push() is available ONLY for STOGARE variable
       
       //solidity does not provide 'null' or 'undefined', so only way to check null in array is to check its length 
       if(dynamic_intArray.length == 0) {
         // do some thing   
       }
       
       
       
       
   }
        
   
   
    
}