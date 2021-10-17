# Runtime value representation

This describes how nBallerina represents values at runtime.

This is mostly accurate as of [subset 9](subset09.md), but there are a couple of details that may not be implemented till subset 10.

## Tagged vs untagged representations

The representation of a value depends on the static type of the variable that holds the value. A representation can be either untagged or tagged.

When the static type of a variable is a subtype of boolean, int or float, then it uses an untagged representation, which is an LLVM i1, i64 or f64
respectively.

Nil used as a function return type turns into LLVM void.

Otherwise, a tagged representation is used consisting of a tagged pointer.

The compiler generates conversions between tagged and untagged representations as necessary.

## Tagged pointers

Tagged pointers are 64 bits and are laid out like this:

|63-56|55-48|47-40|39-32|31-24|23-16|15-8|7-0|
|---|---|---|---|---|---|---|---|
|`UUIWTTTT`|`PPPPPPPP`|`PPPPPPPP`|`PPPPPPPP`|`PPPPPPPP`|`PPPPPPPP`|`PPPPPPPP`|`PPPPPXYZ`|

The WTTTT bits are always a tag that gives the uniform type of the value. Tags are chosen so that

- the W bit is 1 if and only if the uniform type is mutable
- the nil type is all bits zero
- the TTTT bits are the same for the two uniform types of a selectively immutable basic type (e.g. the tag for mutable lists is the tag for immutable lists with the W bit set)

A tagged pointer can be _immediate_, meaning its value is completely within the tagged pointer, or it can be a pointer.

When the tagged pointer is a pointer, then the P bits represent a pointer into the heap: the pointer is constructed by making the non-P bits zero. (This is done using the LLVM ptrmask intrinsic.) The heap is 8-byte aligned, so the XYZ values of a pointer will always be zero. The XYZ bits are used to distinguish different heap representations of the same uniform type.

When the tagged pointer is immediate, then the P bits and the XYZ bits are both used to represent the value.

Tagged pointers are represented by an LLVM i64* in address space 1.

### Nil

Nil is always immediate and is represented by a tagged pointer that is all bits zero. (The tag for nil is 0.)

### Boolean

Boolean is always immediate.  The Z bit is 1 for true and 0 for false. Other PXY bits are zero.

### Int

An int is immediate if it fits in 56 bits as a signed value, in which case it is stored in the PXYZ bits.

Otherwise it points to an LLVM i64 on the heap.

### Float

Float is always a pointer: it points to an LLVM f64 on the heap.

### String

Strings are represented in UTF-8. There are three kinds of string: small, medium, large.

A small string is one that is
- 0 to 7 ASCII code points, or
- an arbitrary single code point (i.e. a subtype of `string:Char`)

A small string is immediate. The UTF-8 representation is padded with 0xFF bytes to a length of 7 bytes, and then packed in the PXYZ bits in little-endian order. The length is not represented explicitly, but can be efficiently computed in the case of 1 or more ASCII code points by
1. inverting the bits of the tagged pointer
2. clearing the top 8 bits
3. using a hardware instruction to count the number of leading zero bits
This will be equal to the (1+p)*8, where p is the number of padding bytes there were.

Medium and large strings are pointers. The Z bit is set for large strings.

* Medium strings are a 16-bit length in bytes, 16-bit length in code points, then the UTF-8 characters (in LLVM terms `{ i16, i16, [0 x i8] }`)
* Large strings are similar but have 64-bit lengths (i.e. `{ i64, i64, [0 x i8] }`)

Medium and large strings are always 8-byte aligned, and are zero-padded so their total size in bytes (including the two lengths) is a multiple of 8.

### List

Lists are never immediate.

The list data structure consists of
1. A pointer to a list descriptor
2. An array of tagged pointers

The array of tagged pointers is a length, a capacity and a pointer to an LLVM array of tagged pointers.

The X bit is used for [exactness tracking](exact.md); the Y and Z bits are zero.

The list descriptor structure is still evolving and is not yet described here.

### Mapping

Mappings are never immediate. This is currently used for all mappings, including both maps and records.

The mapping data structure consists of

1. A pointer to a mapping descriptor
2. An array of key/value tagged pointer pairs
3. A hash table consisting of indices into the previous array

This is based on the [Python compact dictionary](https://mail.python.org/pipermail/python-dev/2012-December/123028.html) data structure. The key idea is that the size of the indices in the hash table depends on the number of entries in the key/value array. So in most cases the indices can be bytes. This makes it affordable to have keep the load factor low (below 0.5), which in turn makes it viable to use open addressing with linear probing, which is fast for low load factors.

The key/value array is insertion order for maps, allowing us to efficiently preserve insertion order for maps. For closed records, the key/value array is sorted by key. This means that when evaluating an expression v.f where the static type of v is a closed record type, we can determine at compile-time the index of the member in the key/value array, and thereby avoid a runtime hash-table lookup.

The X bit is used for [exactness tracking](exact.md); the Y and Z bits are zero.

The mapping descriptor structure is still evolving and is not yet described here.

### Error

Errors are never immediate.

An error contains
- a tagged pointer string for the message
- a snapshot of the stack

The snapshot is an array of 32-bit ints, each representing the PC of a frame on the stack; libbacktrace is used to construct the backtrace by walking the stack at the time that the error is constructed; the snapshot can subsequently be used with libbacktrace to print a backtrace.




