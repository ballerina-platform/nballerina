public function main() {
    string s = "x";
    ignore(s * "y"); // @error
}

function ignore(string s) { }
