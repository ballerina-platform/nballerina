import ballerina/io;

type XYZ record {|
    int y;
    int x;
    int z;
|};

type ZY record {|
    int x;
    int y;
|};

public function main() {
    ZY|XYZ xyz= { x: 1, z: 3, y: 2 };
    if xyz is XYZ {
        io:println(xyz.z); // @output 3
    }
}
