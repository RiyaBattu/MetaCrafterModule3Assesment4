<h1>DEGEN Token (ERC-20): Unlocking the Future of Gaming</h1>
**DEGEN Token Contract**

This Solidity smart contract introduces an ERC-20 token called DEGEN (DGN). It supports token minting, burning, transferring, and redeeming based on predefined game item requirements.

**Overview**

Token Name: DEGEN
Token Symbol: DGN
Decimals: 18
Features
Minting Tokens:

Only the contract owner has the authority to mint new tokens.
Minted tokens are credited to the recipient's balance.
Burning Tokens:

Tokens can be burned from a specified address.
The contract ensures the amount burned does not surpass the address's balance.
Transferring Tokens:

Tokens can be transferred between addresses.
The contract verifies that the sender has enough balance and that the recipient address is valid.
Redeeming Tokens for Game Items:

Tokens can be redeemed according to the requirements of specified game items.
The contract validates the token amount against game item requirements before burning them.
Usage

**To deploy the contract:**


Deploy the contract using a Solidity compiler that supports version ^0.8.18 or higher.
Functions
mint_tokens(address recipient, uint256 amount): Allows the contract owner to mint tokens and assign them to a recipient.
burn_tokens(address from, uint256 amount): Burns tokens from a specified address.
transfer_tokens(address to, uint256 amount): Transfers tokens from the sender's address to a specified address.
redeem_tokens(address recipient, uint256 amount, uint256 game_item): Redeems tokens based on game item requirements and burns them from the recipient's address.
Deployment
Deploy the contract on a compatible Ethereum network using tools like Remix, Truffle, or Hardhat.

**Security Considerations**


Ensure that only trusted parties have access to the contract owner's private key to prevent unauthorized minting.
Implement proper access control mechanisms and thoroughly test all contract interactions before deployment.
