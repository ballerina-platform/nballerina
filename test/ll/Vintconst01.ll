@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L3, label %L1
L1:
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_12)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  %_13 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 9223372036854775807)
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_15 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L5, label %L4
L2:
  %_29 = load i64, i64* %_8
  call void @_bal_panic (i64 %_29)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_3
  %_18 = load i64, i64* %_3
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_18)
  call void @_Bio__println (i8 addrspace (1)* %_19)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_20 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775807)
  %_21 = extractvalue {i64, i1} %_20, 1
  br i1 %_21, label %L7, label %L6
L5:
  store i64 1793, i64* %_8
  br label %L2
L6:
  %_22 = extractvalue {i64, i1} %_20, 0
  store i64 %_22, i64* %_5
  %_23 = load i64, i64* %_5
  %_24 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_23, i64 1)
  %_25 = extractvalue {i64, i1} %_24, 1
  br i1 %_25, label %L9, label %L8
L7:
  store i64 2049, i64* %_8
  br label %L2
L8:
  %_26 = extractvalue {i64, i1} %_24, 0
  store i64 %_26, i64* %_6
  %_27 = load i64, i64* %_6
  %_28 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_27)
  call void @_Bio__println (i8 addrspace (1)* %_28)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  ret void
L9:
  store i64 2049, i64* %_8
  br label %L2
}
