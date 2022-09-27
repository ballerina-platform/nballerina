type I record {|
    int x;
|};

type S record {|
    string x;
|};

type IorS I|S;

public function main() {
    S a = { x: "str" };
    IorS b = a;

    if b is I {

    } else if b is S {

    } else {
        foo(); // @error
    }
}

function foo() {

}
