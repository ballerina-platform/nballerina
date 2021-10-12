import root.types;
import ballerina/io;

public function main() {
    (types:I|boolean)[] arr = [88];
    io:println(arr[0]); // @output 88
}
