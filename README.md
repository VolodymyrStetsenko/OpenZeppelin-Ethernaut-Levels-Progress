# OpenZeppelin Ethernaut Levels Progress

## Project Overview
This repository provides an in-depth exploration of security vulnerabilities in smart contracts, presented through solutions for each level of OpenZeppelin's Ethernaut game. Each level represents a unique challenge in Ethereum development, highlighting potential security risks and best practices for mitigating them. The repository includes comprehensive documentation, code solutions, and detailed analyses, showcasing not only the vulnerabilities but also strategies for robust contract security.

Through this project, I aim to demonstrate expertise in identifying and resolving security issues in Solidity contracts, which is essential for safeguarding decentralized applications.

## Repository Structure
- **Challenge Contracts**: Each level includes the challenge contract code.
- **Solution Documentation**: A detailed explanation of vulnerabilities found and the solution approach.
- **Security Analysis**: Additional insights and recommendations for best practices in Solidity security.

---

## Levels
- **[Level 1: Hello Ethernaut - Introduction to Smart Contract Security](./Level-1)**
  - *Objective*: Introduce basic principles of smart contract security and demonstrate secure coding practices.
  - *Description*: This level covers fundamental access control mechanisms, emphasizing the importance of secure initialization.

- **[Level 2: Fallback Function Exploit](./Level-2)**
  - *Objective*: Exploit fallback functions to understand their role in contract security.
  - *Description*: Demonstrates how poorly implemented fallback functions can lead to unauthorized control and fund extraction.

- **[Level 3: Delegatecall Vulnerability - Ownership Takeover](./Level-3)**
  - *Objective*: Manipulate `delegatecall` to seize control of the contract.
  - *Description*: Explores the risks of `delegatecall` when improperly secured, emphasizing the necessity of cautious use in contracts with sensitive state data.

- **[Level 4: Coin Flip - Predictable Randomness Exploit](https://github.com/VolodymyrStetsenko/OpenZeppelin-Ethernaut-Levels-Progress/tree/207e98f5aed70277f0d48cb36feffd6142fca79e/Level-4_CoinFlip)**
  - *Objective*: Exploit a predictable randomness source to secure consecutive wins in a coin flip game.
  - *Description*: Highlights the risks of using block data as a source of randomness, demonstrating how attackers can predict outcomes and consistently win by using the block hash and the same calculation logic as the contract.
 
- **[Level 5: Telephone - tx.origin Vulnerability Exploit](./Level-5_Telephone)**
  - *Objective*: Exploit the vulnerability by manipulating `tx.origin` to gain unauthorized ownership.
  - *Description*: Demonstrates the danger of using `tx.origin` in place of `msg.sender`, allowing for phishing-style attacks that bypass ownership restrictions.

- **[Level 6: Token - Integer Overflow Exploit](./Level-6_Token)**
  - *Objective*: Exploit an integer overflow vulnerability to manipulate token balance.
  - *Description*: This level illustrates how unchecked arithmetic can cause overflow, allowing attackers to increase their token balance by manipulating the `transfer` function without restriction.
 
---

## How to Use This Repository
1. **Clone the Repository**: `git clone <repository-url>`
2. **Navigate to Each Level**: Each folder contains a `README.md` with instructions for understanding the vulnerability and the solution applied.
3. **Run Tests**: The provided solutions can be tested in a Solidity environment like Remix or using a local setup with Hardhat.

## About the Author
**Volodymyr Statsenko** is an aspiring expert in blockchain security, with a deep commitment to mastering **smart contract auditing** and **secure dApp development**. This portfolio exemplifies a rigorous approach to security, highlighting a structured, analytical methodology in tackling complex vulnerabilities. My ultimate goal is to bring world-class security standards to the blockchain ecosystem, contributing to a safer, more secure decentralized future.

## License
This repository is open-sourced under the MIT License.
