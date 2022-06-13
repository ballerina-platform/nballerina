import ballerina/io;
import wso2/nballerina.comm.lib;


type WitnessableSubtype MappingAtomicType|SubtypeData;

// todo: witness generation should be moved to each file of the subtype and probably be part of the function v-table.

public class Witness {
    private final UniformTypeBitSet[] bits = [];
    private final WitnessableSubtype[] subtypes = [];

    public function remainingType(WitnessableSubtype|error subtypeData) {
        if subtypeData !is error {
            self.subtypes.push(subtypeData);
            io:println(subtypeData);
        }
    }

    public function allOfTypes(UniformTypeBitSet all) {
        self.bits.push(all);
        io:println("all of type: 0x" + all.toHexString());
    }

    public function toString() returns string {
        string[] types = [];
        foreach var bitset in self.bits {
             types.push(uniformTypesToString(bitset));
        }
        if types.length() > 0 {
            return "|".join(...types);
        }
        foreach var subtype in self.subtypes {
            types.push(subtypeToString(subtype));
        }
        return "|".join(...types);
    }
}

function subtypeToString(WitnessableSubtype subtype) returns string {
    if subtype is MappingAtomicType {
        return createMappingWitness(subtype);
    }
    else if subtype is StringSubtype {
        return createStringWitness(subtype);
    }
    else if subtype is DecimalSubtype {
        return createDecimalWitness(subtype);
    }
    else if subtype is FloatSubtype {
        return createFloatWitness(subtype);
    }
    else if subtype is IntSubtype {
        return createIntWitness(subtype);
    }
    else if subtype is BooleanSubtype {
        return createBooleanWitness(subtype);
    }
    else if subtype is XmlSubtype {
        return createXmlWitness(subtype);
    }
    else if subtype is RwTableSubtype {
        return createTableWitness(subtype);
    }
    return "";
}

function createMappingWitness(MappingAtomicType subtype) returns string {
    return "";
}

function createStringWitness(StringSubtype subtype) returns string {
    var { char, nonChar } = subtype;
    if nonChar.allowed {
        if nonChar.values.length() > 0 {
            return nonChar.values[0];
        }
    }
    else {
        return createRandomStringWitness(4, nonChar.values);
    }
    if char.allowed {
        if char.values.length() > 0 {
            return char.values[0];
        }
    }
    else {
        return createRandomStringWitness(1, char.values);
    }
    return "";
}

function createRandomStringWitness(int len, string[] exclude) returns string {
    lib:Random random = new(11);
    while true {
        string s = random.randomStringValue(len);
        if exclude.indexOf(s) == () {
            return s;
        }
    }
}

function createDecimalWitness(DecimalSubtype subtype) returns string {
    if subtype.allowed {
        return subtype.values[0].toString();
    }
    else {
        lib:Random random = new(11);
        while true {
            do {
                decimal d = check decimal:fromString(string `${random.next()}.${random.next()}`);
                if subtype.values.indexOf(d) == () {
                    return d.toString() + "d";
                }
            } on fail error e {
                // ignore the error and re iterate the while loop.
                _ = e.message();
            }
        }
    }
}

function createFloatWitness(FloatSubtype subtype) returns string {
    if subtype.allowed {
        return subtype.values[0].toString();
    }
    else {
        lib:Random random = new(11);
        while true {
            do {
                float f = check float:fromString(string `${random.next()}.${random.next()}`);
                if subtype.values.indexOf(f) == () {
                    return f.toString() + "d";
                }
            } on fail error e {
                // ignore the error and re iterate the while loop.
                _ = e.message();
            }
        }
    }
}

function createIntWitness(IntSubtype subtype) returns string {
    return subtype[0].min.toString();
}

function createBooleanWitness(BooleanSubtype subtype) returns string {
    return subtype.value.toString();
}

function createXmlWitness(XmlSubtype subtype) returns string {
    return "";
}

function createTableWitness(RwTableSubtype subtype) returns string {
    return "";
}

final readonly & [int, string][] uniformTypeNames = [
    [NEVER, "never"],
    [NIL, "nil"],
    [BOOLEAN, "boolean"],
    [INT, "int"],
    [FLOAT, "float"],
    [DECIMAL, "decimal"],
    [STRING, "string"],
    [ERROR, "error"],
    [LIST, "list"],
    [LIST_RO, "readonly & list"],
    [LIST_RW, "!readonly & list"],
    [MAPPING, "map"],
    [MAPPING_RO, "readonly & map"],
    [MAPPING_RW, "!readonly & map"],
    [TABLE, "table"],
    [TABLE_RO, "readonly & table"],
    [TABLE_RW, "!readonly & table"],
    [FUNCTION, "function"],
    [TYPEDESC, "typedesc"],
    [HANDLE, "handle"],
    [XML, "xml"]
];

function uniformTypesToString(UniformTypeBitSet bitset) returns string {
    string[] names = [];
    int skipCount = 0;
    foreach var [ut, name] in uniformTypeNames {
        if skipCount > 0 {
            skipCount -= 1;
            continue;
        }
        if (ut & bitset) != 0 {
            names.push(name);
        }
        if (ut & LIST) == LIST || (ut & MAPPING) == MAPPING || (ut & TABLE) == TABLE {
            skipCount = 2;
        }
    }
    return "|".join(...names);
}
