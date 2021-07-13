@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %INT_MIN = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  %_8 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775807)
  %_9 = extractvalue {i64, i1} %_8, 1
  br i1 %_9, label %L5, label %L4
L2:
  %_20 = load i64, i64* %_4
  call void @_bal_panic (i64 %_20)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_10 = extractvalue {i64, i1} %_8, 0
  store i64 %_10, i64* %_0
  %_11 = load i64, i64* %_0
  %_12 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_11, i64 1)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L7, label %L6
L5:
  store i64 1025, i64* %_4
  br label %L2
L6:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_1
  %_15 = load i64, i64* %_1
  store i64 %_15, i64* %INT_MIN
  %_16 = load i64, i64* %INT_MIN
  %_17 = call i64 @_B_neg (i64 %_16)
  store i64 %_17, i64* %_2
  %_18 = load i64, i64* %_2
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_18)
  call void @_Bio__println (i8 addrspace (1)* %_19)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L7:
  store i64 1025, i64* %_4
  br label %L2
}
define internal i64 @_B_neg (i64 %_0) {
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
  %_7 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_6)
  %_8 = extractvalue {i64, i1} %_7, 1
  br i1 %_8, label %L5, label %L4
L2:
  %_11 = load i64, i64* %_2
  call void @_bal_panic (i64 %_11)
  unreachable
L3:
  call void @_bal_panic (i64 2052)
  unreachable
L4:
  %_9 = extractvalue {i64, i1} %_7, 0
  store i64 %_9, i64* %_1
  %_10 = load i64, i64* %_1
  ret i64 %_10
L5:
  store i64 2305, i64* %_2
  br label %L2
}
