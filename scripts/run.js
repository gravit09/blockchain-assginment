// Import ethers.js
const { ethers } = require("ethers");
const readline = require("readline");

// Function to deploy and interact with the contract
async function main() {
  // Connect to Ethereum (use appropriate provider, e.g., a local node or Infura)
  const provider = new ethers.JsonRpcProvider("http://localhost:8545"); // Change to your RPC URL
  const signer = await provider.getSigner(1); // The account that will deploy the contract

  // Compile and deploy the smart contract (assuming the contract is compiled and its ABI is available)
  const AdditionFactory = new ethers.ContractFactory(
    [
      {
        inputs: [
          {
            internalType: "uint256",
            name: "num1",
            type: "uint256",
          },
          {
            internalType: "uint256",
            name: "num2",
            type: "uint256",
          },
        ],
        name: "add",
        outputs: [
          {
            internalType: "uint256",
            name: "",
            type: "uint256",
          },
        ],
        stateMutability: "pure",
        type: "function",
      },
    ],
    "0x608060405234801561001057600080fd5b506101b4806100206000396000f3fe608060405234801561001057600080fd5b506004361061002b5760003560e01c8063771602f714610030575b600080fd5b61004a600480360381019061004591906100b1565b610060565b6040516100579190610100565b60405180910390f35b6000818361006e919061014a565b905092915050565b600080fd5b6000819050919050565b61008e8161007b565b811461009957600080fd5b50565b6000813590506100ab81610085565b92915050565b600080604083850312156100c8576100c7610076565b5b60006100d68582860161009c565b92505060206100e78582860161009c565b9150509250929050565b6100fa8161007b565b82525050565b600060208201905061011560008301846100f1565b92915050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b60006101558261007b565b91506101608361007b565b92508282019050808211156101785761017761011b565b5b9291505056fea26469706673582212209c7ab1d58b86e4723c22f16905138267e8c21a2af7fa7092bbd30be8b52d7e2e64736f6c63430008180033",
    signer
  );

  const Addition = await AdditionFactory.deploy();

  await Addition.getDeployedCode();
  console.log("Contract deployed to:", Addition.target);

  const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout,
  });

  const askQuestion = (query) => {
    return new Promise((resolve) => rl.question(query, resolve));
  };

  const num1 = await askQuestion("Enter the first number (num1): ");
  const num2 = await askQuestion("Enter the second number (num2): ");
  rl.close();

  const result = await Addition.add(parseInt(num1), parseInt(num2));
  console.log("Addition result:", result.toString());
}

// Run the script
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
