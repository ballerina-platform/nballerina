import gdb.printing
import gdb
import math
from decimal import *

decimal_context = getcontext();
decimal_context.rounding = ROUND_HALF_EVEN;
decimal_context.prec = 6176

HEAP_ALIGNMENT = 8
TAG_SHIFT = 56

POINTER_MASK = (1 << TAG_SHIFT) - 1
ALIGN_MASK = ~(HEAP_ALIGNMENT - 1)
IMMEDIATE_FLAG = (0x20) << TAG_SHIFT
TAG_MASK = 0xFF
UT_MASK = 0x1F

TAG_NIL     = 0x00
TAG_BOOLEAN = 0x01
TAG_INT     = 0x02
TAG_FLOAT   = 0x03
TAG_DECIMAL = 0x04
TAG_STRING  = 0x05
TAG_ERROR   = 0x06
TAG_LIST    = 0xC
TAG_MAPPING = 0xD

INT_MAX = (2**64) -1

STRING_LARGE_FLAG = 1

# we are getting these type definitions because we say the compile unit's lanugage is DW_LANG_C99 in the ll file
i32 = gdb.lookup_type("long")
u32 = gdb.lookup_type("unsigned long")
i64 = gdb.lookup_type("long long")
u64 = gdb.lookup_type("unsigned long long")
f64 = gdb.lookup_type("double")
u8 = gdb.lookup_type("unsigned char")

class TaggedPrinter:
    def __init__(self, val):
        self.val = val

    def to_string(self):
        return self.tagged_ptr_to_string(self.val)

    def tagged_ptr_to_string(self, tagged_ptr, printer_stack=[]):
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
        if tag == TAG_LIST:
            return self.list_to_string(tagged_ptr, printer_stack)
        if tag == TAG_MAPPING:
            return self.map_to_string(tagged_ptr, printer_stack)
        if tag == TAG_DECIMAL:
            return self.decimal_to_string(tagged_ptr)
        return f"Unimplemented tag: {tag} ptr value: {ptr_val}"

    def decimal_to_string(self, tagged_ptr):
        ptr = extract_ptr(int(tagged_ptr))
        bits = (int(gdb.Value(ptr + 8).cast(u64.pointer()).dereference()) << 64) | int(gdb.Value(ptr).cast(u64.pointer()).dereference())
        val = decimal_val(bits)
        return val.to_eng_string()

    def map_to_string(self, tagged_ptr, printer_stack):
        data = map_data(tagged_ptr)
        body = ["{"];
        ptr = int(tagged_ptr)
        if ptr in printer_stack:
            return "..."
        printer_stack.append(ptr);
        for i in range(data["length"]):
            if i > 0:
                body.append(", ")
            key, val = self.get_map_element(data, i)
            body.append(f"{key}: {val}")
        body.append("}");
        printer_stack.pop()
        return "".join(body)

    def list_to_string(self, tagged_ptr, printer_stack):
        data = list_data(tagged_ptr)
        ptr = int(tagged_ptr)
        if ptr in printer_stack:
            return "..."
        printer_stack.append(ptr);
        body = ["["]
        for i in range(data["length"]):
            if i > 0:
                body.append(", ")
            body.append(str(self.get_list_element(data, i, printer_stack)))
        body.append("]")
        printer_stack.pop()
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
            return '"' + str(body.to_bytes(str_len, "little").decode("utf-8")) + '"'
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

    def get_list_element(self, list_data, index, printer_stack):
        restType = list_data["restType"]
        array_ptr = list_data["array_ptr"]
        ptr = array_ptr + (index * 8)
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
            print(tagged_ptr, printer_stack)
            return self.tagged_ptr_to_string(tagged_ptr, printer_stack)

    def get_tag(self, tagged_ptr):
        pointer = int(tagged_ptr)
        return (pointer >> TAG_SHIFT) & TAG_MASK

