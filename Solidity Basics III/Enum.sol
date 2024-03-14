// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract enumDemo
{
    enum Stat
    {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    Stat public stat;

    function get() public view returns (Stat)
    {
        return stat;
    }

    function set(Stat _stat) public 
    {
        stat = _stat;
    }

    function cancel() public
    {
        stat = Stat.Canceled;
    }

    function accept() public
    {
        stat = Stat.Accepted;
    }

    function reset() public
    {
        delete stat;
    }
}