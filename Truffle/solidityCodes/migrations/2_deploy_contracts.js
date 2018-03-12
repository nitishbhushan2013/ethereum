var MappingEnumStruct = artifacts.require("./MappingEnumStruct.sol");

module.exports = function(deployer) {
  deployer.deploy(MappingEnumStruct);
};
