import gdb.printing
import gdb
import math

HEAP_ALIGNMENT = 8
TAG_SHIFT = 56

POINTER_MASK = (1 << TAG_SHIFT) - 1
ALIGN_MASK = ~(HEAP_ALIGNMENT - 1)
IMMEDIATE_FLAG = (0x20) << TAG_SHIFT
TAG_MASK = 0xFF
UT_MASK = 0x1F

TAG_NIL = 0x00
TAG_BOOLEAN = 0x01
TAG_INT = 0x07
TAG_FLOAT = 0x08
TAG_STRING = 0x0A
TAG_ERROR = 0x0B
INT_MAX = (2**64) -1

STRING_LARGE_FLAG = 1

def extract_ptr(bits):
    ptr_body = bits & POINTER_MASK
    return (ptr_body & ALIGN_MASK)

def is_immediate(val):
    return int(val) & IMMEDIATE_FLAG != 0

def count_leading_zeros(bits):
    binary = bin(bits)[2:]
    return 64 - len(binary)

class TaggedPrinter:
    def __init__(self, val):
        self.val = val

    def to_string(self):
        ptr_val = int(self.val)
        ptr_body = ptr_val & POINTER_MASK
        tag = self.get_tag() & UT_MASK
        new_ptr = (ptr_body & ALIGN_MASK)
        if tag == TAG_NIL:
            return "()"
        if tag == TAG_INT:
            if is_immediate(ptr_val):
                return str(ptr_body)
            long_ty = gdb.lookup_type("long")
            new_val = gdb.Value(new_ptr).cast(long_ty.pointer()).dereference()
            return str(int(new_val))
        if tag == TAG_FLOAT:
            double_ty = gdb.lookup_type("double")
            new_val = gdb.Value(new_ptr).cast(double_ty.pointer()).dereference()
            float_val = float(new_val)
            return float_to_string(float_val)
        if tag == TAG_BOOLEAN:
            return str(bool(ptr_body))
        if tag == TAG_STRING:
            return tagged_str_to_string(self.val)
        if tag == TAG_ERROR:
            return "error(" + error_to_string(self.val) + ")"
        raise Exception("Unimplemented tag")

    def get_tag(self):
        pointer = int(self.val)
        return (pointer >> TAG_SHIFT) & TAG_MASK

def error_to_string(tagged_ptr):
    bits = int(tagged_ptr)
    err_ptr = gdb.Value(extract_ptr(bits)).cast(gdb.lookup_type("long").pointer());
    return tagged_str_to_string(err_ptr.dereference())

def tagged_str_to_string(tagged_ptr):
    str_len = string_len(tagged_ptr)
    bits = int(tagged_ptr)
    if is_immediate(bits):
        nBytes = str_len
        shift_len = ((8-nBytes)*8)
        body = ((bits << shift_len) & INT_MAX) >> shift_len
        return str(body.to_bytes(str_len, 'little').decode('utf-8'))
    elif bits & STRING_LARGE_FLAG == 0:
        return string_ptr_to_string(tagged_ptr, str_len, 4)
    else:
        return string_ptr_to_string(tagged_ptr, str_len, 16)

def string_len(tagged_ptr):
    bits = int(tagged_ptr)
    new_ptr = extract_ptr(bits)
    if is_immediate(bits):
        return immediate_string_len(bits)
    elif bits & STRING_LARGE_FLAG == 0:
        # medium string
        int_ty = gdb.lookup_type("int")
        header = gdb.Value(new_ptr).cast(int_ty.pointer()).dereference()
        return header & 0xFFFF
    else:
        long_ty = gdb.lookup_type("long")
        header = gdb.Value(new_ptr).cast(long_ty.pointer()).dereference()
        return header

def immediate_string_len(bits):
    loByte = bits & TAG_MASK;
    if loByte == 0xFF:
        return 0
    else:
        bits = ~bits
        bits &= POINTER_MASK
        length = 8 - (count_leading_zeros(bits) >> 3)
        return length

def string_ptr_to_string(tagged_ptr, length, header_size):
    bits = int(tagged_ptr)
    new_ptr = extract_ptr(bits)
    char_ty = gdb.lookup_type("unsigned char")
    ptr = gdb.Value(new_ptr).cast(char_ty.pointer()) + header_size
    value = int(ptr.dereference())
    for _ in range(1, length):
        ptr = ptr + 1
        value = (value << 8) | int(ptr.dereference())
    return str(value.to_bytes(length, 'big').decode('utf-8'))

class FloatPrinter:
    def __init__(self, val):
        self.val = val

    def to_string(self):
        float_val = float(self.val)
        return float_to_string(float_val)

def float_to_string(float_val):
    if math.isnan(float_val):
        return "NaN"
    if math.isinf(float_val):
        return "Infinity" if float_val > 0 else "-Infinity"
    return str(float_val)


def build_pretty_printer():
    pp = gdb.printing.RegexpCollectionPrettyPrinter("bal_pp")
    pp.add_printer('TaggedPtr', '^TaggedPtr$', TaggedPrinter)
    pp.add_printer('float', '^float$', FloatPrinter)
    return pp

gdb.printing.register_pretty_printer(
    gdb.current_objfile(),
    build_pretty_printer())
