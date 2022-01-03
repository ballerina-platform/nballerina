public function foo(any x) {
    match x {
        _
        | _ // @error
        => {
            return;
        }
    }
}
