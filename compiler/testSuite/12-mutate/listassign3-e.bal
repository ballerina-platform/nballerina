type N [int, boolean...];

type S [string, boolean...];

type NS [int|string, boolean...];

public function main() {
    NS ns = ["str", true];
    N|S _ = ns; // @error
}
