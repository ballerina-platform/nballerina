// @productions return-stmt any
function foo(any x) returns any[] {
    return x; // @error
}
