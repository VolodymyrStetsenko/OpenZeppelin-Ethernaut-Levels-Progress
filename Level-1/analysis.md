# Vulnerability Report for Level 1

## Vulnerabilities Discovered
- **Information Disclosure**:
  - Multiple public functions (`info()`, `info1()`, etc.) reveal clues that make it easier for attackers to retrieve sensitive information.

## Recommendations
- **Limit Public Access**:
  - Sensitive information should not be accessible through public functions.

## Lessons Learned
- Understanding the basics of smart contract security includes knowing how attackers exploit public functions for unintended data access.
