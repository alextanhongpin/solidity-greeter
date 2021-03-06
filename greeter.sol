pragma solidity ^0.4.10;

contract mortal {
	/* Define variable owner of the type address */
	address owner;

	/* This function is executed at initialization and sets the owner of the contract */
	function mortal () { owner = msg.sender; }

	/* Function to recover the funds of the contract */
	function kill () { if (msg.sender == owner) selfdestruct(owner); }
}

/* greeter inherits the characteristics of mortal */
contract greeter is mortal {
	/* Define variable greeting of type string */
	string greeting;

	/* This runs when the contract is executed */
	function greeter(string _greeting) public {
		greeting = _greeting;
	}
	/* main function */
	function greet () constant returns (string) {
		return greeting;
	}
}