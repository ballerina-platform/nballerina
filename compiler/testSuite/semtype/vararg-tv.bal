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
type FT3Sub2 function(float b,int a);
type FT3Sub3 function(float b,int a, int c);

//@type FT3Ret <> FT4Ret
//@type FT3Ret > FT3RetSub1
//@type FT3Ret > FT3RetSub2
//@type FT3Ret > FT3RetSub3
type FT3Ret function(float b, int ... a) returns float;
type FT4Ret function(float b, int[] a) returns float;
type FT3RetSub1 function(float b) returns float;
type FT3RetSub2 function(float b,int a) returns float;
type FT3RetSub3 function(float b,int a, int c) returns float;
