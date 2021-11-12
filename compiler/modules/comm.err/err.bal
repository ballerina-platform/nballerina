// Names here are chosen so they work with `err:` prefix.
import wso2/nballerina.comm.diagnostic as d;

public type Detail record {
    d:Location? location;
    string? functionName;
};

public type Any Syntax|Semantic|Unimplemented;

// Grammatical inconsistency here is reluctantly intentional
public type Syntax distinct error<Detail>;
public type Semantic distinct error<Detail>;
public type Unimplemented distinct error<Detail>;

public type Panic distinct error;

public function syntax(d:Message m, d:Location loc, string? functionName = (), error? cause = ()) returns Syntax {
    return error Syntax(d:messageToString(m), cause, location=loc, functionName=functionName);
}

public function semantic(d:Message m, d:Location loc, string? functionName = (), error? cause = ()) returns Semantic {
    return error Semantic(d:messageToString(m), cause, location=loc, functionName=functionName);
}

public function unimplemented(d:Message m, d:Location loc, string? functionName = (), error? cause = ()) returns Unimplemented {
    return error Unimplemented(d:messageToString(m), cause, location=loc, functionName=functionName);
}

// This is intended to be used with `panic`.
// When unreachability is implemented we can have this call `panic` and return `never`
public function impossible(d:Message? detail = ()) returns Panic {
    string msg = "something impossible happened";
    if detail is d:Message {
        msg += " (" + d:messageToString(detail) + ")";
    }
    return error Panic(msg);
}

public function illegalArgument(d:Message detail) returns Panic {
    return error Panic(d:messageToString(detail));
}
