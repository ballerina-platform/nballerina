import wso2/nballerina.comm.lib;

public type WitnessableSubtype MappingAtomicType|ListSubtypeWitness|StringSubtype|DecimalSubtype|FloatSubtype|IntSubtype|BooleanSubtype;

public type ListWitnessValue readonly & record {|
    WitnessValue[] memberValues;
    int[] indices;
    int fixedLen;
|};

public type WitnessValue WrappedSingleValue|string|map<WitnessValue>|ListWitnessValue?;

final readonly & [UniformTypeBitSet, WrappedSingleValue|string][] uniformTypeSample = [
    [NEVER, "never"],
    [NIL, "()"],
    [BOOLEAN, { value: true }],
    [INT, { value: 42 }],
    [FLOAT, { value: 2.5f }],
    [DECIMAL, { value: 3.5d }],
    [STRING, { value: "non empty string" }],
    [ERROR, "error"],
    [LIST_RO, "list"],
    [LIST_RW, "list"],
    [MAPPING_RO, "map"],
    [MAPPING_RW, "map"],
    [TABLE_RO, "table"],
    [TABLE_RW, "table"],
    [FUNCTION, "function"],
    [TYPEDESC, "typedesc"],
    [HANDLE, "handle"],
    [XML, "xml"]
];

public class WitnessCollector {
    private WitnessValue witness;
    private Context cx;

    public function init(Context cx) {
        self.cx = cx;
        self.witness = ();
    }

    public function remainingSubType(WitnessableSubtype|error subtypeData) {
        if self.witness == () && subtypeData !is error {
            self.witness = subtypeToWitnessValue(self.cx, subtypeData);
        }
    }

    public function allOfTypes(UniformTypeBitSet all) {
        self.witness = uniformTypesToWitnessValue(all);
    }

    public function get() returns WitnessValue => self.witness;
}

function uniformTypesToWitnessValue(UniformTypeBitSet bitset) returns WrappedSingleValue|string? {
    foreach var [ut, sample] in uniformTypeSample {
        if (ut & bitset) != 0 {
            return sample;
        }
    }
    return ();
}

function semTypeToWitnessValue(Context cx, SemType t) returns WitnessValue {
    if t is UniformTypeBitSet {
        return uniformTypesToWitnessValue(t);
    }
    else {
        if t.all != 0 {
            return uniformTypesToWitnessValue(t.all);
        }
        foreach var [code, _] in uniformTypeSample {
            if (code & t.some) != 0 {
                UniformTypeCode? utCode = uniformTypeCode(code);
                if utCode == () {
                    continue;
                }
                SubtypeData subtypeData = getComplexSubtypeData(t, utCode);
                if subtypeData is WitnessableSubtype {
                    return subtypeToWitnessValue(cx, subtypeData);
                }
                else if subtypeData is BddNode {
                    return bddToWitness(cx, utCode, subtypeData);
                }
                else {
                    return "[Unsupported witness shape]";
                }
            }
        }
        return ();
    }
}

function subtypeToWitnessValue(Context cx, WitnessableSubtype subtype) returns WitnessValue {
    if subtype is MappingAtomicType {
        return createMappingWitness(cx, subtype);
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
    else if subtype is BooleanSubtype {
        return createBooleanWitness(subtype);
    }
    else if subtype is ListSubtypeWitness {
        return createListWitness(cx, subtype);
    }
    else {
        return createIntWitness(subtype);
    }
}

function bddToWitness(Context cx, UniformTypeCode typeCode, BddNode bdd) returns WitnessValue {
    BddMemo? m = ();
    if typeCode is UT_LIST_RO || typeCode is UT_LIST_RW {
        m = cx.listMemo[bdd];
    }
    else if typeCode is UT_MAPPING_RO || typeCode is UT_MAPPING_RW {
        m = cx.mappingMemo[bdd];
    }
    return m != () ? m.witness : ();
}

function createMappingWitness(Context cx, MappingAtomicType subtype) returns WitnessValue {
    map<WitnessValue> witness = {};
    foreach int i in 0 ..< subtype.names.length() {
        witness[subtype.names[i]] = semTypeToWitnessValue(cx, subtype.types[i]);
    }
    if !isNever(subtype.rest) {
        witness["..."] = semTypeToWitnessValue(cx, subtype.rest);
    }
    return witness;
}

function createListWitness(Context cx, ListSubtypeWitness listWitnessType) returns ListWitnessValue {
    var { memberTypes, indices, fixedLen } = listWitnessType;
    WitnessValue[] memberValues = from var m in memberTypes select semTypeToWitnessValue(cx, m);
    return { memberValues: memberValues.cloneReadOnly(), indices, fixedLen };
}

function createStringWitness(StringSubtype subtype) returns WrappedSingleValue {
    var { char, nonChar } = subtype;
    if nonChar.allowed {
        if nonChar.values.length() > 0 {
            return { value: nonChar.values[0] };
        }
    }
    else {
        return createRandomStringWitness(4, nonChar.values);
    }
    if char.allowed {
        if char.values.length() > 0 {
            return { value: char.values[0] };
        }
    }
    else {
        return createRandomStringWitness(1, char.values);
    }
    panic error("not implemented!");
}

function createRandomStringWitness(int len, string[] exclude) returns WrappedSingleValue {
    lib:Random random = new(11);
    while true {
        string value = random.randomStringValue(len);
        if exclude.indexOf(value) == () {
            return { value };
        }
    }
}

function createDecimalWitness(DecimalSubtype subtype) returns WrappedSingleValue {
    if subtype.allowed {
        return { value: subtype.values[0] };
    }
    else {
        lib:Random random = new(11);
        while true {
            do {
                decimal value = check decimal:fromString(string `${random.next()}.${random.next()}`);
                if subtype.values.indexOf(value) == () {
                    return { value };
                }
            } on fail error e {
                // ignore the error and re iterate the while loop.
                _ = e.message();
            }
        }
    }
}

function createFloatWitness(FloatSubtype subtype) returns WrappedSingleValue {
    if subtype.allowed {
        return { value: subtype.values[0] };
    }
    else {
        lib:Random random = new(11);
        while true {
            do {
                float value = check float:fromString(string `${random.next()}.${random.next()}`);
                if subtype.values.indexOf(value) == () {
                    return { value };
                }
            } on fail error e {
                // ignore the error and re iterate the while loop.
                _ = e.message();
            }
        }
    }
}

function createIntWitness(IntSubtype subtype) returns WrappedSingleValue {
    return { value: subtype[0].min };
}

function createBooleanWitness(BooleanSubtype subtype) returns WrappedSingleValue {
    return { value: subtype.value };
}

