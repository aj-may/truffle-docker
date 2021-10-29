let config = {
  compilers: {
    solc: {},
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
  networks: {
    development: {
      port: 8545,
      network_id: '*',
    },
  },
};

if (process.env.SOLC_VERSION)
  config.compilers.solc.version = process.env.SOLC_VERSION;

if (process.env.SOLC_OPTIMIZER_ENABLED)
  config.solc.optimizer.enabled = process.env.SOLC_OPTIMIZER_ENABLED === 'true';

if (process.env.SOLC_OPTIMIZER_RUNS)
  config.solc.optimizer.runs = process.env.SOLC_OPTIMIZER_RUNS;

if (process.env.ETH_HOST)
  config.networks.development.host = process.env.ETH_HOST;

if (process.env.ETH_PORT)
  config.networks.development.port = process.env.ETH_PORT;

if (process.env.ETH_NETWORK_ID)
  config.networks.development.network_id = process.env.ETH_NETWORK_ID;

if (process.env.ETH_GAS)
  config.networks.development.gas = process.env.ETH_GAS;

if (process.env.ETH_GAS_PRICE)
  config.networks.development.gasPrice = process.env.ETH_GAS_PRICE;

module.exports = config;
