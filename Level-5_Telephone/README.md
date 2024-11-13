# Level 5: Telephone - tx.origin Vulnerability Exploit

## Overview
This level exposed a critical vulnerability in the `Telephone` smart contract by using `tx.origin` in place of `msg.sender`. Using `tx.origin` can lead to phishing attacks, where an attacker can trigger a function on behalf of the victim to gain control over the contract.

## Objectives
- Exploit the vulnerability by changing the contract ownership.
- Understand the risks associated with using `tx.origin` instead of `msg.sender`.

## Solution Steps

1. **Analyze the Vulnerability in Telephone Contract**:
   - The contract `Telephone` changes ownership only if `tx.origin != msg.sender`.
   - This condition allows an external contract to call `changeOwner` and bypass ownership restrictions.

2. **Develop the Attack Contract**:
   - `AttackTelephone` contract is designed to interact with `Telephone` and claim ownership.
   - The `claimOwnership` function calls `changeOwner` with `msg.sender` as the new owner.

3. **Deployment and Execution**:
   - Deploy both contracts using Remix IDE.
   - Execute `claimOwnership` in `AttackTelephone`, triggering `Telephone` to assign ownership.

4. **Verification**:
   - Use the `owner` variable in `Telephone` to verify the ownership change.

## Key Takeaways
- Avoid using `tx.origin` for security-critical checks. `msg.sender` should be used to ensure control remains with the direct caller.
- Proper usage of `msg.sender` is essential to prevent unauthorized access or phishing-style attacks.
