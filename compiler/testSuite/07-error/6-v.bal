import ballerina/io;

public function main() {
    int|error result = positive(-1);
    display(result); // @output error("negative")
    result = positive(4);
    display(result); // @output 8
}

function display(int|error result) {
    if result is int {
        io:println(result + result);
    }
    else {
        error e = result;
        io:println(e);
    }
}

function positive(int n) returns int|error {
    if n >= 0 {
        return n;
    }
    else {
        return error("negative");
    }
}
