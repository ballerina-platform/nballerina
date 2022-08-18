public function main() {
    // We are deviating from the spec by allowing intersection here
    record {| int x; |} | (record {| int|string y; |} & record {| int? y; |}) r =
      { y: 1 };
    _ = r;
}
