// Names here are chosen so they work with `err:` prefix.
import wso2/nballerina.comm.diagnostic as d;

public type Diagnostic error<d:Diagnostic>;

public type Syntax error<d:SyntaxDiagnostic>;
public type Semantic error<d:SemanticDiagnostic>;
public type Unimplemented error<d:UnimplementedDiagnostic>;
public type Internal error<d:InternalDiagnostic>;

public type Panic distinct error;

// XXX the `cause` argument here is not really right: we just it for errors from numeric conversion functions
public function syntax(d:Message m, d:Location loc, string? defnName = (), error? cause = ()) returns Syntax {
    return error Syntax("syntax error", cause, message=d:messageToString(m), location=loc, defnName=defnName);
} 

public function semantic(d:Message m, d:Location loc, string? defnName = (), error? cause = ()) returns Semantic {
    return error Semantic("semantic error", cause, message=d:messageToString(m), location=loc, defnName=defnName);
}

public function unimplemented(d:Message m, d:Location loc, string? defnName = (), error? cause = ()) returns Unimplemented {
    return error Unimplemented("unimplemented error", cause, message=d:messageToString(m), location=loc, defnName=defnName);
}

public function internal(d:Message m, d:Location loc, string? defnName = (), error? cause = ()) returns Internal {
    return error Internal("internal error", cause, message=d:messageToString(m), location=loc, defnName=defnName);
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

public type SemanticContext object {
    public function semanticErr(d:Message msg, d:Position|d:Range pos, error? cause = ()) returns Semantic;
};
