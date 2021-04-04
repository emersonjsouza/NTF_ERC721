pragma solidity ^0.6.0;

import "./ERC721.sol";

contract Color is ERC721 {
    string[] public colors;
    mapping(string => bool) _colorExists;

    constructor() public ERC721("Color", "COLOR") {}

    function mint(string memory _color) public {
      require(!_colorExists[_color]); //check if exist color
      colors.push(_color);
      uint _id = colors.length;
      _mint(msg.sender, _id); 
      _colorExists[_color] = true;
    }
}
