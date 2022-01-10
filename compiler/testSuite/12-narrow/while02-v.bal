import ballerina/io;

public function main() {
   int|boolean count = 3;
   while count is int {
      int i = count;
      io:println(i); // @output 3
                     // @output 2
                     // @output 1
      if count > 1 {
         count = count - 1;
      }
      else {
         count = false;
      }
   }
   if count is int {
      // Should be removed if #ballerina-spec/1019 is implemented.
      io:println("unreached");
   }
}
