
const LOWER = "abcdefghijklmnopqrstuvwxyz";
const UPPER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const string VALID_GC_NAME_CHARS = LOWER + UPPER + "-_";
public const DEBUG_NONE = 0;
public const DEBUG_BACKTRACE = 1;
public const DEBUG_FULL = 2;

public type DebugLevel DEBUG_NONE|DEBUG_BACKTRACE|DEBUG_FULL;

public type Options record {|
    string? gcName = ();
    DebugLevel debugLevel = DEBUG_BACKTRACE;
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

public function validDebugLevel(int? debugLevel) returns DebugLevel|error {
    if (debugLevel is ()) {
        return DEBUG_BACKTRACE;
    }
    else if (debugLevel < DEBUG_NONE || debugLevel > DEBUG_FULL) {
        return error("invalid debug level " + debugLevel.toString());
    } 
    else {
        return <DebugLevel>debugLevel;
    }
}
