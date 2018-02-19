pragma solidity ^0.4.4;

contract Mapping {
    
    mapping(string => string) capitals;
    
    enum country {India, China, Australia}
    
    function Mapping() {
        capitals["India"] = "New Delhi";
        capitals["Australia"] = "Canberra";
    }
    
    function addCapital(string country, string capital) {
       capitals[country] = capital;
    }
    
    function getCapital(string country) returns (string capital) {
        capital = capitals[country];
    }
    
    function removeCapital(string country) {
        delete(capitals[country]);
    }
    
    function getCountryByIndex(uint8 index) returns (string name) {
        if(index == uint8(country.India))
            name = "India";
        if(index == uint8(country.China))
            name = "China";    
        if(index == uint8(country.Australia))
            name = "Australia";    
    }

}