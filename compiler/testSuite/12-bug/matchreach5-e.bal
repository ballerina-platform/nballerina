import ballerina/io;

public function main() {
    boolean? b = ();
    match b {
        true|false => { return; }
        () => { return; }
    }
    io:println("unreached"); // @error
}
