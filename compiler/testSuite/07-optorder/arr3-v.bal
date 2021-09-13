import ballerina/io;

public function main() {
	string[] a = ["abc","abd","abcd"];
	string?[] b = ["abc",(),"abcd"];
	string?[] c = ["abc",(),"xyz"];

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
