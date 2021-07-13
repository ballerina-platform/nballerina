@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %i = alloca i64
  %j = alloca i64
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i64
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L3, label %L1
L1:
  store i64 5, i64* %i
  store i64 9, i64* %j
  %_15 = load i64, i64* %i
  %_16 = load i64, i64* %j
  %_17 = xor i64 %_15, %_16
  store i64 %_17, i64* %_0
  %_18 = load i64, i64* %_0
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_18)
  call void @_Bio__println (i8 addrspace (1)* %_19)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  store i64 9223372036854775807, i64* %i
  store i64 9223372036854775807, i64* %j
  %_20 = load i64, i64* %i
  %_21 = load i64, i64* %j
  %_22 = xor i64 %_20, %_21
  store i64 %_22, i64* %_2
  %_23 = load i64, i64* %_2
  %_24 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_23)
  call void @_Bio__println (i8 addrspace (1)* %_24)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_25 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L5, label %L4
L2:
  %_47 = load i64, i64* %_11
  call void @_bal_panic (i64 %_47)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_4
  %_28 = load i64, i64* %_4
  store i64 %_28, i64* %i
  %_29 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L7, label %L6
L5:
  store i64 2817, i64* %_11
  br label %L2
L6:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_5
  %_32 = load i64, i64* %_5
  store i64 %_32, i64* %j
  %_33 = load i64, i64* %i
  %_34 = load i64, i64* %j
  %_35 = xor i64 %_33, %_34
  store i64 %_35, i64* %_6
  %_36 = load i64, i64* %_6
  %_37 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_36)
  call void @_Bio__println (i8 addrspace (1)* %_37)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  store i64 9223372036854775807, i64* %i
  %_38 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_39 = extractvalue {i64, i1} %_38, 1
  br i1 %_39, label %L9, label %L8
L7:
  store i64 3073, i64* %_11
  br label %L2
L8:
  %_40 = extractvalue {i64, i1} %_38, 0
  store i64 %_40, i64* %_8
  %_41 = load i64, i64* %_8
  store i64 %_41, i64* %j
  %_42 = load i64, i64* %i
  %_43 = load i64, i64* %j
  %_44 = xor i64 %_42, %_43
  store i64 %_44, i64* %_9
  %_45 = load i64, i64* %_9
  %_46 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_45)
  call void @_Bio__println (i8 addrspace (1)* %_46)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  ret void
L9:
  store i64 4097, i64* %_11
  br label %L2
}
