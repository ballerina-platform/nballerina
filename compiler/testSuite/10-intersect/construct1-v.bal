type R1 record {| int? x; |};
type R2 record {| int|string x; |};

public function main() {
    // We are deviating from the spec by allowing intersection here
    R1&R2 r = { x: 1 };
    _ = r;
}
