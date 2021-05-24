// migrations/2_deploy.js
const MyFirstToken = artifacts.require('MyFirstToken');

module.exports = async function (deployer) {
  await deployer.deploy(MyFirstToken, 10000);
};
