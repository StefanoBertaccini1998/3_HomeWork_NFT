// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const { ethers } = require("hardhat");

async function main() {
  const erc1155Token = await ethers.getContractFactory("My1155HybridToken");

  const erc1155TokenDeployed = await erc1155Token.deploy();

  console.log(
    `Erc1155Token with ${erc1155TokenDeployed.address} address deployed to ${erc1155TokenDeployed.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
