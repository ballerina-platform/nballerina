import ballerina/io;

public function main() {
    any|error result = err(true);
    display(result); // @output ok
    result = err(false);
    display(result); // @output bad
}

function display(any|error result) {
    if result is error {
        p("bad");
    }
    else {
        p(result);
    }
}

function p(any v) {
    io:println(v);
}

function err(boolean ok) returns any|error {
    if ok {
        return "ok";
    }
    else {
        return error("not ok");
    }
}
