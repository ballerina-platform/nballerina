// @case
import ballerina/io;
import ballerina/file;
import org/mod as orgMod;
import mod;
import mod2 as m;
// @end

function ignore() returns error? {
    var i = check file:test(".", file:EXISTS);
    io:print();
}