//@type FT1 == FT2
type FT1 function(int ... a);
type FT2 function(int[] a);

//@type FT1Ret == FT2Ret
type FT1Ret function(int ... a) returns float;
type FT2Ret function(int[] a) returns float;


//@type FT3 == FT4
type FT3 function(float b, int ... a);
type FT4 function(float b, int[] a);

//@type FT3Ret == FT4Ret
type FT3Ret function(float b, int ... a) returns float;
type FT4Ret function(float b, int[] a) returns float;

//@type FT5 != FT6
type FT5 function(int ... a);
type FT6 function();

//@type FT7 != FT8
type FT7 function(float b, int ... a);
type FT8 function(float b);
