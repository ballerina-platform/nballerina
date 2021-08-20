import ballerina/io;

// @small_heap 248
public function main() {
    any[] x = [110];
    any[] a = [111, 112, 113];
    any[] b = [114]; // Collection should happen here 
    any[] c = [115]; // Collection should happen here 
    any[] d = [116]; // Collection should happen here 
    io:println(a); // @output [111,112,113]
}
