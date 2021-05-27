public type Options record {|
    boolean testJsonTypes = false;
|};

public function main(string? f, *Options opts) returns error? {
    if opts.testJsonTypes {
        return testJsonTypes(f);
    }
    return showTypes(f);
}
