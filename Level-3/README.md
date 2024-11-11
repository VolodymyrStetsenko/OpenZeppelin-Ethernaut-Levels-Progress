# Fallout Level (Level 3)

## Overview
This level demonstrated a vulnerability in the smart contract due to a mistakenly named constructor function. By exploiting this vulnerability, we were able to claim ownership of the contract and complete the level.

## Objectives
- Claim ownership of the contract by invoking the incorrectly named constructor function `Fal1out`.
- Withdraw funds from the contract balance as the new owner.

## Steps Taken to Complete the Level

1. **Understanding the Contract**:
   - The contract has a mistakenly named constructor `Fal1out()` instead of `Fallout()`, making it accessible as a regular function.
   - By calling this function, any user can become the contract’s owner.

2. **Claiming Ownership**:
   - Called `Fal1out()` with a minimal value to set `msg.sender` as the new `owner`.

3. **Withdrawing Funds**:
   - After claiming ownership, the `collectAllocations()` function was accessible, allowing the transfer of the contract’s balance.

## Code Execution
- The following commands were used in the console to complete the level:
  ```javascript
  // Step 1: Call the faulty constructor to claim ownership
  await contract.Fal1out();

  // Step 2: Verify ownership
  const currentOwner = await contract.owner();
  console.log("Current Owner:", currentOwner);

  // Step 3: Withdraw the balance
  await contract.collectAllocations();
