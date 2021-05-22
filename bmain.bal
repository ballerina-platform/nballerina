import ballerina/io;

import semtype.b;
import semtype.core;
import semtype.bdd;

public function bmain(string? f) returns error? {
    string filename = f ?: "tests/data/test.bal";
    io:println("Testing ballerina syntax ", filename);
    string balString = check io:fileReadString(filename);
    string[] results = check subtypeRels(balString);
    io:println("Relationships: ", ",".'join(...results));
    io:println("Created ", bdd:getCount(), " BDDs in total");
}

function subtypeRels(string balString) returns string[]|error {
    core:Env env = new;
    map<core:SemType> m = check b:parse(env, balString);
    var tc = core:typeCheckContext(env);

    var entries = from var [name, t] in m.entries() order by name select [name, t];
    [string, string, "<"|"="][] results = [];
    foreach int i in 0 ..< entries.length() {
        foreach int j in i + 1 ..< entries.length() {
            var [name1, t1] = entries[i];
            var [name2, t2] = entries[j];
            boolean lte = core:isSubtype(tc, t1, t2);
            boolean gte = core:isSubtype(tc, t2, t1);
            if lte && gte {
                results.push([name1, name2, "="]);
            }
            else if lte {
                results.push([name1, name2, "<"]);
            }
            else if gte {
                results.push([name2, name1, "<"]);
            }
        }
    }
    // JBUG string cast
    string[] lines = from var [name1, name2, op] in results order by name1, name2 select name1 + <string>op + name2;
    return lines;
}