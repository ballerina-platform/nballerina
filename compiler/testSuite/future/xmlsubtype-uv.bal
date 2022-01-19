
import ballerina/io;

type XE xml:Element;
public function main() {
    XE? x = ();
    if x == () {
        io:println("nil"); // @output nil
    }
}