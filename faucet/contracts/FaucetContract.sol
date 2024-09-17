// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Faucet {
    // Storage variables
    // uint public funds = 1000; //unit = uint256 =10100...
    // int public counter = -10;
    // uint32 public test = 4294967295;

    // address[] private funders;
    uint public numFunders;
    // mapping(uint=> address) private funders;
    mapping(address=> bool) private funders;
    mapping(uint=> address) private lutFunders;




    receive() external payable {}

    function addFunds() external payable {
        // funders.push(msg.sender);
        // uint index = numFunders++;
        // funders[index]= msg.sender;
        address funder = msg.sender;

if (!funders[funder]) {
    // numFunders++;
    uint index = numFunders++;
    funders[funder] = true;
    lutFunders[index] = funder;
}       
    }

    function justTesting() external pure returns (uint) {
        return 2 + 2;
    }

    // function getAllFunders() public view returns (address[] memory) {
    //     return funders;
    // }
    function getAllFunders() public view returns (address[] memory) {
      address[] memory _funders = new address[](numFunders);
      for (uint i = 0; i < numFunders; i++) {
        _funders[i]= funders[i];
      }

      return _funders;
    }


    function getFunderAtIndex(uint8 index) external view returns(address) {
        // address[] memory _funders = getAllFunders();
        // return _funders[index];
        return lutFunders[index];



    }
}


// --CHEAT--

// truffle migrate --reset
// truffle console
// const instance = await Faucet.deployed()
// instance.addFunds({from: accounts[0], value:"2"})
// instance.getFunderAtIndex(0)
// instance.getAllFunders()