// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;

contract Message {
        string public name;
        string public greetingPrefix = "Hello ";

        constructor(string memory initialName){
            name = initialName;
        }

        function setMessage(string memory newName) public { 
            name = newName;
        }

        function getMessage() public view returns (string memory){
            return string(abi.encodePacked(greetingPrefix, name));
        }

} 