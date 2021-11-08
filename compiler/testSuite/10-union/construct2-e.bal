type X record {|
    int x;
|};

type Y record {|
    int y;
|};

type XY X|Y;

public function main() {
    XY x =
        { z: 17 }; // @error
    _ = x;
}
