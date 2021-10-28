
import ballerina/io;

public function main() {
    map<int> m = { zero: 0 };
    int z = m.zero; // @error
    io:println(z);
}
