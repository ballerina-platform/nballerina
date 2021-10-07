import ballerina/io;

import wso2/nballerina.front;
import wso2/nballerina.err;
import wso2/nballerina.types as t;

// import wso2/nballerina.types.bdd;

public function showTypes(front:SourcePart[] sources) returns err:Any|io:Error? {
    string[] results = check subtypeRels(sources);
    foreach var line in results {
        io:println(line);
    }
    // io:println("Total BDDs ", bddGetCount());
}

function subtypeRels(front:SourcePart[] sources) returns string[]|err:Any|io:Error {
    
    var [env, m] = check front:typesFromString(sources);

    var tc = t:typeContext(env);

    var entries = from var [name, t] in m.entries() order by name select [name, t];
    [string, string][] results = [];
    foreach int i in 0 ..< entries.length() {
        foreach int j in i + 1 ..< entries.length() {
            var [name1, t1] = entries[i];
            var [name2, t2] = entries[j];
            if t:isSubtype(tc, t1, t2) {
                results.push([name1, name2]);
            }
            if t:isSubtype(tc, t2, t1) {
                results.push([name2, name1]);
            }
        }
    }
    string[] rels = 
        from var [name1, name2] in results
        let string s = name1 + "<:" + name2
        order by s
        select s;
    return rels;
}
