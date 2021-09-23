public function main() {
    checkpanic newError();
}

function newError() returns error {
    return error("failed successfully"); // @panic failed successfully
}
