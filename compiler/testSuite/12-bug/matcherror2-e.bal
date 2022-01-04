public function foo(error e) {
    match e {
        _ // @error
        => { return; }
    }
}