public function main() {
    // @case
    function (int, int) returns int foo = function (int a, int b) returns int {
        return a + b;
    };
    // @end
}
