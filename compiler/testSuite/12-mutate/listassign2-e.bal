type N [int];

type S [string];

type NS [int|string];

type P [N|S];

type Q [NS];

public function main() {
    S s = ["str"];
    Q q = [s];
    P p = q; // @error
}
