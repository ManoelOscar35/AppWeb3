require("@nomicfoundation/hardhat-toolbox");
require('@nomiclabs/hardhat-ethers');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    hardhat: {
      chainId: 1337,
    },
    sepolia: {
      url: 'https://eth-sepolia.g.alchemy.com/v2/dRhY7m10EDqY3Mn3U7E9ITHCUf5zSXr5',
      accounts: ['9d14b89d2503ac852b13c6494f3b69034ac7b8278e59cb495a789c81c7fa026a']
    }
  }
};
