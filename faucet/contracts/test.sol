// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Test {

  function test(uint256 testNum) external pure returns(uint data){

    assembly{
      mstore(0x40,0x90)
      let _num := 4
      let _fmp := mload(0x40)
    }

    uint8[3] memory items = [1,2,3]

    // return testNum;
    assembly{
      data := mload(add(0x90, 0x20))
    }
  }



   function test2() external pure returns(bytes32 data){

    assembly{
      let fmp := mload(0x40)
      // hello
      mstore(add(fmp, 0x00), 0x68656C6C6F)
      data := mload(add(fmp, 0x00))

    }
  }
}


// --CHEAT--

// truffle migrate --reset
// truffle console
// const instance = await Faucet.deployed()
// instance.addFunds({from: accounts[0], value:"2"})
// instance.getFunderAtIndex(0)
// instance.getAllFunders()