const { ethers } = require("hardhat");
const prompt = require("prompt-sync")();

async function main() {
  const SimpleCalculator = await ethers.getContractFactory("Addition");
  const calculator = await SimpleCalculator.deploy();
  await calculator.waitForDeployment();

  console.log("SimpleCalculator deployed to:", calculator.target);

  // Get user input for addition
  const aAdd = prompt("Enter the first number for addition: ");
  const bAdd = prompt("Enter the second number for addition: ");
  const addResult = await calculator.add(aAdd, bAdd);
  console.log(`The result of ${aAdd} + ${bAdd} is: ${addResult.toString()}`);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
