import ballerina/io;

public function main() {
    int|boolean|float x = 8;
    if x is int|boolean {
        x = 40;
        if x is int|boolean {
            return;
        }
        float _ = x;
    }
    else {
        float _ = x;
        x = 40;
    }
    float _ = x; // @error
}
