@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i64
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L3, label %L1
L1:
  %_15 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 0)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L5, label %L4
L2:
  %_47 = load i64, i64* %_11
  call void @_bal_panic (i64 %_47)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_0
  %_18 = load i64, i64* %_0
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_18)
  call void @_Bio__println (i8 addrspace (1)* %_19)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_20 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_21 = extractvalue {i64, i1} %_20, 1
  br i1 %_21, label %L7, label %L6
L5:
  store i64 769, i64* %_11
  br label %L2
L6:
  %_22 = extractvalue {i64, i1} %_20, 0
  store i64 %_22, i64* %_2
  %_23 = load i64, i64* %_2
  %_24 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_23)
  call void @_Bio__println (i8 addrspace (1)* %_24)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_25 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L9, label %L8
L7:
  store i64 1025, i64* %_11
  br label %L2
L8:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_4
  %_28 = load i64, i64* %_4
  %_29 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_28, i64 0)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L11, label %L10
L9:
  store i64 1281, i64* %_11
  br label %L2
L10:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_5
  %_32 = load i64, i64* %_5
  %_33 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_32)
  call void @_Bio__println (i8 addrspace (1)* %_33)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_34 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_35 = extractvalue {i64, i1} %_34, 1
  br i1 %_35, label %L13, label %L12
L11:
  store i64 1281, i64* %_11
  br label %L2
L12:
  %_36 = extractvalue {i64, i1} %_34, 0
  store i64 %_36, i64* %_7
  %_37 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_38 = extractvalue {i64, i1} %_37, 1
  br i1 %_38, label %L15, label %L14
L13:
  store i64 1537, i64* %_11
  br label %L2
L14:
  %_39 = extractvalue {i64, i1} %_37, 0
  store i64 %_39, i64* %_8
  %_40 = load i64, i64* %_7
  %_41 = load i64, i64* %_8
  %_42 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_40, i64 %_41)
  %_43 = extractvalue {i64, i1} %_42, 1
  br i1 %_43, label %L17, label %L16
L15:
  store i64 1537, i64* %_11
  br label %L2
L16:
  %_44 = extractvalue {i64, i1} %_42, 0
  store i64 %_44, i64* %_9
  %_45 = load i64, i64* %_9
  %_46 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_45)
  call void @_Bio__println (i8 addrspace (1)* %_46)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  ret void
L17:
  store i64 1537, i64* %_11
  br label %L2
}
