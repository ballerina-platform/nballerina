// @case
import ballerina/io;
import ballerina/file;
// @end

function ignore() returns error? {
    var i = check file:test(".", file:EXISTS);
    io:print();
}
