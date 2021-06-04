define void @foo1 (  ) {
L0:
  ret void
}
define void @foo2 ( i64 %R0,i64 %R1 ) {
L0:
  %R2 = alloca i64 , align 8
  %R3 = alloca i64 , align 8
  store i64 %R0 , i64* %R2 , align 8
  store i64 %R1 , i64* %R3 , align 8
  ret void
}
define i64 @foo3 (  ) {
L0:
  ret i64 21
}
define i64 @foo4 ( i64 %R0,i64 %R1 ) {
L0:
  %R2 = alloca i64 , align 8
  %R3 = alloca i64 , align 8
  store i64 %R0 , i64* %R2 , align 8
  store i64 %R1 , i64* %R3 , align 8
  %R4 = load i64 , i64* %R3 , align 8
  ret i64 %R4
}
define void @test (  ) {
L0:
  %R0 = alloca i64 , align 8
  %R1 = alloca i64 , align 8
  call void @foo1 (  )
  call void @foo2 ( i64 42,i64 43 )
  %R2 = call i64 @foo3 (  )
  store i64 %R2 , i64* %R0 , align 8
  %R3 = call i64 @foo4 ( i64 12,i64 13 )
  store i64 %R3 , i64* %R1 , align 8
  ret void
}
