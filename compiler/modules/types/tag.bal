// Inherently immutable
public const BT_NIL        = 0x00;
public const BT_BOOLEAN    = 0x01;
public const BT_INT        = 0x02;
public const BT_FLOAT      = 0x03;
public const BT_DECIMAL    = 0x04;
public const BT_STRING     = 0x05;
public const BT_ERROR      = 0x06;
public const BT_TYPEDESC   = 0x07;
public const BT_HANDLE     = 0x08;
public const BT_FUNCTION   = 0x09;

// Inherently mutable
public const BT_FUTURE     = 0xA;
public const BT_STREAM     = 0xB;

// Selectively immutable
public const BT_LIST    = 0xC;
public const BT_MAPPING = 0xD;
public const BT_TABLE   = 0xE;
public const BT_XML     = 0xF;
public const BT_OBJECT  = 0x10;
public const BT_CELL    = 0x11;

public const BT_UNDEF   = 0x12;
