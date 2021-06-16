public function main() {
    toNil(toNil(true) < toNil(false)); // @error
}

function toNil(boolean b) {
    return;
}

