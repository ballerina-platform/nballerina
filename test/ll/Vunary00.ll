@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i1
  %_11 = alloca i64
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i1
  %_14 = alloca i64
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i1
  %_17 = alloca i1
  %_18 = alloca i8 addrspace (1)*
  %_19 = alloca i1
  %_20 = alloca i1
  %_21 = alloca i8 addrspace (1)*
  %_22 = alloca i64
  %_23 = alloca i8
  %_24 = load i8*, i8** @_bal_stack_guard
  %_25 = icmp ult i8* %_23, %_24
  br i1 %_25, label %L3, label %L1
L1:
  %_26 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 2)
  %_27 = extractvalue {i64, i1} %_26, 1
  br i1 %_27, label %L5, label %L4
L2:
  %_75 = load i64, i64* %_22
  call void @_bal_panic (i64 %_75)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_28 = extractvalue {i64, i1} %_26, 0
  store i64 %_28, i64* %_0
  %_29 = load i64, i64* %_0
  %_30 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_29, i64 5)
  %_31 = extractvalue {i64, i1} %_30, 1
  br i1 %_31, label %L7, label %L6
L5:
  store i64 1025, i64* %_22
  br label %L2
L6:
  %_32 = extractvalue {i64, i1} %_30, 0
  store i64 %_32, i64* %_1
  %_33 = load i64, i64* %_1
  %_34 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_33)
  call void @_Bio__println (i8 addrspace (1)* %_34)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_35 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 2)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L9, label %L8
L7:
  store i64 1025, i64* %_22
  br label %L2
L8:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_3
  %_38 = load i64, i64* %_3
  %_39 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 %_38)
  %_40 = extractvalue {i64, i1} %_39, 1
  br i1 %_40, label %L11, label %L10
L9:
  store i64 1281, i64* %_22
  br label %L2
L10:
  %_41 = extractvalue {i64, i1} %_39, 0
  store i64 %_41, i64* %_4
  %_42 = load i64, i64* %_4
  %_43 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_42)
  call void @_Bio__println (i8 addrspace (1)* %_43)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_44 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 2)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L13, label %L12
L11:
  store i64 1281, i64* %_22
  br label %L2
L12:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_6
  %_47 = load i64, i64* %_6
  %_48 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_47, i64 3)
  %_49 = extractvalue {i64, i1} %_48, 1
  br i1 %_49, label %L15, label %L14
L13:
  store i64 1537, i64* %_22
  br label %L2
L14:
  %_50 = extractvalue {i64, i1} %_48, 0
  store i64 %_50, i64* %_7
  %_51 = load i64, i64* %_7
  %_52 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 %_51)
  %_53 = extractvalue {i64, i1} %_52, 1
  br i1 %_53, label %L17, label %L16
L15:
  store i64 1537, i64* %_22
  br label %L2
L16:
  %_54 = extractvalue {i64, i1} %_52, 0
  store i64 %_54, i64* %_8
  %_55 = load i64, i64* %_8
  %_56 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_55)
  call void @_Bio__println (i8 addrspace (1)* %_56)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_57 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L19, label %L18
L17:
  store i64 1537, i64* %_22
  br label %L2
L18:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_11
  %_60 = load i64, i64* %_11
  %_61 = icmp slt i64 %_60, 2
  store i1 %_61, i1* %_10
  %_62 = load i1, i1* %_10
  call void @_B_printBoolean (i1 %_62)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_63 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_64 = extractvalue {i64, i1} %_63, 1
  br i1 %_64, label %L21, label %L20
L19:
  store i64 1793, i64* %_22
  br label %L2
L20:
  %_65 = extractvalue {i64, i1} %_63, 0
  store i64 %_65, i64* %_14
  %_66 = load i64, i64* %_14
  %_67 = icmp sge i64 2, %_66
  store i1 %_67, i1* %_13
  %_68 = load i1, i1* %_13
  call void @_B_printBoolean (i1 %_68)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  store i1 1, i1* %_17
  %_69 = load i1, i1* %_17
  %_70 = icmp uge i1 %_69, 0
  store i1 %_70, i1* %_16
  %_71 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_71)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_18
  store i1 1, i1* %_20
  %_72 = load i1, i1* %_20
  %_73 = icmp ule i1 0, %_72
  store i1 %_73, i1* %_19
  %_74 = load i1, i1* %_19
  call void @_B_printBoolean (i1 %_74)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_21
  ret void
L21:
  store i64 2049, i64* %_22
  br label %L2
}
define internal void @_B_printBoolean (i1 %_0) {
  %x = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L5, label %L1
L1:
  store i1 %_0, i1* %x
  %_6 = load i1, i1* %x
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L3:
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 3588)
  unreachable
}
