import ballerina/io;

public function main() {
	int[] a = [1,2,3];
	int?[] b = [1,(),3];
	int?[] c = [1,(),4];

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
