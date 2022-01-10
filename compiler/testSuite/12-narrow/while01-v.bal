import ballerina/io;

type IntList record {
   int i;
   IntList? next;
};

public function main() {
    IntList l = { i: 42, next: { i: 40, next: () } };
    io:println(sum(l)); // @output 82
}

function sum(IntList? intList) returns int {
   IntList? temp = intList;
   int total = 0;
   while temp != () {
      total += temp.i;
      temp = temp.next;
  }
  return total;
}
