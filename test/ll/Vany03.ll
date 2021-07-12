@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %_8 = alloca i8
  %_9 = load i8*, i8** @_bal_stack_guard
  %_10 = icmp ult i8* %_8, %_9
  br i1 %_10, label %L3, label %L1
L1:
  %_11 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 57)
  call void @_B_foo (i8 addrspace (1)* %_11)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  %_12 = zext i1 1 to i64
  %_13 = or i64 %_12, 72057594037927936
  %_14 = getelementptr i8, i8 addrspace (1)* null, i64 %_13
  call void @_B_foo (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  call void @_B_foo (i8 addrspace (1)* null)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_15 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 9223372036854775807)
  call void @_B_foo (i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_16 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775807)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L5, label %L4
L2:
  %_25 = load i64, i64* %_7
  call void @_bal_panic (i64 %_25)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %_4
  %_19 = load i64, i64* %_4
  %_20 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_19, i64 1)
  %_21 = extractvalue {i64, i1} %_20, 1
  br i1 %_21, label %L7, label %L6
L5:
  store i64 1793, i64* %_7
  br label %L2
L6:
  %_22 = extractvalue {i64, i1} %_20, 0
  store i64 %_22, i64* %_5
  %_23 = load i64, i64* %_5
  %_24 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_23)
  call void @_B_foo (i8 addrspace (1)* %_24)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  ret void
L7:
  store i64 1793, i64* %_7
  br label %L2
}
define internal void @_B_foo (i8 addrspace (1)* %_0) {
  %x = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  store i8 addrspace (1)* %_0, i8 addrspace (1)** %x
  %_5 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  call void @_Bio__println (i8 addrspace (1)* %_5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 2564)
  unreachable
}
