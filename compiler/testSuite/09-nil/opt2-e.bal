import ballerina/io;

public function main() {
    ()? n = ();
    if n is () {
        return;
    }
    io:println("opt and nil are not the same"); // @error
}
