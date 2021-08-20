import ballerina/io;

// @small_heap 200
public function main() {
    any[] a = [111, 112];
    any[] b = [114, [115, 116], [117, 118, 119]]; // Collection should happen here
    io:println(b); // @output [114,[115,116],[117,118,119]]
}
