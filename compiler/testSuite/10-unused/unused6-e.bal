// @productions local-var-decl-stmt if-else-stmt string-literal
public function main() {
   int|string x = "str";
   if x is int {
      int i = x; // @error
   }
}
