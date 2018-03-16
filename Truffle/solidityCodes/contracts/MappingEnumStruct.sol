pragma solidity ^0.4.4;

contract MappingEnumStruct {

    //storage variable 
    mapping(string => string) capitals;
    enum continents {Asia,Africa,Australia,Antartica,Europe}
    struct country {
      string name;
      continents continent;
      uint16 population;
    }

    country[] asiaCountries;

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

    function getContinent(uint8 index ) returns (string) {
      
      if (index == uint8(continents.Asia))   
         return "Asia";   
      if (index == uint8(continents.Africa))
        return "Africa";
      if (index == uint8(continents.Australia))
        return "Australia";
      if (index == uint8(continents.Antartica))
        return "Antartica";       
      if (index == uint8(continents.Europe))
        return "Europe"; 
    }
 // since this function can be called from outside, we are NOT passing the struct, rather
 // passing the individual elements 
  function addEuroperanCountry(string counName, uint8 index, uint16 pop) returns (bool) {
    // if country is not in the Asia continent then return false
    if(index != uint8(continents.Asia))
      return false;
    // store the country in the asiaCountries[]
      // first way of creating struct object and persisting it : prameter order must match 
      //country memory asiaCountry1 = country(counName,continents(index),pop);
      // second way of creating struct object and persisting it : order is not important
      //country memory asiaCountry2 = country({name : countName, continent : continents(index), population : pop});
      country memory asiaCountry; 
      asiaCountry.name = counName;
      asiaCountry.continent = continents(index);
      asiaCountry.population = pop;

      asiaCountries.push(asiaCountry);
      return true;
  }
 // since struct is not part of ABI definition, it can not be pass as an object to outside calling function. 
 // since enum is also not part of ABI, we can not pass the value rather we need to pass the index 
  function getAsianCountry (string name ) internal returns (string, uint8, uint16) {
    // iterate the array
    for(uint8 i = 0; i < asiaCountries.length; i++) {

      if (name == asiaCountries[i].name) {
        return ( asiaCountries[i].name, uint8(asiaCountries[i].continent), asiaCountries[i].population );
      }  
    }
  }

}
