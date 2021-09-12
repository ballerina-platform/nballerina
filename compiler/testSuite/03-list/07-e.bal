// @productions boolean return-stmt any
function foo(any[] x, boolean i) returns any {
    return x[i]; // @error
}
