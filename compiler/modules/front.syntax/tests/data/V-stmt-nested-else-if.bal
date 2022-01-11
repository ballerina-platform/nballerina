function wrapper(boolean a, boolean b) {
    // @case
    if a {
    }
    else {
        if b {
            noOp();
        }
    }
    // @end
}

function noOp() {
}
