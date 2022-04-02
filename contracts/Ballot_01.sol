//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// import "hardhat/console.sol";

contract Ballot {

    address private owner;

    struct Voter {
        address voter;
        bool 
        bool voted;
    }

// структура предложения
    struct Proposal {
        address proposalAddress;
        uint proposalVote;
    }

// список голосований
    mapping(address => Proposal) Proposals;
// или 

    constructor {
        owner = msg.sender;
    }

    function newProposal() {
        

    }

}
