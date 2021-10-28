import ballerina/io;

public function main() {
	boolean[] a = [false,true];
	boolean[] b = [true,false];
	boolean[] c = [false,true,true];
	boolean[] d = [false,true,false];
	boolean[] e = [];

	io:println(a < a); // @output false
	io:println(a <= a); // @output true
	io:println(a > a); // @output false
	io:println(a >= a); // @output true

	io:println(a < b); // @output true
	io:println(a <= b); // @output true
	io:println(a > b); // @output false
	io:println(a >= b); // @output false

	io:println(b < a); // @output false
	io:println(b <= a); // @output false
	io:println(b > a); // @output true
	io:println(b >= a); // @output true

	io:println(a < c); // @output true
	io:println(a <= c); // @output true
	io:println(a > c); // @output false
	io:println(a >= c); // @output false

	io:println(c < a); // @output false
	io:println(c <= a); // @output false
	io:println(c > a); // @output true
	io:println(c >= a); // @output true

	io:println(a < d); // @output true
	io:println(a <= d); // @output true
	io:println(a > d); // @output false
	io:println(a >= d); // @output false

	io:println(d < a); // @output false
	io:println(d <= a); // @output false
	io:println(d > a); // @output true
	io:println(d >= a); // @output true

	io:println(a < e); // @output false
	io:println(a <= e); // @output false
	io:println(a > e); // @output true
	io:println(a >= e); // @output true

	io:println(e < a); // @output true
	io:println(e <= a); // @output true
	io:println(e > a); // @output false
	io:println(e >= a); // @output false
}
