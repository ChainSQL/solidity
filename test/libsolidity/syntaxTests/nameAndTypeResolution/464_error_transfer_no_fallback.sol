// This used to be a test for a.transfer to generate a warning
// because A does not have a payable fallback function.

contract A {}

contract B {
    A a;

    function() public {
        a.transfer(100);
    }
}
// ----
// Warning: (190-200): Using contract member "transfer" inherited from the address type is deprecated. Convert the contract to "address" type to access the member, for example use "address(contract).transfer" instead.
// TypeError: (190-200): Value transfer to a contract without a payable fallback function.
