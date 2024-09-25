const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const Addition = await ethers.deployContract("Addition");
  const Factorial = await ethers.deployContract("Factorial");
  await Addition.waitForDeployment();
  await Factorial.waitForDeployment();

  console.log("Contract is deployed to:", Addition.target);
  console.log("Contract is deployed to:", Factorial.target);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
