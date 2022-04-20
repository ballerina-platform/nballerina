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

def float_to_string(float_val):
    if math.isnan(float_val):
        return "NaN"
    if math.isinf(float_val):
        return "Infinity" if float_val > 0 else "-Infinity"
    return str(float_val)

class TaggedPrinter:
    def __init__(self, val):
        self.val = val

    def to_string(self):
        ptr_val = int(self.val)
        ptr_body = ptr_val & POINTER_MASK
        if ptr_val & IMMEDIATE_FLAG != 0:
            return str(ptr_body)
        tag = self.get_tag() & UT_MASK
        new_ptr = (ptr_body & ALIGN_MASK)
        if tag == TAG_NIL:
            return "()"
        if tag == TAG_INT:
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
        raise Exception("Unimplemented tag")

    def get_tag(self):
        pointer = int(self.val)
        return (pointer >> TAG_SHIFT) & TAG_MASK

class FloatPrinter:
    def __init__(self, val):
        self.val = val

    def to_string(self):
        float_val = float(self.val)
        return float_to_string(float_val)


def build_pretty_printer():
    pp = gdb.printing.RegexpCollectionPrettyPrinter(
        "bal_pp")
    pp.add_printer('TaggedPtr', '^TaggedPtr$', TaggedPrinter)
    pp.add_printer('float', '^float$', FloatPrinter)
    return pp

gdb.printing.register_pretty_printer(
    gdb.current_objfile(),
    build_pretty_printer())
