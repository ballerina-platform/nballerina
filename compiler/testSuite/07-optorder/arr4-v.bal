import ballerina/io;

public function main() {
	boolean[] a = [false,true,false];
	boolean?[] b = [false,(),false];
	boolean?[] c = [false,(),true];

	io:println(b < b); // @output false
	io:println(b <= b); // @output true
	io:println(b > b); // @output false
	io:println(b >= b); // @output true

	io:println(a < b); // @output false
	io:println(a <= b); // @output false
	io:println(a > b); // @output false
	io:println(a >= b); // @output false

	io:println(b < a); // @output false
	io:println(b <= a); // @output false
	io:println(b > a); // @output false
	io:println(b >= a); // @output false

	io:println(b < c); // @output true
	io:println(b <= c); // @output true
	io:println(b > c); // @output false
	io:println(b >= c); // @output false

	io:println(c < b); // @output false
	io:println(c <= b); // @output false
	io:println(c > b); // @output true
	io:println(c >= b); // @output true
}
