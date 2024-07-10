// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract CryptoCollect {

    uint256 public totalSupply;
    address public owner;
    string public name = "CryptoCollect";
    string public symbol = "CC";
    uint8 public tokenDecimals = 18;

    constructor() {
        owner = msg.sender;
    }

    mapping(address => uint256) public balances;

    // Mint function
    function mint(address recipient, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can mint tokens.");
        require(amount > 0, "Amount must be greater than 0.");

        balances[recipient] += amount;
        totalSupply += amount;
    }

    // Burn function
    function burn(address from, uint256 amount) public {
        require(amount <= balances[from], "Amount exceeds balance.");

        balances[from] -= amount;
        totalSupply -= amount;
    }

    // Transfer function
    function transfer(address to, uint256 amount) public {
        require(amount <= balances[msg.sender], "Amount exceeds balance.");
        require(to != address(0), "Cannot transfer to the zero address.");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    // Redeem function
    function redeem(address recipient, uint256 amount, uint256 item) public { 
        require(amount <= balances[recipient], "Amount exceeds balance");

        if (item == 1) {
            require(amount >= 50, "Insufficient tokens for Item 1");
            burn(recipient, amount);
        } else if (item == 2) {
            require(amount >= 100, "Insufficient tokens for Item 2");
            burn(recipient, amount);
        } else if (item == 3) {
            require(amount >= 200, "Insufficient tokens for Item 3");
            burn(recipient, amount);
        } else {
            revert("Invalid item");
        }
    } 
}
