@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  call void @_B_printInts (i64 5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printInts (i64 %_0) {
  %maxExclusive = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L5, label %L1
L1:
  store i64 %_0, i64* %maxExclusive
  %_8 = load i64, i64* %maxExclusive
  store i64 %_8, i64* %i
  br label %L2
L2:
  %_9 = load i64, i64* %i
  %_10 = call i64 @_B_decrease (i64 %_9)
  store i64 %_10, i64* %_2
  %_11 = load i64, i64* %_2
  %_12 = icmp sle i64 0, %_11
  store i1 %_12, i1* %_1
  %_13 = load i1, i1* %_1
  br i1 %_13, label %L4, label %L3
L3:
  ret void
L4:
  %_14 = load i64, i64* %i
  %_15 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_14)
  call void @_Bio__println (i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_16 = load i64, i64* %i
  %_17 = call i64 @_B_decrease (i64 %_16)
  store i64 %_17, i64* %_4
  %_18 = load i64, i64* %_4
  store i64 %_18, i64* %i
  br label %L2
L5:
  call void @_bal_panic (i64 3076)
  unreachable
}
define internal i64 @_B_decrease (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  %_6 = load i64, i64* %x
  %_7 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_6, i64 1)
  %_8 = extractvalue {i64, i1} %_7, 1
  br i1 %_8, label %L5, label %L4
L2:
  %_11 = load i64, i64* %_2
  call void @_bal_panic (i64 %_11)
  unreachable
L3:
  call void @_bal_panic (i64 5124)
  unreachable
L4:
  %_9 = extractvalue {i64, i1} %_7, 0
  store i64 %_9, i64* %_1
  %_10 = load i64, i64* %_1
  ret i64 %_10
L5:
  store i64 5377, i64* %_2
  br label %L2
}
