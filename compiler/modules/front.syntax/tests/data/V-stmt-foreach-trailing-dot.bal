function wrapper(boolean b) {
    // @case
    foreach int i in 0..<1 {
        foo(i);
    }
    // @end
}


function foo(int a) {
}
