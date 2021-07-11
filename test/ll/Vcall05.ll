@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  %_7 = call i64 @_B_getArg1 ()
  store i64 %_7, i64* %_0
  %_8 = call i64 @_B_getArg2 ()
  store i64 %_8, i64* %_1
  %_9 = load i64, i64* %_0
  %_10 = load i64, i64* %_1
  %_11 = call i64 @_B_foo (i64 %_9, i64 %_10)
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  %_13 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_14 = bitcast i8 addrspace (1)* %_13 to i64 addrspace (1)*
  store i64 %_12, i64 addrspace (1)* %_14, align 8
  %_15 = getelementptr i8, i8 addrspace (1)* %_13, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo (i64 %_0, i64 %_1) {
  %i = alloca i64
  %j = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %i
  store i64 %_1, i64* %j
  %_7 = load i64, i64* %i
  %_8 = load i64, i64* %j
  %_9 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 1796)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 2049, i64* %_3
  br label %L2
}
define internal i64 @_B_getArg1 () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 2
L2:
  call void @_bal_panic (i64 2820)
  unreachable
}
define internal i64 @_B_getArg2 () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 4
L2:
  call void @_bal_panic (i64 3844)
  unreachable
}
