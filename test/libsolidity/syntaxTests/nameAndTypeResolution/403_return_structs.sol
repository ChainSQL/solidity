pragma experimental ABIEncoderV2;
contract C {
    struct S { uint a; T[] sub; }
    struct T { uint[] x; }
    function f() returns (uint, S) {
    }
}
// ----
// Warning: (0-33): Experimental features are turned on. Do not use experimental features on live deployments.
// Warning: (112-150): No visibility specified. Defaulting to "public". 
// Warning: (112-150): Function state mutability can be restricted to pure
