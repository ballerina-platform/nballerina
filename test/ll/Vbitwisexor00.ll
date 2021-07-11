@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
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
  %_19 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_20 = bitcast i8 addrspace (1)* %_19 to i64 addrspace (1)*
  store i64 %_18, i64 addrspace (1)* %_20, align 8
  %_21 = getelementptr i8, i8 addrspace (1)* %_19, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_21)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  store i64 9223372036854775807, i64* %i
  store i64 9223372036854775807, i64* %j
  %_22 = load i64, i64* %i
  %_23 = load i64, i64* %j
  %_24 = xor i64 %_22, %_23
  store i64 %_24, i64* %_2
  %_25 = load i64, i64* %_2
  %_26 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_27 = bitcast i8 addrspace (1)* %_26 to i64 addrspace (1)*
  store i64 %_25, i64 addrspace (1)* %_27, align 8
  %_28 = getelementptr i8, i8 addrspace (1)* %_26, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_28)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_29 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L5, label %L4
L2:
  %_55 = load i64, i64* %_11
  call void @_bal_panic (i64 %_55)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_4
  %_32 = load i64, i64* %_4
  store i64 %_32, i64* %i
  %_33 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_34 = extractvalue {i64, i1} %_33, 1
  br i1 %_34, label %L7, label %L6
L5:
  store i64 2817, i64* %_11
  br label %L2
L6:
  %_35 = extractvalue {i64, i1} %_33, 0
  store i64 %_35, i64* %_5
  %_36 = load i64, i64* %_5
  store i64 %_36, i64* %j
  %_37 = load i64, i64* %i
  %_38 = load i64, i64* %j
  %_39 = xor i64 %_37, %_38
  store i64 %_39, i64* %_6
  %_40 = load i64, i64* %_6
  %_41 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_42 = bitcast i8 addrspace (1)* %_41 to i64 addrspace (1)*
  store i64 %_40, i64 addrspace (1)* %_42, align 8
  %_43 = getelementptr i8, i8 addrspace (1)* %_41, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_43)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  store i64 9223372036854775807, i64* %i
  %_44 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L9, label %L8
L7:
  store i64 3073, i64* %_11
  br label %L2
L8:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_8
  %_47 = load i64, i64* %_8
  store i64 %_47, i64* %j
  %_48 = load i64, i64* %i
  %_49 = load i64, i64* %j
  %_50 = xor i64 %_48, %_49
  store i64 %_50, i64* %_9
  %_51 = load i64, i64* %_9
  %_52 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_53 = bitcast i8 addrspace (1)* %_52 to i64 addrspace (1)*
  store i64 %_51, i64 addrspace (1)* %_53, align 8
  %_54 = getelementptr i8, i8 addrspace (1)* %_52, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_54)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  ret void
L9:
  store i64 4097, i64* %_11
  br label %L2
}
