import ballerina/io;

public function main() {
	int[] a = [1,2,3];
	int[] b = [4,5,6];
	int[] c = [1,2,4];
	int[] d = [1,2,3,-1];
	int[] e = [1,2,3,5];
	int[] f = [];

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

	io:println(a < e); // @output true
	io:println(a <= e); // @output true
	io:println(a > e); // @output false
	io:println(a >= e); // @output false

	io:println(e < a); // @output false
	io:println(e <= a); // @output false
	io:println(e > a); // @output true
	io:println(e >= a); // @output true

	io:println(a < f); // @output false
	io:println(a <= f); // @output false
	io:println(a > f); // @output true
	io:println(a >= f); // @output true

	io:println(f < a); // @output true
	io:println(f <= a); // @output true
	io:println(f > a); // @output false
	io:println(f >= a); // @output false
}
