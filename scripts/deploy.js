const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const Addition = await ethers.deployContract("Addition");
  await Addition.waitForDeployment();

  console.log("Contract is deployed to:", Addition.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
