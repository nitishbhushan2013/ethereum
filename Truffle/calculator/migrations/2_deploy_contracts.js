var Calculator = artifacts.require("./calculator.sol");

module.exports = function(deployer) {
  deployer.deploy(Calculator);
};
