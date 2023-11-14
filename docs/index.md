# Solidity API

## My1155HybridToken

### DarkKnight

```solidity
uint256 DarkKnight
```

### LineWallPaper

```solidity
uint256 LineWallPaper
```

### HalfManWallPaper

```solidity
uint256 HalfManWallPaper
```

### constructor

```solidity
constructor() public
```

contract constructor with ipfs link to metadata

### mint

```solidity
function mint(address account, uint256 id, uint256 amount, bytes data) public
```

_mint a new token with id, amount and data_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| account | address | recipient address |
| id | uint256 | token id |
| amount | uint256 | token amount |
| data | bytes | token data |

### mintBatch

```solidity
function mintBatch(address account, uint256[] ids, uint256[] amounts, bytes data) public
```

### uri

```solidity
function uri(uint256 tokenId) public view returns (string)
```

### setTokenUri

```solidity
function setTokenUri(uint256 tokenId, string tokenUri) public
```

## MyNftToken

### unlockTime

```solidity
uint256 unlockTime
```

### factoryAddress

```solidity
address factoryAddress
```

### hardCap

```solidity
uint256 hardCap
```

### notAnOwnerOrFactory

```solidity
error notAnOwnerOrFactory()
```

### maxSupplyReached

```solidity
error maxSupplyReached()
```

### Withdrawal

```solidity
event Withdrawal(uint256 amount, uint256 when)
```

### constructor

```solidity
constructor(string collName, string collSym) public
```

### onlyFactory

```solidity
modifier onlyFactory()
```

### _baseURI

```solidity
function _baseURI() internal pure returns (string)
```

_Base URI for computing {tokenURI}. If set, the resulting URI for each
token will be the concatenation of the `baseURI` and the `tokenId`. Empty
by default, can be overridden in child contracts._

### mint

```solidity
function mint(address to) public
```

### _beforeTokenTransfer

```solidity
function _beforeTokenTransfer(address from, address to, uint256 firstTokenId, uint256 batchSize) internal
```

### _burn

```solidity
function _burn(uint256 tokenId) internal
```

### tokenURI

```solidity
function tokenURI(uint256 tokenId) public view returns (string)
```

### supportsInterface

```solidity
function supportsInterface(bytes4 interfaceId) public view returns (bool)
```

### pause

```solidity
function pause() external
```

### unpause

```solidity
function unpause() external
```

