import ballerina/io;
public function main() {
    decimal d1 = 9.0E32d;
    decimal d2 =  1E-2d;
    // % operator here corresponds to the speleotrove remainder operation.
    // http://speleotrove.com/decimal/daops.html#refremain
    // This operation will fail under the same conditions as integer division,
    // i.e. if integer division on the same two operands would fail, the remainder cannot be calculated.
    // Here result of the division operation has more than 34 digits in the significant. 
    // Thus the division fails and as a result remainder fails.
    io:println(d1 % d2); // @panic not a valid decimal
}
