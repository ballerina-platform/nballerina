//@type FT1 <> FT2
//@type FT1 > FT1Sub1
//@type FT1 > FT1Sub2
//@type FT1 > FT1Sub3
type FT1 function(int ... a);
type FT2 function(int[] a);
type FT1Sub1 function();
type FT1Sub2 function(int a);
type FT1Sub3 function(int a, int b);

//@type FT1Ret <> FT2Ret
//@type FT1Ret > FT1RetSub1
//@type FT1Ret > FT1RetSub2
//@type FT1Ret > FT1RetSub3
type FT1Ret function(int ... a) returns float;
type FT2Ret function(int[] a) returns float;
type FT1RetSub1 function() returns float;
type FT1RetSub2 function(int a) returns float;
type FT1RetSub3 function(int a, int b) returns float;

//@type FT3 <> FT4
//@type FT3 > FT3Sub1
//@type FT3 > FT3Sub2
//@type FT3 > FT3Sub3
type FT3 function(float b, int ... a);
type FT4 function(float b, int[] a);
type FT3Sub1 function(float b);
type FT3Sub2 function(float b, int a);
type FT3Sub3 function(float b, int a, int c);

//@type FT3Ret <> FT4Ret
//@type FT3Ret > FT3RetSub1
//@type FT3Ret > FT3RetSub2
//@type FT3Ret > FT3RetSub3
type FT3Ret function(float b, int ... a) returns float;
type FT4Ret function(float b, int[] a) returns float;
type FT3RetSub1 function(float b) returns float;
type FT3RetSub2 function(float b, int a) returns float;
type FT3RetSub3 function(float b, int a, int c) returns float;

//@type FT5 = FT1
//@type FT5 <> FT2
//@type FT5 <> FT6
//@type FT5 > FT1Sub1
//@type FT5 > FT1Sub2
//@type FT5 > FT1Sub3
//@type FT5 > FT5Sub2
//@type FT5 > FT5Sub3
type FT5 function(int...);
type FT6 function(int[]);
type FT5Sub2 function(int);
type FT5Sub3 function(int, int);

//@type FT5Ret = FT1Ret
//@type FT5Ret <> FT2Ret
//@type FT5Ret <> FT6Ret
//@type FT5Ret > FT1RetSub1
//@type FT5Ret > FT1RetSub2
//@type FT5Ret > FT1RetSub3
//@type FT5Ret > FT5RetSub2
//@type FT5Ret > FT5RetSub3
type FT5Ret function(int...) returns float;
type FT6Ret function(int[]) returns float;
type FT5RetSub2 function(int) returns float;
type FT5RetSub3 function(int, int) returns float;

//@type FT7 = FT3
//@type FT7 <> FT4
//@type FT7 <> FT8
//@type FT7 > FT3Sub1
//@type FT7 > FT3Sub2
//@type FT7 > FT3Sub3
//@type FT7 > FT7Sub1
//@type FT7 > FT7Sub2
//@type FT7 > FT7Sub3
type FT7 function(float, int...);
type FT8 function(float, int[]);
type FT7Sub1 function(float);
type FT7Sub2 function(float, int);
type FT7Sub3 function(float, int, int);

//@type FT7Ret = FT3Ret
//@type FT7Ret <> FT4Ret
//@type FT7Ret <> FT8Ret
//@type FT7Ret > FT3RetSub1
//@type FT7Ret > FT3RetSub2
//@type FT7Ret > FT3RetSub3
//@type FT7Ret > FT7RetSub1
//@type FT7Ret > FT7RetSub2
//@type FT7Ret > FT7RetSub3
type FT7Ret function(float, int...) returns float;
type FT8Ret function(float, int[]) returns float;
type FT7RetSub1 function(float) returns float;
type FT7RetSub2 function(float, int) returns float;
type FT7RetSub3 function(float, int, int) returns float;

//@type FT9Ret > FT9Sub
type FT9Ret function(int, int, int...) returns int;
type FT9Sub function(int, int) returns int;

//@type F > G
type F function(int, int);
type G function(byte, byte);
