import ballerina/io;

public function main() {
    if true == true {
        io:println(4); // @output 4
    }
    else {
        io:println(5); 
    }
    if false == false {
        io:println(6); // @output 6
    }
    else {
        io:println(7);
    }
    if true != true {
        io:println(8);  
    }
    else {
        io:println(9); // @output 9
    }
    boolean b = true;
    if b == true {
        io:println(10); // @output 10
    }
    else {
        io:println(11);
    }
    b = false;
    if true == b {
        io:println(12); 
    }
    else {
        io:println(13); // @output 13
    }
}
