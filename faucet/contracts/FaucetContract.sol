// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Faucet {
    // Storage variables
    // uint public funds = 1000; //unit = uint256 =10100...
    // int public counter = -10;
    // uint32 public test = 4294967295;

    address[] public funders;

    receive() external payable {}

    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function justTesting() external pure returns (uint) {
        return 2 + 2;
    }

    function getAllFunders() external view returns (address[] memory) {
        return funders;
    }

    function getFunderAtIndex(uint8 index) external view returns (address) {
        address[] memory _funders = getAllFunders();
    }
}

// const instance = await Faucet.deployed()
// truffle migrate --reset
//  truffle console
