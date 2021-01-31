// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

contract MoneyBox {
  address public owner = msg.sender;
  uint public totalMoneyInBox = 0;

  modifier restricted() {
    require(
      msg.sender == owner,
      'This function is restricted to the contract\'s owner'
    );
    _;
  }

  function setCompleted(uint money, string memory _operation) public restricted returns (bool) {
    if (compareStrings(_operation, string('+'))) {
      totalMoneyInBox += money;
      return true;
    }
    else if (compareStrings(_operation, string('-'))) {
      totalMoneyInBox -= money;
      return true;
    } else {
      return false;
    }
  }

  function viewOwnerAddress() public view returns (address) {
    return owner;
  }

  function viewTotalCash() public view returns (uint) {
    return totalMoneyInBox;
  }
  function compareStrings(string memory a, string memory b) private view returns (bool) {
    return (keccak256(abi.encodePacked((a))) == keccak256(abi.encodePacked((b))));
  }
}
