// @small_heap 120
import ballerina/io;
public function main() {
    any[] v1 = [111, 222]; 
    any[] v2 = [333, 444]; // Collection should happen here
    any[] v3 = [555];
    io:println(v2[0]); // @output 333
    io:println(v2[1]); // @output 444
    io:println(v3[0]); // @output 555
}