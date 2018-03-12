var Calculator = artifacts.require("./Calculator.sol");

contract('Calculator', function(accounts) {
//Test case 1: outcome is initialized to 10
//Test case 2: add 10 and substract 5 would result 15

  it("should assert true", function() {
    var calc;
    return Calculator.deployed().then(function(instance){
      calc = instance;
      return calc.getResult.call(); // promise
    }).then(function(result){ // call back
      assert.equal(result.valueOf(), 10, "value is not initialized to 10");
      calc.addToNumber(10);
      calc.substractFromNumber(5);
      return calc.getResult.call(); // promise 
    }).then (function(result){
      assert.equal(result.valueOf(), 15, "value is not equal to 15");
    })
    
  });

});
