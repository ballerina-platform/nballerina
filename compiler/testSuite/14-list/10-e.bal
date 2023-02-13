import ballerina/io;
public function main() {
    match [1, 2] {
        [1, 2] => { // @error
            io:println("unexpected"); 
        }
    }	
}
