import ballerina/io;
import root.mod.with.dots;


public function main() {
    dots:BI x = false;
    int i = 4;
    io:println(i is float); // @output false
    io:println(true is dots:BI); // @output true
}
