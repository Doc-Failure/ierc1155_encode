// SPDX-License-Identifier: MIT
pragma solidity ^0.6.6;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract NFT_GAME_RESOURCES is ERC1155 {
    string public name = "NFT Game Collection";
    uint256 public randomResult;

    uint256 public constant PUG = 0;
    uint256 public constant SHIBA = 1;
    uint256 public constant ST_BERNARD = 2;
    uint256 public constant GOLD_INGOT = 3;

    mapping(bytes32 => uint256) requestToItem;
    mapping(bytes32 => address) requestToSender;
    mapping(bytes32 => uint256) requestToTokenId;

    constructor()
        public
        ERC1155(
            "https://bafybeibjvhh5vf5cph2uxekaoeu6yzjqzddpzb3cabpmbhsxssei3ybm7a.ipfs.nftstorage.link/token_{id}.json"
        )
    {
        _mint(address(this), PUG, 1, "");
        _mint(address(this), SHIBA, 1, "");
        _mint(address(this), ST_BERNARD, 1, "");
        _mint(address(this), GOLD_INGOT, 21000000, "");
    }
}
