// @case
import ballerina/io;
import ballerina/file;
import org/mode.submod2;
import org/mod as orgMod;
import org/mod.submod as orgSMod;
import mod;
import mod2 as m;
import mod3.submod2;
import mod3.submod as ms;
// @end

function ignore() returns error? {
    var i = check file:test(".", file:EXISTS);
    io:print();
}
