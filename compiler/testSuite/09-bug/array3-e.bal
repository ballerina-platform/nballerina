public function main() {
    int[] v1 = [42];
    if v1 is string[] {
        // type of v1[0] is never[]
        any x = v1[0]; // @error
    }
}
