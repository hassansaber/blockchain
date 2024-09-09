// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Faucet {

  // Storage variables
  // uint public funds = 1000; //unit = uint256 =10100...
  // int public counter = -10; 
  // uint32 public test = 4294967295;


  receive() external payable {} 

  function addFunds() external payable {}

  function justTesting() external pure returns(uint){
    return 2 + 2;
  }

}



// const instance = await Faucet.deployed()
// truffle migrate --reset
//  truffle console