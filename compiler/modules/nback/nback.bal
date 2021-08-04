# The preferred output extension for the output filename.
public const OUTPUT_EXTENSION = ".ll";

public configurable string target = "";

public type Options record {|
    string? gcName = ();
|};
