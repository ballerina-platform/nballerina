// Inherently immutable
#define TAG_NIL        0x00
#define TAG_BOOLEAN    0x01
#define TAG_INT        0x02
#define TAG_FLOAT      0x03
#define TAG_DECIMAL    0x04
#define TAG_STRING     0x05
#define TAG_ERROR      0x06
#define TAG_TYPEDESC   0x07
#define TAG_HANDLE     0x08
#define TAG_FUNCTION   0x09

// Inherently mutable
#define TAG_FUTURE     0xA
#define TAG_STREAM     0xB

// Selectively immutable
#define TAG_LIST       0xC
#define TAG_MAPPING    0xD
#define TAG_TABLE      0xE
#define TAG_XML        0xF
#define TAG_OBJECT     0x10
#define TAG_CELL       0x11
