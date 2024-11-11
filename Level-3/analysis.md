# Vulnerability Analysis for Fallout Level

## Description
The `Fallout` contract contains a common vulnerability due to a misnamed constructor. Instead of naming the constructor `Fallout`, it was mistakenly named `Fal1out`, thus treating it as a regular function.

## Exploitation Steps
1. Call `Fal1out()` to claim ownership of the contract.
2. As the new owner, access functions restricted by the `onlyOwner` modifier, such as `collectAllocations()`.

## Potential Fix
- Ensure constructors are named exactly as the contract name in versions of Solidity prior to 0.4.22, where explicit `constructor` keyword wasn’t introduced.
- Use appropriate modifiers and thoroughly test contract deployment logic.

## Lessons Learned
This demonstrates the importance of:
- Following naming conventions.
- Implementing tests and thorough reviews before deploying contracts.
- Understanding legacy syntax to avoid such issues in older Solidity versions.
