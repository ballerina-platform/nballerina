public function foo(int? x, int? y) {
    if x == () {
        match y {
            x => { // @error
                return;
            }
        }
    }
}
