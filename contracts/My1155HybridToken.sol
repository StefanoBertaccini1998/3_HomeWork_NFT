// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract My1155HybridToken is ERC1155Supply, Ownable {
    uint256 public DarkKnight = 1;
    uint256 public LineWallPaper = 2;
    uint256 public HalfManWallPaper = 3;

    mapping(uint256 => string) private _uris;

    /**
     * @notice contract constructor with ipfs link to metadata
     */
    constructor()
        ERC1155(
            "ipfs://Qmb27L7Zr1853xV3rC7Z9mSQ1KTF7NJQnEDdinLNPKH71V/{id}.json"
        )
    {}

    /**
     * @dev mint a new token with id, amount and data
     * @param account recipient address
     * @param id token id
     * @param amount token amount
     * @param data token data
     */
    function mint(
        address account,
        uint256 id,
        uint256 amount,
        bytes memory data
    ) public onlyOwner {
        if (totalSupply(id) > 1 && id == 1) {
            revert("id 1 is an NFT");
        }
        _mint(account, id, amount, data);
    }

    function mintBatch(
        address account,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) public onlyOwner {
        _mintBatch(account, ids, amounts, data);
    }

    function uri(uint256 tokenId) public view override returns (string memory) {
        return (_uris[tokenId]);
    }

    function setTokenUri(
        uint256 tokenId,
        string calldata tokenUri
    ) public onlyOwner {
        require(bytes(_uris[tokenId]).length == 0, "Cannot set uri twice");
        _uris[tokenId] = tokenUri;
    }
}
