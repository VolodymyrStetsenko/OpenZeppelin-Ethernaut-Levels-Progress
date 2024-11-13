Coin Flip Level (Level 4)

Overview

This level exposed a vulnerability in the smart contract that was caused by using block data to simulate randomness. By predicting the coin flip correctly using the known block hash values, we were able to exploit this flaw and achieve 10 consecutive wins.

Objectives

Predict the outcome of the coin flip 10 times in a row.

Use a custom smart contract to perform the predictions accurately and consecutively.

Solution Steps

Analyze the CoinFlip Contract:

The contract uses the blockhash of the previous block to generate a pseudo-random number, which we can predict.

By using the same calculation logic, we can determine the correct outcome for each coin flip.

Write Attack Contract:

We created the AttackCoinFlip contract, which calculates the expected result based on the same logic and interacts with CoinFlip to execute the attack.

Deploy and Execute the Attack:

The attack contract was deployed using Remix IDE.

We called the predictAndFlip() function 10 times, each time successfully predicting the outcome and thereby completing the level.
