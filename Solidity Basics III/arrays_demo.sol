// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract arrayDemo{
    uint[] public array;
    uint[] public array2 = [1,2,3];
    uint[10] public myFixedSizeArr;

    function get(uint _array) public view returns (uint)
    {
        return array[_array];
    }

    function getArr() public view returns (uint[] memory)
    {
        return array;
    }

    function push(uint _array) public
    {
        array.push(_array);
    }

    function pop() public
    {
        array.pop();
    }

    function remove(uint index) public
    {
        delete array[index];
    }

    function getLength() public view returns (uint)
    {
        return myFixedSizeArr.length;
    }
}