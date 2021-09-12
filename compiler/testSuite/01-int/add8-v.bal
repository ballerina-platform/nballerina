// @productions return-stmt unary-expr additive-expr function-call-expr int-literal
import ballerina/io;
public function main() {
	io:println(1 + 0); // @output 1
	io:println(1 + 9223372036854775806); // @output 9223372036854775807
	io:println(-1 + 0); // @output -1
	io:println(-1 + -9223372036854775806); // @output -9223372036854775807

	io:println(add(1, 0)); // @output 1
	io:println(add(1, 9223372036854775806)); // @output 9223372036854775807
	io:println(add(-1, 0)); // @output -1
	io:println(add(-1, -9223372036854775806)); // @output -9223372036854775807
}

function add(int i, int j) returns int {
	return i + j;
}
