# Level 1: Introduction to Smart Contract Security

## Task Overview
This level introduces players to basic interaction with smart contracts using MetaMask and the browser console.

## Solution
- **Steps Taken**:
  - Used `contract.info()` to gather initial information.
  - Followed a series of function calls including `info1()`, `info2("hello")`, `infoNum()`, etc., to receive necessary hints.
  - Discovered and authenticated with the password using `authenticate("ethernaut0")`.

## Vulnerabilities & Insights
- **Publicly Accessible Hints**: The contract exposes sensitive information through public functions, which simplifies hacking attempts.
- **Key Lesson**: Be cautious about exposing function calls that reveal critical information, even for test contracts.
