import ballerina/io;

function doesADragonExplodeInTheWoods() returns true {
    io:println("boom"); // @output boom
    return true;
}

public function main() {
    int x = 1;
    if x == 42 || doesADragonExplodeInTheWoods() {
        io:println("unconditional"); // @output unconditional
    }
}
