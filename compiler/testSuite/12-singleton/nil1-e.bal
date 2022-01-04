function foo() {}

function bar() {
    if foo() == () {

    }
    else {
        // This is unreachable
        return; // @error
    }
}