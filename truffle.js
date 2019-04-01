let config = {
  compilers: {
    solc: {},
  },
  networks: {
    default: {},
  },
};

if (process.env.SOLC_VERSION)
  config.compilers.solc.version = process.env.SOLC_VERSION;

if (process.env.ETH_HOST)
  config.networks.default.host = process.env.ETH_HOST;

if (process.env.ETH_PORT)
  config.networks.default.port = process.env.ETH_PORT;

if (process.env.ETH_NETWORK_ID)
  config.networks.default.network_id = process.env.ETH_NETWORK_ID;

if (process.env.ETH_GAS)
  config.networks.default.gas = process.env.ETH_GAS;

if (process.env.ETH_GAS_PRICE)
  config.networks.default.gasPrice = process.env.ETH_GAS_PRICE;

module.exports = config;
