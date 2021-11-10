type X record {|
    int x;
|};

type Y record {|
    int y;
|};

type Z X & Y; // @error

public function main() {
}
