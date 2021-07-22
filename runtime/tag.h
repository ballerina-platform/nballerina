// Inherently immutable
#define TAG_NIL        0x00
#define TAG_BOOLEAN    0x01

// Selectively immutable; immutable half
#define TAG_LIST_RO    0x02
#define TAG_MAPPING_RO 0x03
#define TAG_TABLE_RO   0x04
#define TAG_XML_RO     0x05
#define TAG_OBJECT_RO  0x06

// Rest of inherently immutable
#define TAG_INT        0x07
#define TAG_FLOAT      0x08
#define TAG_DECIMAL    0x09
#define TAG_STRING     0x0A
#define TAG_ERROR      0x0B
#define TAG_FUNCTION   0x0C
#define TAG_TYPEDESC   0x0D
#define TAG_HANDLE     0x0E

// Inherently mutable
#define TAG_FUTURE     0x10
#define TAG_STREAM     0x11

// Selectively immutable; mutable half
#define TAG_LIST_RW    0x12
#define TAG_MAPPING_RW 0x13
#define TAG_TABLE_RW   0x14
#define TAG_XML_RW     0x15
#define TAG_OBJECT_RW  0x16

