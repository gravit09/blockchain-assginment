const { ethers } = require("ethers");
const readline = require("readline");
const { revAbi, revbytecode } = require("../data/reverse");

async function main() {
  const provider = new ethers.JsonRpcProvider("http://localhost:8545");
  const signer = await provider.getSigner(1);

  const RevFactory = new ethers.ContractFactory(revAbi, revbytecode, signer);
  const reversed = await RevFactory.deploy();
  await reversed.getDeployedCode();

  console.log("Contract delpoyed to:", reversed.target);

  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  const askQuestion = (query) => {
    return new Promise((resolve) => rl.question(query, resolve));
  };

  const num1 = await askQuestion("Enter the number : ");
  rl.close();

  const result = await reversed.reverseFunc(parseInt(num1));
  console.log(parseInt(result));
}

main().catch((error) => {
  console.error("Unexpected error:", error);
  process.exitCode = 1;
});
