pragma solidity ^0.6.0;

contract Ownable {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    // only the owner of the smart contract to be able to call the
    // getSecret() function, so we need this modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) public {
        secret = _secret;
        // we need to inherit the owner from the Ownable contract above
        // we've already said that this contract "is Ownable" above...
        // ... but here we need to specify where we're bringing that in
        // right here:
        super; // the owner logic (from the "Ownable" contract above) is inherited here
    }

    function getSecret() public view returns(string memory) {
        return secret;
    }
}

// this "is Ownable" because it inherits the "Ownable" contract above
contract MyContract4 is Ownable {
    address secretVault;

    constructor(string memory _secret) public {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }

    function getSecret() public view returns(string memory) {
        SecretVault _secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }

}
