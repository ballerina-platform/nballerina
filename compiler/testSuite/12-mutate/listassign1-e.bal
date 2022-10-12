type N [int];

type S [string];

type NS [int|string];

public function main() {
    NS ns = ["str"];
    N|S _ = ns; // @error
}
