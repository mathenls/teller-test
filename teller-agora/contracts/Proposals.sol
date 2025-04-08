//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

// We import this library to be able to use console.log
import "hardhat/console.sol";


// This is the main building block for smart contracts.
contract Proposals {
    // The fixed amount of tokens stored in an unsigned integer type variable.
    uint256 public proposalsCounter = 0;

    // An address type variable is used to store ethereum accounts.
    address public owner;

    // A mapping is a key/value map. Here we store each account balance.
    mapping(title => proposal) proposalsMap;

    Proposal[] public proposals;

    struct Proposal {
        string title;
        string description;
    }

    // The Transfer event helps off-chain aplications understand
    // what happens within your contract.
    event ProposalCreated(Proposal proposal, address creator);

    constructor() {}

    /**
     * A function to transfer tokens.
     *
     * The `external` modifier makes a function *only* callable from outside
     * the contract.
     */
    function createProposal(Proposal proposal, address creator) external {
        require(proposal.description != "", "You need to provide a description");
        require(proposal.title != "", "You need to provide a title");

        // We can print messages and values using console.log, a feature of
        // Hardhat Network:
        console.log(
            "Creating a proposal from %s with title %s and description %s",
            creator,
            proposal.title,
            proposal.description
        );

        
        proposals.push()

        // Notify off-chain applications of the proposal creation.
        emit ProposalCreated(proposal, creator);
    }

    function fetchAllProposals() external view returns (Proposal[] proposalsData) {
        return proposalsData;
    }

    function fetchProposalByTitle(string title) view returns (Proposal proposalData) {`
        return proposalMap[title];
    }
}
