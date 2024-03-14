pragma solidity ^0.8.3;

contract destructuringDemo
{
    function multiOutput() public pure returns (uint, bool)
    {
        return (2, true);
    }
    function namedOutput() public pure returns (uint a, bool b)
    {
        return (1, true);
    }
    function varAssigned() public pure returns (uint a, bool b)
    {
        a = 1;
        b = true;
    }
    function destructAssigned() public 
    {
        (uint a, bool b) = multiOutput();
        (, b) = multiOutput();
        emit LogValues(a, b);
    }

    event LogValues(uint a, bool _b);
}