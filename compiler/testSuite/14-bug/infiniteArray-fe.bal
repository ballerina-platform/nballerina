import ballerina/io;
type Arr Arr[]; // @error

public function main() {
    Arr? a = ();
    io:println(a);
}
