# Level 2: Fallback

## Task Description
The goal for this level is:
- Claim ownership of the contract.
- Drain all ether from the contract.

### Solution Steps
1. **Make a Minimal Contribution**:
   - Used the `contribute()` function to add a small amount to my contribution balance, ensuring that my address is recognized as a contributor.

2. **Trigger Ownership Transfer through `receive` Function**:
   - Sent a direct transaction with a minimal ether amount to invoke the `receive` function, which granted me ownership of the contract.

3. **Verify Ownership Change**:
   - Called the `owner()` function to confirm that my address is now the owner of the contract.

4. **Withdraw All Funds**:
   - Used the `withdraw()` function to transfer the contract’s balance to my address, successfully completing the level.

### Skills Demonstrated
- Understanding fallback functions in Solidity.
- Using direct ether transfers to invoke `receive` functions.
- Manipulating contract ownership and access control.

## Running Instructions
1. Clone the repository.
2. Navigate to `Level-2` folder.
3. Follow the instructions provided to replicate the solution locally.
