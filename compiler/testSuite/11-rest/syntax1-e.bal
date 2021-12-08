type R record {|
    int x;
    string...;
    string...; // @error
|};

public function main() { }

