// @productions boolean-literal return-stmt any
function foo(any[] x) returns any {
    return x[true]; // @error
}