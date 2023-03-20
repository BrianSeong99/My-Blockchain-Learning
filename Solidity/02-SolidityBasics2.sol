// SPDX-License-Identifier: MIT
// by Brian Seong
pragma solidity ^0.8.17;

contract SolidityBasics2 {
  /* ------ array ------ */
  // Arrays are used to store and manipulate ordered collections of variables of the same type.
  uint[] public myArray; // Declares a public dynamic array of uint type
  uint[3] public myFixedSizeArray; // Declares a public fixed-size array of uint type with 3 elements

  function addToArray(uint value) external {
    myArray.push(value); // Adds the value to the end of the array
  }

  function getFromArray(uint index) external view returns (uint) {
    return myArray[index]; // Returns the value at the specified index
  }

  function getArrayLength() external view returns (uint) {
    return myArray.length; // Returns the length of the array
  }

  /* ------ mappings ------ */
  // Mappings are used to store and retrieve data using key-value pairs
  mapping (address => uint) public balances; // Declares a public mapping of uint type with address keys

  function addToMapping(address key, uint value) external {
    balances[key] = value; // Assigns the value to the specified key
  }

  function getFromMapping(address key) external view returns (uint) {
    return balances[key]; // Returns the value at the specified key
  }

  /* ------ bytes ------- */
  // Bytes are used to store binary data
  bytes public myBytes = hex"00112233445566778899aabbccddeeff"; // Declares a public byte array with a hex value

  function getByteLength() external view returns (uint) {
    return myBytes.length; // Returns the length of the byte array
  }

  /* ------ string ------- */
  // Strings are used to store and manipulate text
  string public myString = "Hello, world!"; // Declares a public string variable

  function getStringLength() external view returns (uint) {
    return bytes(myString).length; // Returns the length of the string as a byte array
  }

  /* ------ address type in details ------ */
  // The address type is used to represent Ethereum addresses
  address public myAddress = 0xc0ffee254729296a45a3885639AC7E10F9d54979; // Declares a public address variable

  function getAddressBalance() external view returns (uint) {
    return myAddress.balance; // Returns the balance of the address in wei
  }

  function sendEther() external payable {
    address payable receiver = payable(0x1234567890123456789012345678901234567890);
    receiver.transfer(msg.value); // Sends the value of the transaction to the specified address
  }

  /* ------ data location ------ */
  // Data location specifies where the data is stored and how it can be accessed
  // Memory: Variables stored in memory exist only for the duration of a function call. They are useful for temporary data that doesn't need to persist beyond the function execution. 
  // Storage: Variables stored in storage persist across function calls and are written to the blockchain. They are useful for storing data that needs to be accessed and updated repeatedly, like contract state variables.
  uint public myValue; // Declares a public uint variable

  function setValue(uint value) external {
    myValue = value; // Assigns the value to the storage variable
  }

  function getValue() external view returns (uint) {
    return myValue; // Returns the value of the storage variable
  }

  function getValueMemory(uint[] memory values) external pure returns (uint) {
    uint sum; // declare memory variable
    for (uint i = 0; i < values.length; i++) {
      sum += values[i]; // Calculates the sum of the values in the memory array
    }
    return sum;
  }

  /* ------ units ------ */
  // Ether units
  uint256 public oneWei = 1 wei;
  uint256 public oneGwei = 1 gwei;
  uint256 public oneEther = 1 ether;

  // Time units
  uint256 public oneSecond = 1 seconds;
  uint256 public oneMinute = 1 minutes;
  uint256 public oneHour = 1 hours;
  uint256 public oneDay = 1 days;
  uint256 public oneWeek = 1 weeks;
  uint256 public oneMonth = 1 months;
  uint256 public oneYear = 1 years;

  // Gas units
  uint256 public oneGas = 1 gas;
}