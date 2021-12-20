import ballerina/io;
public function main() {
    decimal[] arr1 = [2, 2.3, 2.3e34d];
    io:println(arr1); // @output [2,2.3,2.3E+34]

    (decimal|int)[] arr2 = [1.2];
    io:println(arr2[0] is decimal); // @output true

    decimal[][] arr3 = [[1 ,2], [3d, 3.1d], [4.33e34d]];
    io:println(arr3); // @output [[1,2],[3,3.1],[4.33E+34]]

    arr3[0].push(11e11d);
    io:println(arr3); // @output [[1,2,1.1E+12],[3,3.1],[4.33E+34]]
}
