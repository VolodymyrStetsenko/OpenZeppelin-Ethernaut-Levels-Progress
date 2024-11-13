# Coin Flip Level (Level 4)

## Overview
This level revealed a security vulnerability in the `CoinFlip` smart contract, which uses block data to simulate randomness. By predicting the coin flip outcome using the public block hash, we exploited this flaw to achieve 10 consecutive wins, thereby completing the level.

---

## Objectives
1. **Predict and Win Consecutively**: Successfully predict the coin flip outcome 10 times in a row.
2. **Automate Prediction and Execution**: Use an attack contract to handle the prediction calculations and submission, ensuring a consistent success rate.

---

## Steps Taken to Complete the Level

### 1. Understanding the Contract
- **Vulnerability**: The `CoinFlip` contract relies on the blockhash of the previous block, divided by a constant `FACTOR`, to generate a pseudo-random outcome. Because the block hash is accessible, this approach makes the outcome predictable.
- **Prediction Calculation**: By replicating the contract's formula for calculating the result, we could determine the correct outcome for each flip.

### 2. Developing the Attack Contract
- **AttackCoinFlip Contract**: We created the `AttackCoinFlip` contract to automate predictions. This contract calculates the expected outcome using the same logic as `CoinFlip` and interacts with `CoinFlip` to submit the result.
- **Function Execution**: The `predictAndFlip()` function in `AttackCoinFlip` predicts the result of the coin flip, calls the `flip()` function in `CoinFlip` with the correct outcome, and secures a win.

### 3. Deployment and Execution
- **Deployment**: Both `CoinFlip` and `AttackCoinFlip` contracts were deployed on the Ethereum test network using Remix IDE and MetaMask.
- **Executing Predict and Flip**: The `predictAndFlip()` function was called 10 times, each call successfully predicting and winning the coin flip.

---

## Code Execution
The following commands were used in the console to execute and verify the solution:

```javascript
// Step 1: Deploy CoinFlip contract, and copy its address

// Step 2: Deploy AttackCoinFlip contract with CoinFlip's address in the constructor

// Step 3: Call predictAndFlip() 10 times to achieve 10 consecutive wins
for (let i = 0; i < 10; i++) {
  await attackCoinFlip.predictAndFlip();
}

// Step 4: Verify that the CoinFlip contract recorded the wins
const wins = await contract.consecutiveWins();
console.log("Consecutive Wins:", wins);
Key Takeaways
Blockchain Randomness: Using on-chain data for randomness, such as blockhash, is insecure and can lead to significant vulnerabilities.
Reliable Randomness: For security-sensitive applications, verifiable off-chain randomness sources like Chainlink VRF should be used instead.
