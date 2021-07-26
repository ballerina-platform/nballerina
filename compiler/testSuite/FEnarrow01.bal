import ballerina/io;

public function main() {
    string v = "x";
    if v == "x" {
        // Spec does not say that v is a constant expression here, so this is debatable
        // It probably should say this though
        if v != "x" {            
            io:println("unreachable"); // @error
        }
        else {
            io:println("x");
        }
    }
}
