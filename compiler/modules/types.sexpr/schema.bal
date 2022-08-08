import wso2/nballerina.comm.sexpr;

public type Field [sexpr:Str, Type];
public type Atom ["list", Type[]] | ["list", Type[], int] | ["array", Type] | ["mapping", Type] | ["mapping", Field[], Type]; 
// JBUG compile time stack overflow if ["!", Type] is added
public type Type AtomRef | ["|", Type...] | ["&", Type...] | ["!", Type...] | Int | IntSubtype ; 
public type AtomRef string;

// JBUG #37049 can't use ["|", Type, Type...]
public type Union ["|", Type...];
public type Intersection ["&", Type...];
public type Not ["!", Type];

public type Boolean "boolean";
public type Int "int";

public type Array ["array", Type];
public type Mapping ["mapping", Type];
public type OpenMapping ["mapping", Field[], Type];
public type IntSubtype ["int", [int, int], [int, int]...];
public type NonRepeatingTuple ["list", Type[]];
public type RepeatingTuple ["list", Type[], int];
