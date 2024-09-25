const hre = require("hardhat");

async function main() {
  const PrimeChecker = await hre.ethers.getContractFactory("PrimeChecker");
  const primeChecker = await PrimeChecker.deploy();
  await primeChecker.getDeployedCode();

  console.log("Contract deployed at:", primeChecker.target);

  const number = parseInt(process.argv[2]);

  const result = await primeChecker.isPrime(number);
  console.log(`Is ${number} prime?`, result == 1 ? "Yes" : "No");
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
