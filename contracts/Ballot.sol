// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
// pragma abicoderv2;
// import "hardhat/console.sol";

contract Ballot {

    address private owner;

    constructor() {
        owner = msg.sender;
    }

// структура бюллетеня
    struct Ballot {
        string ballotName;
        address ballotOwner;
        // mapping(address => Candidate) ballotCandidates;
        address[] ballotCandidates;
        bool ballotIsFinished;
        // address ballotAddress;
        // mappinp(address => Candidate) ballotCandidates;
    }

    Ballot[] public ballots;

// структура кандидата
    struct Candidate {
        address candidateAddress;
        uint voteCount;
    }

    Candidate[] public candidates;

// структура избирателя
    struct Voter {
        address proposalAddress;
        uint proposalVote;
        bool voterIsVoted;
    }

    modifier onlyOwner() {
      require(msg.sender == owner, "is not an owner!");
      _;
    }

   function newBallot(string memory _newBallot) external onlyOwner{
    //    msg.sender = _ballotOwner;
        Ballot storage add = ballots.push();
        add.ballotName = _newBallot;
        add.ballotOwner = msg.sender;
    }

//   function getAllPeople() public view returns (Ballot[] memory) {
//     return ballots;
//   }
// }

   function listAllBallots(uint index) public view returns(address[] memory){
    Ballot storage _temp = ballots[index];
    uint count = ballots.length;
    address[] memory _add = new address [](count);
       for (uint i = 0; i < ballots.length; i++) {
          _add[i] = _temp.ballotCandidates[i];
       }  
    return _add;   
    }
}

  // function get() external view returns(string[] memory _string, address[] memory, bool[] memory) {
    //     Ballot string _ballotName = ballots.ballotName;
    // }

//    function listAllBallots() external view returns (string[] memory){
//     uint _add;
//     Ballot storage _add = ballots.push();
//     _add.ballotName = list;
//        for (uint i = 0; i < ballots.length; i++) {
//           _add.ballotName[i] = list;
//        }
//    }






//    function listAllBallots() memory returns (string[] memory, address[] memory) {
//         Ballot storage add = ballots.push();
//         return add.ballotName[];
//     }

//    function listAllBallots() public view returns (Ballot[] memory) {
//         return Ballot;
//     }



//    function listAllBallots(uint[] index memory _listAllBallots) public view returns (uint[] memory) {
//         _listAllBallots = ballots[];
//     }

// }

    // function addCandidate
// список голосований
    // mapping(address => Proposal) Proposals;
// или 


 

// 