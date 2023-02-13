import ballerina/io;
public function main() {
    match [1, 2] {
        _ => { io:println("working");} // @output working
    }
    match [1,2][1] {
        2 => { io:println("working");} // @output working
    }
}
