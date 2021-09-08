
const LOWER = "abcdefghijklmnopqrstuvwxyz";
const UPPER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const string VALID_GC_NAME_CHARS = LOWER + UPPER + "-_";
public const DEBUG_NONE = 0;
public const DEBUG_BACKTRACE = 1;
public const DEBUG_FULL = 2;

public type Options record {|
    string? gcName = ();
    int debugLevel = DEBUG_NONE;
|};

public function validGcName(string? gcName) returns string?|error {
    if gcName is () {
        return ();
    } 
    else {
        foreach var c in gcName {
            if !VALID_GC_NAME_CHARS.includes(c) { 
                return error("invalid gc name " + gcName); 
            }
        }
        return gcName;
    }
}
