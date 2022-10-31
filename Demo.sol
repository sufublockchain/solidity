// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Demo {

    function deposit() public payable {
        
    }

    receive() external payable {
        
    }

    fallback() external payable {
        
    }

    function getBalance() public view returns (uint){
        return address(this).balance;
    }

}

contract Pay {

    Demo demo;

    constructor(Demo _demo) {
        demo = Demo(_demo);
    }

    function pay() public payable {
        address payable addr = payable(address(demo));
        selfdestruct(addr);
    }
}
