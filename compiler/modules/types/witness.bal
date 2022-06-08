import ballerina/io;

type WitnessableSubtype MappingAtomicType|SubtypeData;

public class Witness {

    UniformTypeBitSet[] allBits = [];
    WitnessableSubtype[] allSubtypes = [];
    boolean enable = false;

    public function startRecording() {
        self.enable = true;
    }

    public function remainingType(WitnessableSubtype|error subtypeData) {
        if self.enable {

            io:println(subtypeData);
        }
    }

    public function allOfTypes(UniformTypeBitSet all) {
        if self.enable {
            
            io:println("all of type: 0x" + all.toHexString());
        }
    }

    public function toString() returns string {

        self.enable = false;
        self.allBits.removeAll();
        self.allSubtypes.removeAll();
        return "";
    }
}