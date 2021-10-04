import ballerina/io;

// @small_heap 712
public function main() {
    any[] x = [110, [400, [401]]];
    any[] a = [111, [112, [200, 201, [300, 301, 302]]], [113, [150, [151, [152]]]]];  
    any[] b = [110, [400, [401]]]; // Collection should happen here
    any[] c = [110, [400, [401]]]; // Collection should happen here
    any[] d = [110, [400, [401]]]; // Collection should happen here
    io:println(a); // @output [111,[112,[200,201,[300,301,302]]],[113,[150,[151,[152]]]]]
}
