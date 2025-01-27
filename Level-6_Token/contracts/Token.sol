// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // Using the latest stable version to avoid issues like integer overflow.

/**
 * @title SecureToken
 * @dev A simple token contract designed with security and professional standards in mind.
 */
contract SecureToken {
    // Mapping to store user balances
    mapping(address => uint256) private balances;
    // Total supply of tokens
    uint256 public totalSupply;

    // Event to log transfers
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Constructor initializes the contract with an initial supply of tokens.
     * @param _initialSupply The initial supply of tokens.
     */
    constructor(uint256 _initialSupply) {
        require(_initialSupply > 0, "Initial supply must be greater than zero");
        balances[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    /**
     * @dev Transfers tokens to another address.
     * @param _to The recipient's address.
     * @param _value The amount of tokens to transfer.
     * @return Returns true if the operation is successful.
     */
    function transfer(address _to, uint256 _value) public returns (bool) {
        require(_to != address(0), "Cannot transfer to the zero address");
        require(balances[msg.sender] >= _value, "Insufficient balance");

        // Safe transfer logic
        balances[msg.sender] -= _value;
        balances[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    /**
     * @dev Returns the balance of a specific address.
     * @param _owner The address to query.
     * @return The balance of the specified address.
     */
    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
}
