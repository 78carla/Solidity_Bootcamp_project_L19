//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract Random {
    function getRandomNumber()
        public
        view
        returns (uint256 randomNumber)
    {
        //randomNumber = block.difficulty;
        randomNumber = block.prevrandao;
    }

    function tossCoin() public view returns (bool heads) {
        heads = getRandomNumber() % 2 == 0;
    }
}