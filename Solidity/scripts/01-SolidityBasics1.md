Welcome to this video on Solidity Basics! My name is Brian Seong, and I'll be your host for this tutorial.

In this video, we'll cover some of the fundamental concepts in Solidity, a programming language that developers use to create smart contracts on the Ethereum blockchain.

This will be a quick run through of Solidity Basics, assuming you already know a little bit of programming, if you find it too difficult to understand the video, I would suggest you to do a quick read on some of the links I have attached on every topics in the solidity tutorial file.

Before we begin, it's important to note that we're using version 0.8.17 of Solidity. The official Solidity documentation recommends that every Solidity file start with the line: // SPDX-License-Identifier: MIT.

To start, let's discuss how a smart contract is defined in Solidity. Similar to other programming languages like C++, Python, and Java, we use the keyword contract. For example, in this tutorial, our contract is called SolidityBasics1.

Now, let's move on to the basic types of Solidity, including signed integers (int), unsigned integers (uint), boolean values (bool), and string values (string). In our contract, we declare a private int variable called countInt and a public uint variable called countUint. We also declare a boolean variable called isInt, which is marked as internal, allowing it to be accessed through inherited contracts and the current contract. Lastly, we declare a public string variable called myString.

Moving on to calculations, we'll demonstrate basic operations in Solidity, such as bit operations, left and right shifts, addition, subtraction, multiplication, division, modulus, and exponentiation. For example, we define a variable called bitOperation, which is assigned the value of int256(-1) using the ~('tilde') operator. We also define other variables like leftshifts, rightshifts, addition, subtraction, multiplication, division, division2, and exponential.

Next, we'll discuss the address type, a unique type in Solidity used to track contracts, accounts, etc. In our contract, we declare a public address variable called owner, which is assigned a hexadecimal address.

We'll also cover struct and enum types. We define a struct called Web3Guru, which contains a name and an age field. We also define an enum called CurrentState, which has three states: TODO, DOING, and DONE.

Moving on, we'll discuss function modifiers, which modify the behavior of functions. We define a modifier called isAdmin(), which requires that the caller of the function is the owner of the contract.

We'll demonstrate how to define functions in Solidity, including specifying parameter types, visibility modifiers, pure/view/payable modifiers, and return types. We define two functions called add() and check(), which add a number to countInt and return the values of countInt and countUint, respectively. We also include an event called AddNum, which logs the added number to the blockchain logging.

Lastly, we'll discuss errors in Solidity and how to use them for revert messages, which save gas. We define an error type called NotGreaterThanZero, which is used to revert messages.

That concludes our video on Solidity Basics! Thank you for watching, and we hope you find this tutorial helpful.