def decimal_val(bits):
    sign = ((1 << 127) & bits) >> 127
    head = ((0b11111 << 122) & bits) >> 122
    exponent_mask = (1 << 12) - 1
    exponent = ((exponent_mask << 110) & bits) >> 110
    if head >= 0b11000:
        exponent_prefix = (head & 0b110) >> 1
        significant_first_digit = 0b1000 | (head & 0b1)
    else:
        exponent_prefix = (head & 0b11000) >> 3
        significant_first_digit = head & 0b111
    exponent = Decimal(exponent | (exponent_prefix << 12))
    # calculating significant
    significant_digits = [str(significant_first_digit)]
    dpd_mask = (1 << 10) - 1
    for i in range(11):
        shift = (10 - i) * 10
        dpd = ((dpd_mask << shift) & bits) >> shift
        str_num = map(str, dpd_to_int(dpd))
        for num in str_num:
            significant_digits.append(num)
    significant = Decimal("".join(significant_digits))
    value = (Decimal(10) ** Decimal(exponent - 6176)) * significant
    if sign:
        value *= -1
    return value

def dpd_to_int(bits):
    # original bits are assumed to be Xabc Ydef Zghi
    # encoding table https://en.wikipedia.org/wiki/Densely_packed_decimal
    i = bits & 1;
    f = (bits & (1 << 4)) >> 4;
    c = (bits & (1 << 7)) >> 7;
    if ((bits >> 3) & 1) == 0:
        # case 1
        D1 = bits >> 7
        D2 = (bits >> 4) & 0b111
        D3 = bits & 0b111
    else:
        flag_1 = (bits >> 1) & 0b111
        if flag_1 == 0b100:
            # case 2
            D1 = bits >> 7
            D2 = (bits >> 4) & 0b111
            D3 = 0b1000 | i
        elif flag_1 == 0b101:
            # case 3
            D1 = bits >> 7
            D2 = 0b1000 | f
            gh = (bits >> 5) & 0b11
            D3 = (gh << 1) | i
        elif flag_1 == 0b110:
            D1 = 0b1000 | c
            D2 = (bits >> 4) & 0b111
            gh = bits >> 8
            D3 = (gh << 1) | i
        else:
            flag_2 = (bits >> 5) & 0b11
            if flag_2 == 0:
                D1 = 0b1000 | c
                D2 = 0b1000 | f
                gh = bits >> 8
                D3 = (gh << 1) | i
            elif flag_2 == 0b01:
                D1 = 0b1000 | c
                de = bits >> 8
                D2 = (de << 1) | f
                D3 = 0b1000 | i
            elif flag_2 == 0b10:
                D1 = bits >> 7
                D2 = 0b1000 | f
                D3 = 0b1000 | i
            else:
                D1 = 0b1000 | c
                D2 = 0b1000 | f
                D3 = 0b1000 | i
    return [D1, D2, D3]

def map_data(tagged_ptr):
    ptr = extract_ptr(int(tagged_ptr))
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

def string_len(tagged_ptr):
    bits = int(tagged_ptr)
    new_ptr = extract_ptr(bits)
    if is_immediate(bits):
        return immediate_string_len(bits)
    elif bits & STRING_LARGE_FLAG == 0:
        # medium string
        header = gdb.Value(new_ptr).cast(u32.pointer()).dereference()
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

def count_leading_zeros(bits):
    binary = bin(bits)[2:]
    return 64 - len(binary)

def string_ptr_to_string(tagged_ptr, length, header_size):
    bits = int(tagged_ptr)
    new_ptr = extract_ptr(bits)
    ptr = gdb.Value(new_ptr).cast(u8.pointer()) + header_size
    value = int(ptr.dereference())
    for _ in range(1, length):
        ptr = ptr + 1
        value = (value << 8) | int(ptr.dereference())
    return str(value.to_bytes(length, "big").decode("utf-8"))

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

def extract_ptr(bits):
    ptr_body = bits & POINTER_MASK
    return (ptr_body & ALIGN_MASK)

def is_immediate(val):
    return int(val) & IMMEDIATE_FLAG != 0

def build_pretty_printer():
    pp = gdb.printing.RegexpCollectionPrettyPrinter("bal_pp")
    pp.add_printer("TaggedPtr", "^TaggedPtr$", TaggedPrinter)
    pp.add_printer("float", "^float$", FloatPrinter)
    return pp

gdb.printing.register_pretty_printer(
    gdb.current_objfile(),
    build_pretty_printer())
