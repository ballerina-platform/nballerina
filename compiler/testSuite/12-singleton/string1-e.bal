

function foo(string s) returns string {
    if s == "x" {
        if s + "y" != "xy" {
            return s; // @error
        }
    }
    return s;
}
