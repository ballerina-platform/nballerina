function wrapper(int a, int b) {
    // @case
    foreach int i in a ..< b {
        foo(i);
    }
    // @end
}


function foo(int a) {
}
