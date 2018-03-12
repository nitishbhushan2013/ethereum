var mappingEnumStruct = artifacts.require("./MappingEnumStruct.sol");

contract('mappingEnumStruct', function(accounts) {
  it("should return capital of Australia and then blank", function() {
    var mapping_enum_struct;
    return mappingEnumStruct.deployed().then(function(instance) {
      mapping_enum_struct = instance;
      //Add sample data
      mapping_enum_struct.addCapital("Australia", "Canberra");
      return mapping_enum_struct.addCapital("India", "New Delhi");
    }).then(function(){
        return mapping_enum_struct.getCapital.call("Australia");
    }).then(function(result){
        console.log("capital of Australia :", result);
        assert.isTrue(result == "Canberra");
        mapping_enum_struct.removeCapital("Australia");
        return mapping_enum_struct.getCapital.call("Australia");
    }).then(function(result){
      console.log("capital of Australia :", result);
      assert.isTrue(result == "");
    });
  });

});
