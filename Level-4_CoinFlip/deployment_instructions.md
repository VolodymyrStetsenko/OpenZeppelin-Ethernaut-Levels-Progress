# Deployment Instructions and Tools Used

## Tools Used

- **Remix IDE**: Utilized to write, compile, and deploy both the `CoinFlip` contract and the `AttackCoinFlip` contract, enabling comprehensive testing in a controlled environment.
- **MetaMask**: Integrated with Remix IDE to connect to the Ethereum test network, facilitating interaction with deployed contracts and simulation of real-world transactions.

---

## Deployment Steps

### Step 1: Connect to Remix

1. Open [Remix IDE](https://remix.ethereum.org/).
2. Ensure that MetaMask is connected to the same Ethereum test network (such as Rinkeby or Sepolia) for seamless deployment and interaction.

### Step 2: Create and Compile Contracts

1. **Create Files**:
   - In the `contracts/` directory, create two files: `CoinFlip.sol` and `AttackCoinFlip.sol`.
2. **Add Contract Code**:
   - Paste the code for the `CoinFlip` contract into `CoinFlip.sol`.
   - Paste the code for the `AttackCoinFlip` contract into `AttackCoinFlip.sol`.
3. **Compile Contracts**:
   - Select Solidity compiler version `0.8.x` and compile both contracts to ensure compatibility.

### Step 3: Deploy Contracts

1. **Deploy `CoinFlip`**:
   - Select the `CoinFlip` contract in the Remix IDE deployment panel.
   - Deploy the contract and note the deployed contract address.
2. **Deploy `AttackCoinFlip`**:
   - Select the `AttackCoinFlip` contract in the Remix IDE deployment panel.
   - During deployment, input the address of the deployed `CoinFlip` contract into the constructor to link the attack contract to the target.
   - Deploy `AttackCoinFlip`.

### Step 4: Execute Attack

1. **Execute `predictAndFlip()`**:
   - In the `AttackCoinFlip` contract, call the `predictAndFlip()` function repeatedly, 10 times, to achieve 10 consecutive wins.
   - Each call leverages the vulnerability in `CoinFlip` by predicting the outcome accurately, allowing `consecutiveWins` to increment on each successful flip.

---

## Verification

1. **Check `consecutiveWins` Variable**:
   - In the `CoinFlip` contract, observe the `consecutiveWins` variable.
   - Confirm that `consecutiveWins` increments correctly with each call to `predictAndFlip()`, verifying that the attack successfully predicts and wins each flip.

---

This documentation serves as a guide to deploy and verify both the `CoinFlip` and `AttackCoinFlip` contracts, illustrating how to replicate and confirm the exploit under controlled test network conditions.
