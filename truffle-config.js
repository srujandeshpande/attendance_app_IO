module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    }
  },
  ropsten: {
    provider: function() {
      return new HDWalletProvider(MNEMONIC, "https://ropsten.infura.io/YOUR_API_KEY")
    },
    network_id: 3,
    gas: 4000000      //make sure this gas allocation isn't over 4M, which is the max
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}
