import ballerina/io;

public function main() {
	int[] a = [1,2,3];
	int[] b = [4,5,6];
	int[] c = [1,2,4];
	int[] d = [1,2,3,-1];
	int[] e = [1,2,3,5];
	int[] f = [];

	io:println(a < b); // @output true
	io:println(a <= b); // @output true
	io:println(a > b); // @output false
	io:println(a >= b); // @output false
}