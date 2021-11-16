type X record {|
    int x;
|};

type Y record {|
    int y;
|};

function foo(X & Y xy) { // @error

}

public function main() {
}
