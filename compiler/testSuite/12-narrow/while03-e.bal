import ballerina/io;

public function main() {
   int|boolean count = 10;
   while count is int {
      int _ = count;
      count = count - 1;
      int _ = count; // @error
   }
}
