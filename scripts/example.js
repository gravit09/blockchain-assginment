const { ethers } = require("ethers");
const readline = require("readline");

async function runContract() {
  //provider
  const provider = new ethers.JsonRpcProvider("https://localhost:8545");
  const signer = await provider.getSigner();

  const sampleFactory = new ethers.ContractFactory(abi, bytecode, signer);
  const sample = await sampleFactory.deploy();
  await sample.getDeployedCode();

  console.log("contract deployed to", sample.target);

  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  const askQuestion = (query) => {
    return new Promise((resolve) => rl.question(query, resolve));
  };

  const num1 = await askQuestion("Enter the first value");
  rl.close();

  const answer = await sample.anyfunc(parseInt(num1));
  console.log(answer);
}

runContract().catch((err) => console.log(err));
