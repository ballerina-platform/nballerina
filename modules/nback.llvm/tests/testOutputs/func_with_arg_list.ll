define i64 @foo1 ( i64 %R0 ) {
  %R1 = alloca i64 , align 8
  store i64 %R0 , i64* %R1 , align 8
  %R2 = load i64 , i64* %R1 , align 8
  ret i64 %R2
}
define i64 @foo2 ( i64 %R0,i64 %R1 ) {
  %R2 = alloca i64 , align 8
  %R3 = alloca i64 , align 8
  store i64 %R0 , i64* %R2 , align 8
  store i64 %R1 , i64* %R3 , align 8
  %R4 = load i64 , i64* %R3 , align 8
  ret i64 %R4
}
define i64 @foo3 ( i64 %R0,i64 %R1,i64 %R2 ) {
  %R3 = alloca i64 , align 8
  %R4 = alloca i64 , align 8
  %R5 = alloca i64 , align 8
  store i64 %R0 , i64* %R3 , align 8
  store i64 %R1 , i64* %R4 , align 8
  store i64 %R2 , i64* %R5 , align 8
  %R6 = load i64 , i64* %R5 , align 8
  ret i64 %R6
}
