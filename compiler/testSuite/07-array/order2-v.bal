import ballerina/io;

public function main() {
	float[] a = [0.1,2.0,3.3];
	float[] b = [4.7,5,6.7];
	float[] c = [0.1,2.0,4.7];
	float[] d = [0.1,2.0,3.3,-0.1];
	float[] e = [0.1,2.0,3.3,5];
	float[] f = [];

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
