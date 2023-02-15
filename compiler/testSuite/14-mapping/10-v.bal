import ballerina/io;
public function main() {
    match {a: 1, b: 2} {
        _ => { io:println("working");} // @output working
    }
    match {a: 1, b: 2}.b {
        2 => { io:println("working");} // @output working
    }
}
