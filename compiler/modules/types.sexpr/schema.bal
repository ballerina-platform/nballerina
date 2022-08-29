import wso2/nballerina.comm.sexpr;

public type Field [sexpr:String, Type];
public type Atom ["list", Type[]] | ["list", Type[], int] | ["array", Type] | ["mapping", Type] | ["mapping", Field[], Type]; 
// JBUG can't inline. eg `type Type Union | Intersection | ...`
// JBUG compile time stack overflow if ["!", Type] is added
public type Type AtomRef | ["|", Type...] | ["&", Type...] | ["!", Type...] | Int | IntSubtype | ()[0]; 
public type AtomRef string;

// JBUG #37049 can't use ["|", Type, Type...]
public type Union ["|", Type...];
public type Intersection ["&", Type...];
public type Not ["!", Type];

public type Nil ()[0];
public final Nil NIL = [];
public type Boolean "boolean";
public type Error "error";
public type Int "int";

public type Readonly "readonly";

public type Array ["array", Type];
public type List "list";
public type Mapping ["mapping", Type];
public type OpenMapping ["mapping", Field[], Type];
public type IntSubtype ["int", [int, int], [int, int]...];
public type NonRepeatingTuple ["list", Type[]];
public type RepeatingTuple ["list", Type[], int];
