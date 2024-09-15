// SPDX-License-Identifier: MIT
pragma solidity >=0.8.19 <0.9.0;

contract Faucet {
    // Storage variables
    // uint public funds = 1000; //unit = uint256 =10100...
    // int public counter = -10;
    // uint32 public test = 4294967295;

    address[] private funders;

    receive() external payable {}

    function addFunds() external payable {
        funders.push(msg.sender);
    }

    function justTesting() external pure returns (uint) {
        return 2 + 2;
    }

    function getAllFunders() public view returns (address[] memory) {
        return funders;
    }

    function getFunderAtIndex(uint8 index) external view returns(address) {
        address[] memory _funders = getAllFunders();
        return _funders[index];
    }
}


// --CHEAT--

// truffle migrate --reset
// truffle console
// const instance = await Faucet.deployed()
// instance.addFunds({from: accounts[0], value:"2"})
// instance.getFunderAtIndex(0)
// instance.getAllFunders()