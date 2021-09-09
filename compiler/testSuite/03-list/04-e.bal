function foo(any[] x) returns any {
    return x[true]; // @error
}