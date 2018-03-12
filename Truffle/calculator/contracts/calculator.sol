pragma solidity ^0.4.4;


contract Calculator {

  uint outcome;

  function Calculator(uint number) {
    outcome= number;
  }

  function getResult() constant returns (uint) {
    return outcome;
  }

  function addToNumber(uint num) returns (uint) {
    outcome += num;
    return outcome; 
  }

  function substractFromNumber(uint num) returns (uint) {
    outcome -= num;
    return outcome; 
  }


}
