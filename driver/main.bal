public type Options record {|
    boolean bal = false;
|};

public function main(string? f, *Options opts) returns error? {
    if opts.bal {
        return showTypes(f);
    }
    return testJsonTypes(f);
}
