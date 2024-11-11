# Level 2: Fallback - Analysis and Vulnerabilities

## Contract Analysis
The `Fallback` contract contains multiple functions related to contribution management and ownership control. The `contribute` function accepts contributions under 0.001 ether and could potentially change the contract owner if a new contributor exceeds the original owner's balance. Additionally, the contract includes a `receive` function, which can transfer ownership based on simple ether transfers from contributors.

## Vulnerabilities
1. **Ownership Hijacking via `receive` Function**:
   - The `receive` function allows anyone with a non-zero contribution to gain ownership by sending ether directly. This is possible because the function sets `msg.sender` as the new owner without stringent ownership verification.

2. **Funds Draining by New Owner**:
   - Once ownership is claimed, the new owner has full access to the `withdraw` function, allowing them to withdraw all funds in the contract. This lack of access control beyond ownership checks is a significant security risk.

## Exploitation
The steps taken to exploit this contract:
1. Made a minimal contribution to pass the initial ownership check.
2. Sent ether directly to trigger the `receive` function, which transferred ownership to my address.
3. As the new owner, invoked the `withdraw` function, transferring all contract funds to my address.

## Security Recommendations
1. **Restrict Ownership Transfer Logic**:
   - Limit ownership transfer conditions in the `receive` function. Adding additional checks to verify genuine ownership change intentions (e.g., an explicit `transferOwnership` function) could prevent unauthorized ownership transfers.

2. **Implement Access Control Mechanisms**:
   - Include modifiers or role-based access control to sensitive functions such as `withdraw`. Only allow predefined and verified owners to access withdrawal functionality, even if ownership is transferred.

3. **Better Handling of Contributions and Fallback**:
   - Avoid using fallback functions for critical contract operations. Instead, utilize more secure patterns, such as only allowing the owner to call sensitive functions or implementing multisig requirements for ownership transfers.

This analysis provides a comprehensive look at the vulnerabilities and solutions within the `Fallback` contract, showcasing practical exploitation tactics and security best practices.
