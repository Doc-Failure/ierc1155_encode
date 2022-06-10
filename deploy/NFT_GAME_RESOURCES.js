//{ ethers, deployments, getNamedAccounts }
module.exports = async function ({ ethers, deployments, getNamedAccounts }) {
  const chainId = await getChainId()
  const { deploy } = deployments
  const { deployer, dev } = await getNamedAccounts()

  let { address } = await deploy("NFT_GAME_RESOURCES", {
    from: deployer,
    log: true,
    deterministicDeployment: false
  });
}

module.exports.tags = ["NFT_GAME_RESOURCES"]
