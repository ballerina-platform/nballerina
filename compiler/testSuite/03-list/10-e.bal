// @productions return-stmt any
function foo(any x, int i) returns any {
    return x[i]; // @error
}
