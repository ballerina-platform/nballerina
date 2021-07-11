@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define internal i64 @_B_lower () {
  %u = alloca i64
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 2, i64* %u
  %_4 = load i64, i64* %u
  %_5 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_6 = bitcast i8 addrspace (1)* %_5 to i64 addrspace (1)*
  store i64 %_4, i64 addrspace (1)* %_6, align 8
  %_7 = getelementptr i8, i8 addrspace (1)* %_5, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  %_8 = load i64, i64* %u
  ret i64 %_8
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_upper () {
  %u = alloca i64
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 5, i64* %u
  %_4 = load i64, i64* %u
  %_5 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_6 = bitcast i8 addrspace (1)* %_5 to i64 addrspace (1)*
  store i64 %_4, i64 addrspace (1)* %_6, align 8
  %_7 = getelementptr i8, i8 addrspace (1)* %_5, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  %_8 = load i64, i64* %u
  ret i64 %_8
L2:
  call void @_bal_panic (i64 2308)
  unreachable
}
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %i = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L6, label %L1
L1:
  %_7 = call i64 @_B_lower ()
  store i64 %_7, i64* %_0
  %_8 = call i64 @_B_upper ()
  store i64 %_8, i64* %_1
  %_9 = load i64, i64* %_0
  store i64 %_9, i64* %i
  br label %L2
L2:
  %_10 = load i64, i64* %i
  %_11 = load i64, i64* %_1
  %_12 = icmp slt i64 %_10, %_11
  store i1 %_12, i1* %_2
  %_13 = load i1, i1* %_2
  br i1 %_13, label %L5, label %L3
L3:
  ret void
L4:
  %_14 = load i64, i64* %i
  %_15 = add nsw i64 %_14, 1
  store i64 %_15, i64* %i
  br label %L2
L5:
  %_16 = load i64, i64* %i
  %_17 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_18 = bitcast i8 addrspace (1)* %_17 to i64 addrspace (1)*
  store i64 %_16, i64 addrspace (1)* %_18, align 8
  %_19 = getelementptr i8, i8 addrspace (1)* %_17, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_19)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  br label %L4
L6:
  call void @_bal_panic (i64 3844)
  unreachable
}
