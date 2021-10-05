public function main() {
    int[] v1 = [42];
    if v1 is string[] {
        v1[0] = "s"; // @error
    }
}
