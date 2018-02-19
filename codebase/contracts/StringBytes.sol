pragma solidity ^0.4.4;

// String is neiher basic data type nor value type
// String is array of dynamic byte. 
    //fixed length string is not supported 
    // indexAt() is not supported
    // index access like stringData[3] is not supported 
    // push() is not suported to dynamically alter the size oif StringBytes
    //However, we can convert Bytes to String and vice versa
//solidity does not provide String utility. however we can use external library - stringUtil class
// it is recommended to do heavy string calculations on application sides and not on EVM. 

contract StringBytes {
    string stringToken = "Hello Solidity!!!";
    
    function bytes_string_conversion() returns(string) {
        bytes memory bytesData = "hello solidity bytes format!!!"; // memory storage
        string memory stringData = string(bytesData);
        return stringData;
    }
    
    function getElementByIndex(uint index) returns(byte) {
        bytes memory bytesText = bytes(stringToken);
        byte element = bytesText[index];
        return element;
    }
    
}



//1004 ending with 1004 has returned and delivered. req fof redispatch. call our customer care. 

//pin for credit card - 4862


