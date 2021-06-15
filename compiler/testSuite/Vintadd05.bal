import ballerina/io;
public function main() {
	io:println(1 + 0); // @output 1
	io:println(1 + 9223372036854775806); // @output 9223372036854775807
	io:println(-1 + 0); // @output -1
	io:println(-1 + -9223372036854775806); // @output -9223372036854775807
}

