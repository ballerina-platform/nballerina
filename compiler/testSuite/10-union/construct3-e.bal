type X1 record {|
    int x;
|};

type X2 record {|
    int? x;
|};

public function main() {
    X1|X2 x =
        { x: 1 }; // @error
    _ = x;
}
