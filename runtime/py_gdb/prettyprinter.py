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
TAG_LIST_RW = 0x12
TAG_MAPPING_RW = 0x13

INT_MAX = (2**64) -1

STRING_LARGE_FLAG = 1

i32 = gdb.lookup_type("long")
i64 = gdb.lookup_type("long long")
f64 = gdb.lookup_type("double")
u8 = gdb.lookup_type("unsigned char")

# use either camel case or snake case

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
        return self.tagged_ptr_to_string(self.val)

    def tagged_ptr_to_string(self, tagged_ptr):
        ptr_val = int(tagged_ptr)
        ptr_body = ptr_val & POINTER_MASK
        tag = self.get_tag(tagged_ptr) & UT_MASK
        new_ptr = (ptr_body & ALIGN_MASK)
        if tag == TAG_NIL:
            return "()"
        if tag == TAG_INT:
            if is_immediate(ptr_val):
                return str(ptr_body)
            new_val = gdb.Value(new_ptr).cast(i64.pointer()).dereference()
            return str(int(new_val))
        if tag == TAG_FLOAT:
            new_val = gdb.Value(new_ptr).cast(f64.pointer()).dereference()
            float_val = float(new_val)
            return float_to_string(float_val)
        if tag == TAG_BOOLEAN:
            return str(bool(ptr_body)).lower()
        if tag == TAG_STRING:
            return self.tagged_str_to_string(tagged_ptr)
        if tag == TAG_ERROR:
            return self.error_to_string(tagged_ptr)
        if tag == TAG_LIST_RW:
            return self.list_to_string(tagged_ptr)
        if tag == TAG_MAPPING_RW:
            return self.map_to_string(tagged_ptr)
        raise Exception("Unimplemented tag")

    def map_to_string(self, tagged_ptr):
        data = map_data(tagged_ptr)
        body = ["{"];
        for i in range(data["length"]):
            if i > 0:
                body.append(", ")
            key, val = self.get_map_element(data, i)
            body.append(f"{key}: {val}")
        body.append("}");
        return "".join(body)

    # pr-todo: see if we can turn this in to seperate elements
    def list_to_string(self, tagged_ptr):
        body = ["["]
        data = list_data(tagged_ptr)
        for i in range(data["length"]):
            if i > 0:
                body.append(", ")
            body.append(str(self.get_list_element(data, i)))
        body.append("]")
        return "".join(body)

    def error_to_string(self, tagged_ptr):
        bits = int(tagged_ptr)
        err_ptr = gdb.Value(extract_ptr(bits)).cast(i64.pointer());
        return "error(" + self.tagged_str_to_string(err_ptr.dereference()) + ")"

    def tagged_str_to_string(self, tagged_ptr):
        str_len = string_len(tagged_ptr)
        bits = int(tagged_ptr)
        if is_immediate(bits):
            nBytes = str_len
            shift_len = ((8-nBytes)*8)
            body = ((bits << shift_len) & INT_MAX) >> shift_len
            return '"' + str(body.to_bytes(str_len, 'little').decode('utf-8')) + '"'
        elif bits & STRING_LARGE_FLAG == 0:
            return '"' + string_ptr_to_string(tagged_ptr, str_len, 4) + '"'
        else:
            return '"' + string_ptr_to_string(tagged_ptr, str_len, 16) + '"'

    def get_map_element(self, map_data, index):
        member_ptr = map_data["member_ptr"]
        ptr = member_ptr + (index * 16)
        key_ptr = int(gdb.Value(ptr).cast(i64.pointer()).dereference())
        key = self.tagged_ptr_to_string(key_ptr).strip('"')
        val_ptr = int(gdb.Value(ptr + 8).cast(i64.pointer()).dereference())
        val = self.tagged_ptr_to_string(val_ptr)
        return [key, val]

    def get_list_element(self, list_data, index):
        restType = list_data["restType"]
        array_ptr = list_data["array_ptr"]
        ptr = array_ptr + (index * 8)
        # derive this
        if restType == 257:
            # int[]
            return int(gdb.Value(ptr).cast(i64.pointer()).dereference())
        if restType == 513:
            # float[]
            return float(gdb.Value(ptr).cast(f64.pointer()).dereference())
        if restType == 4338136:
            # byte[]
            ptr = array_ptr + index
            return int(gdb.Value(ptr).cast(u8.pointer()).dereference())
        else:
            # any[]
            tagged_ptr = int(gdb.Value(ptr).cast(i64.pointer()).dereference())
            return self.tagged_ptr_to_string(tagged_ptr)

    def get_tag(self, tagged_ptr):
        pointer = int(tagged_ptr)
        return (pointer >> TAG_SHIFT) & TAG_MASK

def map_data(tagged_ptr):
    ptr = extract_ptr(int(tagged_ptr))
    print("map_ptr: ", hex(ptr))
    length = int(gdb.Value(ptr + 8).cast(i64.pointer()).dereference())
    member_ptr = int(gdb.Value(ptr + 24).cast(i64.pointer()).dereference())
    return { "length": length, "member_ptr": member_ptr }

def list_data(tagged_ptr):
    ptr = extract_ptr(int(tagged_ptr))
    data_ptr = int(gdb.Value(ptr).cast(i64.pointer()).dereference())

    restType = int(gdb.Value(data_ptr + 88).cast(i64.pointer()).dereference())

    length = int(gdb.Value(ptr + 8).cast(i64.pointer()).dereference())
    array_ptr = int(gdb.Value(ptr + 24).cast(i64.pointer()).dereference())
    return { "restType": restType, "length": length, "array_ptr": array_ptr }

# may be we can create a string type and wrap these in that class
def string_len(tagged_ptr):
    bits = int(tagged_ptr)
    new_ptr = extract_ptr(bits)
    if is_immediate(bits):
        return immediate_string_len(bits)
    elif bits & STRING_LARGE_FLAG == 0:
        # medium string
        header = gdb.Value(new_ptr).cast(i32.pointer()).dereference()
        return header & 0xFFFF
    else:
        header = gdb.Value(new_ptr).cast(i64.pointer()).dereference()
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
    ptr = gdb.Value(new_ptr).cast(u8.pointer()) + header_size
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
