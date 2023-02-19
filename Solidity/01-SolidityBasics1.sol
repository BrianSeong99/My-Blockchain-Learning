// You want to include solidity version at the beginning, recently we mostly use anything above 0.8v.
// SPDX-License-Identifier: MIT 
// by Brian Seong
// It is recommended in the official docs of solidity that every file should start with this line below.
pragma solidity ^0.8.17;

contract SolidityBasics1 { // kind of like OOP languages, this is where you would declare your contract name, you could try to understand the keyword `contract` as `class` in C++, python, Java etc. 

  /* ------ basic types ------ */
  // If you want to learn in details, def should check out here: 
  // https://docs.soliditylang.org/en/v0.8.17/types.html 
  int private countInt = 0; // A private integer variable that can only be accessed in this contract.
  uint public countUint = 0; // A public unsigned int variable that can be accessed by anyone.
  bool internal isInt = true; // A boolean variable that can be accessed via inherited contracts and current contract.
  string public myString = "My Name Is Brian Seong."; // good news, string is supported in Solidity!

  /* ------ calculations ------ */
  int bitOperation = ~int256(0); // bitOperation will be int256(-1);
  int leftshifts = 2 << 1; // leftshifts will be 4;
  int rightshifts = 128 >> 2; // rightshifts will be 32;
  int addition = 4 + 5; // addition will be 9
  int subtraction = 2 - 10; // subtraction will be -8
  int multiplication = 2 * 10; // multiplication will be 20
  int division = 4 / 2; // division result is 2, make sure don't divide via zero.
  int division2 = int(5) / int(2); // the calculation is 2.5, but because division result is in int type, we have to specify all numbers involved in calculation to int so that there's no explicit type conversion error.
  int module = 5 % 2; // the module is 1, make sure don't module via zero.
  int exponential = 2**3; // the result is 8;

  /* ------ address ------*/
  // address is a very special type in smart contract, its used to trace contracts, accounts, etc.
  address public owner = 0xc0ffee254729296a45a3885639AC7E10F9d54979; 
  // more about address will be explored in the next SolidityBasics2

  /* ------ struct types ------ */
  struct Web3Guru {
    string name;
    uint age;
  }

  /* ------ enum types ------ */
  // learn about enums in detail:
  // https://www.codiesalert.com/enums-in-solidity/?v=7516fd43adaa
  enum CurrentState { TODO, DOING, DONE }
  CurrentState state;

  /* ------ function modifiers ------ */
  // Modifier might be fairly confusing so its best to do a quick run through, read this: 
  // https://medium.com/coinmonks/solidity-tutorial-all-about-modifiers-a86cf81c14cb
  modifier isAdmin() {
    require(owner == msg.sender); // check the condition before executing the function
    _; // execute remaining code in the fuctions
  }

  /* ------ functions ------ */
  // format: function (<parameter types>) {internal|external} [pure|view|payable] [returns (<return types>)]
  // {internal|external}: 
  function add(int num) external isAdmin{
    if (num <= 0) {
      revert NotGreaterThanZero(num);
    }
    countInt = countInt + num;
    emit AddNum(num); // `emit` means logging in blockchain logging of this event, can be found in blockchain node loggings.
  }
  function check() external view returns (int, uint){
    return (countInt, countUint);
  }

  /* ------ events ------ */
  // For more info about logging in Solidity check here:
  // https://hackernoon.com/how-to-use-events-in-solidity-pe1735t5
  event AddNum(int num); // declaring an event type for logging when certain functions are triggered.

  /* ------ errors ------ */
  // using error for revert message will safe gas.
  // https://blog.soliditylang.org/2021/04/21/custom-errors/
  error NotGreaterThanZero(int num); // declaring an error type for reverting messages
}
