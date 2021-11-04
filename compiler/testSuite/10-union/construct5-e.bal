public function main() {
    record {| int x; |} | (record {| int|string y; |} & record {| int? y; |}) r =
      { y: 1 }; // @error
    _ = r;
}
