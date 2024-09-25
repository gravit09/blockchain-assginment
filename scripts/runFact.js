const { ethers } = require("ethers");
const readline = require("readline");
const { factAbi, factbytecode } = require("../data/factorial");

async function main() {
  const provider = new ethers.JsonRpcProvider("http://localhost:8545");
  const signer = await provider.getSigner(1);

  const FactFactory = new ethers.ContractFactory(factAbi, factbytecode, signer);
  const Factorial = await FactFactory.deploy();
  await Factorial.getDeployedCode();

  console.log("Contract delpoyed to:", Factorial.target);

  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  const askQuestion = (query) => {
    return new Promise((resolve) => rl.question(query, resolve));
  };

  const num1 = await askQuestion("Enter the number : ");
  rl.close();

  const result = await Factorial.factCalc(parseInt(num1));
  const ans = await Factorial.ans();
  console.log("Answer is:", parseInt(ans));
}

main().catch((error) => {
  console.error("Unexpected error:", error);
  process.exitCode = 1;
});
