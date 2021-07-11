@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i1
  %_8 = alloca i1
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i1
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i1
  %_16 = alloca i1
  %_17 = alloca i1
  %_18 = alloca i1
  %_19 = alloca i64
  %_20 = alloca i8 addrspace (1)*
  %_21 = alloca i1
  %_22 = alloca i1
  %_23 = alloca i64
  %_24 = alloca i8 addrspace (1)*
  %_25 = alloca i1
  %_26 = alloca i1
  %_27 = alloca i8 addrspace (1)*
  %_28 = alloca i1
  %_29 = alloca i1
  %_30 = alloca i8 addrspace (1)*
  %_31 = alloca i64
  %_32 = alloca i8
  %_33 = load i8*, i8** @_bal_stack_guard
  %_34 = icmp ult i8* %_32, %_33
  br i1 %_34, label %L3, label %L1
L1:
  %_35 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 12, i64 6)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L5, label %L4
L2:
  %_93 = load i64, i64* %_31
  call void @_bal_panic (i64 %_93)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_1
  %_38 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 15)
  %_39 = extractvalue {i64, i1} %_38, 1
  br i1 %_39, label %L7, label %L6
L5:
  store i64 1025, i64* %_31
  br label %L2
L6:
  %_40 = extractvalue {i64, i1} %_38, 0
  store i64 %_40, i64* %_2
  %_41 = load i64, i64* %_1
  %_42 = load i64, i64* %_2
  %_43 = icmp eq i64 %_41, %_42
  store i1 %_43, i1* %_0
  %_44 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_44)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_45 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 2)
  %_46 = extractvalue {i64, i1} %_45, 1
  br i1 %_46, label %L9, label %L8
L7:
  store i64 1025, i64* %_31
  br label %L2
L8:
  %_47 = extractvalue {i64, i1} %_45, 0
  store i64 %_47, i64* %_5
  %_48 = load i64, i64* %_5
  %_49 = icmp ne i64 5, %_48
  store i1 %_49, i1* %_4
  %_50 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_51 = icmp slt i64 5, 9
  store i1 %_51, i1* %_8
  %_52 = icmp sgt i64 5, 2
  store i1 %_52, i1* %_9
  %_53 = load i1, i1* %_8
  %_54 = load i1, i1* %_9
  %_55 = icmp eq i1 %_53, %_54
  store i1 %_55, i1* %_7
  %_56 = load i1, i1* %_7
  call void @_B_printBoolean (i1 %_56)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_57 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 3)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L11, label %L10
L9:
  store i64 1281, i64* %_31
  br label %L2
L10:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_12
  %_60 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 2, i64 4)
  %_61 = extractvalue {i64, i1} %_60, 1
  br i1 %_61, label %L13, label %L12
L11:
  store i64 1793, i64* %_31
  br label %L2
L12:
  %_62 = extractvalue {i64, i1} %_60, 0
  store i64 %_62, i64* %_13
  %_63 = load i64, i64* %_12
  %_64 = load i64, i64* %_13
  %_65 = icmp sle i64 %_63, %_64
  store i1 %_65, i1* %_11
  %_66 = load i1, i1* %_11
  call void @_B_printBoolean (i1 %_66)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_67 = icmp sge i64 1, 5
  store i1 %_67, i1* %_17
  %_68 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 2)
  %_69 = extractvalue {i64, i1} %_68, 1
  br i1 %_69, label %L15, label %L14
L13:
  store i64 1793, i64* %_31
  br label %L2
L14:
  %_70 = extractvalue {i64, i1} %_68, 0
  store i64 %_70, i64* %_19
  %_71 = load i64, i64* %_19
  %_72 = icmp sge i64 %_71, 3
  store i1 %_72, i1* %_18
  %_73 = load i1, i1* %_17
  %_74 = load i1, i1* %_18
  %_75 = icmp eq i1 %_73, %_74
  store i1 %_75, i1* %_16
  %_76 = load i1, i1* %_16
  %_77 = icmp ne i1 %_76, 0
  store i1 %_77, i1* %_15
  %_78 = load i1, i1* %_15
  call void @_B_printBoolean (i1 %_78)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_79 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 7, i64 1)
  %_80 = extractvalue {i64, i1} %_79, 1
  br i1 %_80, label %L17, label %L16
L15:
  store i64 2049, i64* %_31
  br label %L2
L16:
  %_81 = extractvalue {i64, i1} %_79, 0
  store i64 %_81, i64* %_23
  %_82 = load i64, i64* %_23
  %_83 = icmp eq i64 %_82, 8
  store i1 %_83, i1* %_22
  %_84 = load i1, i1* %_22
  %_85 = icmp ne i1 %_84, 0
  store i1 %_85, i1* %_21
  %_86 = load i1, i1* %_21
  call void @_B_printBoolean (i1 %_86)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_24
  store i1 0, i1* %_26
  %_87 = load i1, i1* %_26
  %_88 = icmp eq i1 %_87, 0
  store i1 %_88, i1* %_25
  %_89 = load i1, i1* %_25
  call void @_B_printBoolean (i1 %_89)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_27
  store i1 0, i1* %_29
  %_90 = load i1, i1* %_29
  %_91 = icmp eq i1 0, %_90
  store i1 %_91, i1* %_28
  %_92 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_92)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_30
  ret void
L17:
  store i64 2305, i64* %_31
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
  %_7 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_8 = bitcast i8 addrspace (1)* %_7 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_8, align 8
  %_9 = getelementptr i8, i8 addrspace (1)* %_7, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_9)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L3:
  %_10 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_11 = bitcast i8 addrspace (1)* %_10 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_11, align 8
  %_12 = getelementptr i8, i8 addrspace (1)* %_10, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_12)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 3844)
  unreachable
}
