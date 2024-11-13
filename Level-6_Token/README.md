
---

# Level 6: Token - Exploiting Integer Overflow

## Overview

In this level, we exploited an integer overflow vulnerability in the `Token` contract. By transferring an amount greater than the current balance, the balance wrapped to a large positive number, allowing us to accumulate additional tokens beyond the initial allocation.

## Objectives

- Identify and exploit the integer overflow vulnerability.
- Increase the balance beyond the initial allocation of 20 tokens.

## Solution Steps

1. **Analyze the Vulnerability**  
   - The `Token` contract’s `transfer` function contains an integer overflow vulnerability due to insufficient validation of the balance check.
   - Specifically, the `require(balances[msg.sender] - _value >= 0);` statement fails to prevent negative values, which wrap around to large positive numbers.

2. **Execute Exploit in Console**  
   - Checked initial balance to confirm 20 tokens.
   - Called `transfer` with a value of 21 tokens, triggering an overflow.
   - Verified the new balance, confirming the successful exploit.

## Key Takeaways

- Integer overflow vulnerabilities in smart contracts can lead to unauthorized balance increases.
- Secure coding practices, such as implementing `SafeMath`, are essential to prevent such vulnerabilities.

## Deployment Instructions

The exploit was performed entirely within the console, with no custom contract required for this level.

