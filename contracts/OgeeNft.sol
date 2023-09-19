// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract OgeeNetNF is ERC721URIStorage{
    address public owner;
    modifier onlyOwner() {
        require(msg.sender == owner, "only owner can call");
        _;
    }
    constructor() ERC721("OgeeNet NFT", "OG"){
        owner = msg.sender;
    }
    function mint(address _to, uint256 _tokenId, string calldata _uri) external onlyOwner{
        _mint(_to, _tokenId);
        _setTokenURI(_tokenId, _uri);
    }

}