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
                                   // @output 2

   int div = one() / two();        // @output 1
                                   // @output 2

   int rmd = one() % two();        // @output 1
                                   // @output 2

   int add = one() + two();        // @output 1
                                   // @output 2

   int sub = one() - two();        // @output 1
                                   // @output 2

   boolean lt = one() < two();     // @output 1
                                   // @output 2

   boolean lteq = one() <= two();  // @output 1
                                   // @output 2

   boolean gt = one() > two();     // @output 1
                                   // @output 2

   boolean gteq = one() >= two();  // @output 1
                                   // @output 2

   boolean eq = one() == two();    // @output 1
                                   // @output 2

   boolean neq = one() != two();   // @output 1
                                   // @output 2

   boolean eeq = one() === two();  // @output 1
                                   // @output 2

   boolean neeq = one() !== two(); // @output 1
                                   // @output 2

   int and = one() & two();        // @output 1
                                   // @output 2

   int xor = one() ^ two();        // @output 1
                                   // @output 2

   int or = one() | two();         // @output 1
                                   // @output 2

   any[] arr = [one(), two()];     // @output 1
                                   // @output 2

   ignore(one(), two());           // @output 1
                                   // @output 2
}

function ignore(int a, int b) {
}
