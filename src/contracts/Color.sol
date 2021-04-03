pragma solidity ^0.6.0;
 
import "./ERC721.sol"; 
 
contract Color is ERC721 {
    constructor() ERC721("Color", "COLOR") public {
    }
}