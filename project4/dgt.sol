// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenGamingToken is ERC20, Ownable {
    uint256 public redeemRate  = 100; // 100 tokens can be redeemed for 1 item

    mapping(string => uint256) private _itemPrices;

    event ItemRedeemed(address indexed player, string item);

    constructor() ERC20("Degen", "DGT") {
        // Mint initial supply to the contract deployer (owner)
        _mint(msg.sender, 0);
    }

    // Function to redeem tokens for items in the in-game store
    function redeem(string memory item, uint256 numItems) public {
        uint256 tokensToRedeem = _itemPrices[item] * numItems;
        require(tokensToRedeem > 0, "Item not available for redemption");
        require(balanceOf(msg.sender) >= tokensToRedeem, "Insufficient balance");

        // Calculate the number of items to be redeemed based on the redeem rate
        uint256 numItemsToRedeem = tokensToRedeem / redeemRate;
        require(numItemsToRedeem >= numItems, "Insufficient tokens to redeem the specified number of items");

        // Perform the redemption (burn the tokens)
        _burn(msg.sender, tokensToRedeem);

        emit ItemRedeemed(msg.sender, item);
    }

    // Function to add items and their prices to the in-game store
    function addItemToStore(string memory item, uint256 price) public onlyOwner {
        require(price > 0, "Price must be greater than zero");
        _itemPrices[item] = price;
    }

    // Function to check the price of an item in the in-game store
    function getItemPrice(string memory item) public view returns (uint256) {
        return _itemPrices[item];
    }

    // Function to mint new tokens (only the owner can do this)
    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    // Function to burn tokens 
    function burn(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");

        _burn(msg.sender, amount);
    }
}
