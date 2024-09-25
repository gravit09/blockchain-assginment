const hre = require("hardhat");

async function main() {
  const GreatestFinder = await hre.ethers.getContractFactory("GreatestFinder");
  const greatestFinder = await GreatestFinder.deploy();
  await greatestFinder.getDeployedCode();
  console.log("Contract deployed at:", greatestFinder.target);

  const a = parseInt(process.argv[2]);
  const b = parseInt(process.argv[3]);
  const c = parseInt(process.argv[4]);
  console.log(`Finding the greatest among: ${a}, ${b}, ${c}...`);

  const result = await greatestFinder.findGreatest(a, b, c);
  console.log(`The greatest number among ${a}, ${b}, and ${c} is: ${result}`);
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
