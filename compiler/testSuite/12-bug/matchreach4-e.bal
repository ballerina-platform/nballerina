import ballerina/io;

public function main() {
    () nil = ();
    match nil {
        () => { return; }
    }
    io:println("unreached"); // @error
}
