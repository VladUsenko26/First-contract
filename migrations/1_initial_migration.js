const MoneyBox = artifacts.require("MoneyBox");

module.exports = function (deployer) {
  deployer.deploy(MoneyBox);
};
