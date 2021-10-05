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
   int mul = one() * two();        // @output 1
   _ = mul;                        // @output 2

   int div = one() / two();        // @output 1
   _ = div;                        // @output 2

   int rmd = one() % two();        // @output 1
   _ = rmd;                        // @output 2

   int add = one() + two();        // @output 1
   _ = add;                        // @output 2

   int sub = one() - two();        // @output 1
   _ = sub;                        // @output 2

   boolean lt = one() < two();     // @output 1
   _ = lt;                         // @output 2

   boolean lteq = one() <= two();  // @output 1
   _ = lteq;                       // @output 2

   boolean gt = one() > two();     // @output 1
   _ = gt;                         // @output 2

   boolean gteq = one() >= two();  // @output 1
   _ = gteq;                       // @output 2

   boolean eq = one() == two();    // @output 1
   _ = eq;                         // @output 2

   boolean neq = one() != two();   // @output 1
   _ = neq;                        // @output 2

   boolean eeq = one() === two();  // @output 1
   _ = eeq;                        // @output 2

   boolean neeq = one() !== two(); // @output 1
   _ = neeq;                       // @output 2

   int and = one() & two();        // @output 1
   _ = and;                        // @output 2

   int xor = one() ^ two();        // @output 1
   _ = xor;                        // @output 2

   int or = one() | two();         // @output 1
   _ = or;                         // @output 2

   any[] arr = [one(), two()];     // @output 1
   _ = arr;                        // @output 2

   ignore(one(), two());           // @output 1
                                   // @output 2
}

function ignore(int a, int b) {
}
