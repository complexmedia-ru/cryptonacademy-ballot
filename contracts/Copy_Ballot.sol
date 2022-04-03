//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

// import "hardhat/console.sol";

contract Ballot {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

// структура бюллетеня
    struct Ballot {
        bytes32 ballotName;
        address ballotAddress;
        // mappinp(address => Candidate) candidates;
        mapping(address => Candidate) candidates;
        bool ballotIsFinished;
    }

    Ballot[] public ballots;

// структура кандидата
    struct Candidate {
        address voterAddress;
        uint voteCount;
    }

    Candidate[] public candidates;

// структура избирателя
    struct Voter {
        address proposalAddress;
        uint proposalVote;
        bool voterIsVoted;
    }


   function newBallot(string memory _newBallot) external{
       require(msg.sender == owner, "is not owner");
       Ballot storage _newBallot = ballots.push();
    }


   function listAllBallots()) public view returns (uint[] memory) {
        _listAllBallots = ballots[];
    }



//    function listAllBallots(uint[] index memory _listAllBallots) public view returns (uint[] memory) {
//         _listAllBallots = ballots[];
//     }

}

    // function addCandidate
// список голосований
    // mapping(address => Proposal) Proposals;
// или 


 

