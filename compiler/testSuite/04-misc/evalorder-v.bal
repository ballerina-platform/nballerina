// @productions list-type-descriptor list-constructor-expr bitwise-and-expr bitwise-xor-expr bitwise-or-expr exact-equality equality multiplicative-expr equality-expr relational-expr return-stmt additive-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

function one() returns int {
   io:println(1);
   return 1;
}

function two()  returns int{
   io:println(2);
   return 2;
}


public function main() {
   _ = one() * two();        // @output 1
                                   // @output 2

   _ = one() / two();        // @output 1
                                   // @output 2

   _ = one() % two();        // @output 1
                                   // @output 2

   _ = one() + two();        // @output 1
                                   // @output 2

   _ = one() - two();        // @output 1
                                   // @output 2

   _ = one() < two();     // @output 1
                                   // @output 2

   _ = one() <= two();  // @output 1
                                   // @output 2

   _ = one() > two();     // @output 1
                                   // @output 2

   _ = one() >= two();  // @output 1
                                   // @output 2

   _ = one() == two();    // @output 1
                                   // @output 2

   _ = one() != two();   // @output 1
                                   // @output 2

   _ = one() === two();  // @output 1
                                   // @output 2

   _ = one() !== two(); // @output 1
                                   // @output 2

   _ = one() & two();        // @output 1
                                   // @output 2

   _ = one() ^ two();        // @output 1
                                   // @output 2

   _ = one() | two();         // @output 1
                                   // @output 2

   _ = [one(), two()];     // @output 1
                                   // @output 2

   ignore(one(), two());           // @output 1
                                   // @output 2
}

function ignore(int a, int b) {
}
