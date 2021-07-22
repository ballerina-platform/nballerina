function wrapper(boolean a, boolean b) {
    // @case
    if a {
        noOp(1);
    }
    else if b {
        noOp(2);
    }
    else {
        noOp(3);
    }
    // @end
}

function noOp(int i) {
}
