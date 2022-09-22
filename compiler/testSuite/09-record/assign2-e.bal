type I record {|
    int x;
|};

type S record {|
    string x;
|};

type IS record {|
    int|string x;
|};

type IorS I|S;

public function main() {
    IS a = { x: "str" };
    IorS b = a; // @error
}
