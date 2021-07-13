@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  %_7 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10000)
  %_8 = extractvalue {i64, i1} %_7, 1
  br i1 %_8, label %L5, label %L4
L2:
  %_14 = load i64, i64* %_3
  call void @_bal_panic (i64 %_14)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_9 = extractvalue {i64, i1} %_7, 0
  store i64 %_9, i64* %_0
  %_10 = load i64, i64* %_0
  %_11 = call i64 @_B_rem (i64 %_10, i64 0)
  store i64 %_11, i64* %_1
  %_12 = load i64, i64* %_1
  %_13 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_12)
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L5:
  store i64 1025, i64* %_3
  br label %L2
}
define internal i64 @_B_rem (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_7 = load i64, i64* %x
  %_8 = load i64, i64* %y
  %_9 = icmp eq i64 %_8, 0
  br i1 %_9, label %L4, label %L5
L2:
  %_15 = load i64, i64* %_3
  call void @_bal_panic (i64 %_15)
  unreachable
L3:
  call void @_bal_panic (i64 1796)
  unreachable
L4:
  store i64 2050, i64* %_3
  br label %L2
L5:
  %_10 = icmp eq i64 %_7, -9223372036854775808
  %_11 = icmp eq i64 %_8, -1
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %L7, label %L6
L6:
  %_13 = srem i64 %_7, %_8
  store i64 %_13, i64* %_2
  br label %L8
L7:
  store i64 0, i64* %_2
  br label %L8
L8:
  %_14 = load i64, i64* %_2
  ret i64 %_14
}
