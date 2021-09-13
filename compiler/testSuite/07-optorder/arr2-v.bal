import ballerina/io;

public function main() {
	float[] a = [0.1,2,3.5];
	float?[] b = [0.1,(),3.5];
	float?[] c = [0.1,(),4.7];

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
