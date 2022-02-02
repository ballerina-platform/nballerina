import ballerina/io;

public function main() {
    d(0); // @output s8s16s32u8u16u32
    d(1); // @output s8s16s32u8u16u32
    d(127); // @output s8s16s32u8u16u32
    d(128); // @output s16s32u8u16u32
    d(-1); // @output s8s16s32
    d(-127); // @output s8s16s32
    d(-128); // @output s8s16s32
    d(-129); // @output s16s32
    d(255); // @output s16s32u8u16u32
    d(0x7FFF); // @output s16s32u16u32
    d(0xFFFF); // @output s32u16u32
    d(0x10000); // @output s32u32
    d(0x7FFFFFFF); // @output s32u32
    d(0x80000000); // @output u32
    d(0xFFFFFFFF); // @output u32
    d(0x100000000); // @output int
    d(-0x8000); // @output s16s32
    d(-0x8001); // @output s32
    d(-0x80000000); // @output s32
    d(-0x80000001); // @output int
    d(null); // @output any
    d(0.0); // @output any
    d(0d); // @output any
    d(true); // @output any
}

public function d(any n) {
    string s = "";
    if n is int:Signed8 {
        s += "s8";
    }
    if n is int:Signed16 {
        s += "s16";
    }
     if n is int:Signed32 {
        s += "s32";
    }
    if n is int:Unsigned8 {
        s += "u8";
    }
    if n is int:Unsigned16 {
        s += "u16";
    }
    if n is int:Unsigned32 {
        s += "u32";
    }
    if s == "" {
        if n is int {
            s = "int";
        }
        else {
            s = "any";
        }
    }
    io:println(s);
}