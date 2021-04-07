var HDWalletProvider = require("truffle-hdwallet-provider");

// Be sure to match this mnemonic with that in Ganache!
var mnemonic = "winter sunset nice emerge melt punch antique strike output depend crumble grow";

module.exports = {
  networks: {
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/1dcea2e12e874b2bab2a88f69d5929e1", 0, 10);
      },
      network_id: '*',
      gas: 9999999
    }
  },
  compilers: {
    solc: {
       version: "0.4.24"   // Fetch exact version from solc-bin (default: truffle's version)
      // docker: false,        // Use "0.5.1" you've installed locally with docker (default: false)
      // settings: {          // See the solidity docs for advice about optimization and evmVersion
      //  optimizer: {
      //    enabled: false,
      //    runs: 200
      //  },
      //  evmVersion: "byzantium"
      // }
    }
  }
};
