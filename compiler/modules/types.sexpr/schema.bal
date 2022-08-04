import wso2/nballerina.comm.sexpr;

public type Field [sexpr:Str, Type];
public type Atom ["list", Type[]] | ["list", Type[], int] | ["array", Type] | ["mapping", Type] | ["mapping", Field[], Type] | ["cell", Type, CellMutability]; 
// JBUG compile time stack overflow if ["!", Type] is added
public type Type AtomRef | ["|", Type...] | ["&", Type...] | ["!", Type...] | Int | IntSubtype | String ; 
public type AtomRef string;

// JBUG #37049 can't use ["|", Type, Type...]
public type Union ["|", Type...];
public type Intersection ["&", Type...];
public type Not ["!", Type];

public type Boolean "boolean";
public type Int "int";
public type String "string";

public type Array ["array", Type];
public type Mapping ["mapping", Type];
public type OpenMapping ["mapping", Field[], Type];
public type IntSubtype ["int", [int, int], [int, int]...];
public type NonRepeatingTuple ["list", Type[]];
public type RepeatingTuple ["list", Type[], int];
public type Cell ["cell", Type, CellMutability];
public type CellMutability "none"|"limited"|"unlimited";
