# Vulnerability Analysis for Token Contract

## Vulnerability: Integer Overflow in Balance Calculation

### Description
The `Token` contract has an integer overflow vulnerability in its `transfer` function. The balance check `require(balances[msg.sender] - _value >= 0);` does not effectively prevent negative values, which wrap around to large positive numbers.

### Exploitation Steps

1. **Initial Balance Verification**  
   - Checked the player’s balance to confirm the initial allocation of 20 tokens.
  
2. **Overflow Execution**  
   - Called `transfer` with a `_value` greater than the player’s balance (e.g., 21 tokens). This triggered an overflow, increasing the balance to a large positive number.

3. **Balance Verification**  
   - Confirmed that the balance increased significantly due to the overflow.

### Recommended Fixes

- **Implement `SafeMath` library:** Use `SafeMath` for arithmetic operations to prevent overflows and underflows.
- **Revise balance checks:** Modify the `transfer` function to validate sender balance properly:
   
   require(balances[msg.sender] >= _value, "Insufficient balance");
