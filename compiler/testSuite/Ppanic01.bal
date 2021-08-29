public function main() {
    p("help");
}

function p(string s) {
    panic error(s); // @panic help
}
