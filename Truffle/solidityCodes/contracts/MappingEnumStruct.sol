pragma solidity ^0.4.4;

contract MappingEnumStruct {

    //storage variable 
    mapping(string => string) capitals;

    function MappingEnumStruct() {
    
    }

    function addCapital(string country, string capital) {
      capitals[country] = capital;
    } 

    function getCapital(string country) view returns(string) {
      return capitals[country];
    }

    function removeCapital(string country) {
      delete(capitals[country]);
    }


}
