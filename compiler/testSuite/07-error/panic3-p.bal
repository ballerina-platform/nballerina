public function main() {
    p(error("help")); // @panic help
}

function p(error e) {
    panic e;
}
