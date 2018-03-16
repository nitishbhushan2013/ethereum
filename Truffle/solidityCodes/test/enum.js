var Enum = artifacts.require("./MappingEnumStruct.sol");

contract('enum', function(accounts) {
  it("should return Australia", function() {
    var enum_instance;
    return Enum.deployed().then(function(instance){
        enum_instance = instance;
        enum_instance.getContinent.call(2);
    }).then(function(result){
      console.log("returned rersult is", result);
      assert.isTrue(result == "Australia", "returned value is Australia"); 
      assert.equal(result,"Australia", "should be Australia");
    }); 
  });

});
