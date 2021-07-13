@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L2, label %L1
L1:
  %_9 = call i64 @_B_foo (i64 1, i64 1)
  store i64 %_9, i64* %_0
  %_10 = load i64, i64* %_0
  %_11 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_10)
  call void @_Bio__println (i8 addrspace (1)* %_11)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_12 = call i64 @_B_foo (i64 1, i64 10)
  store i64 %_12, i64* %_2
  %_13 = load i64, i64* %_2
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_13)
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_15 = call i64 @_B_foo (i64 11, i64 1)
  store i64 %_15, i64* %_4
  %_16 = load i64, i64* %_4
  %_17 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_16)
  call void @_Bio__println (i8 addrspace (1)* %_17)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i1
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8
  %_11 = load i8*, i8** @_bal_stack_guard
  %_12 = icmp ult i8* %_10, %_11
  br i1 %_12, label %L7, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_13 = load i64, i64* %x
  %_14 = call i64 @_B_bar (i64 %_13)
  store i64 %_14, i64* %_3
  %_15 = load i64, i64* %y
  %_16 = call i64 @_B_baz (i64 %_15)
  store i64 %_16, i64* %_4
  %_17 = load i64, i64* %_3
  %_18 = load i64, i64* %_4
  %_19 = icmp eq i64 %_17, %_18
  store i1 %_19, i1* %_2
  %_20 = load i1, i1* %_2
  br i1 %_20, label %L2, label %L3
L2:
  ret i64 0
L3:
  %_21 = load i64, i64* %x
  %_22 = call i64 @_B_bar (i64 %_21)
  store i64 %_22, i64* %_6
  %_23 = load i64, i64* %y
  %_24 = call i64 @_B_baz (i64 %_23)
  store i64 %_24, i64* %_7
  %_25 = load i64, i64* %_6
  %_26 = load i64, i64* %_7
  %_27 = icmp sgt i64 %_25, %_26
  store i1 %_27, i1* %_5
  %_28 = load i1, i1* %_5
  br i1 %_28, label %L4, label %L5
L4:
  ret i64 1
L5:
  %_29 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L9, label %L8
L6:
  %_33 = load i64, i64* %_9
  call void @_bal_panic (i64 %_33)
  unreachable
L7:
  call void @_bal_panic (i64 2308)
  unreachable
L8:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_8
  %_32 = load i64, i64* %_8
  ret i64 %_32
L9:
  store i64 4097, i64* %_9
  br label %L6
}
define internal i64 @_B_bar (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  %_4 = load i64, i64* %x
  ret i64 %_4
L2:
  call void @_bal_panic (i64 5380)
  unreachable
}
define internal i64 @_B_baz (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  %_4 = load i64, i64* %x
  ret i64 %_4
L2:
  call void @_bal_panic (i64 6404)
  unreachable
}
