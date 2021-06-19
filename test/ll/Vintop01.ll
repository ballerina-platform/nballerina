declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_bal_panic (i64)
declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i1, align 8
  %_11 = alloca i1, align 8
  %_12 = alloca i64, align 8
  %_13 = alloca i64, align 8
  %_14 = alloca i1, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i1, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i1, align 8
  %_19 = alloca i64, align 8
  %_20 = alloca i1, align 8
  %_21 = alloca i1, align 8
  %_22 = alloca i1, align 8
  %_23 = alloca i64, align 8
  %_24 = alloca i1, align 8
  %_25 = alloca i1, align 8
  %_26 = alloca i1, align 8
  %_27 = alloca i1, align 8
  %_28 = alloca i1, align 8
  %_29 = alloca i1, align 8
  %_30 = alloca i1, align 8
  %_31 = alloca i64, align 8
  %_32 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 12, i64 6)
  %_33 = extractvalue {i64, i1} %_32, 1
  br i1 %_33, label %L3, label %L2
L1:
  %_88 = load i64, i64* %_31, align 8
  call void @_bal_panic (i64 %_88)
  unreachable
L2:
  %_34 = extractvalue {i64, i1} %_32, 0
  store i64 %_34, i64* %_1, align 8
  %_35 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 15)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L5, label %L4
L3:
  store i64 1, i64* %_31, align 8
  br label %L1
L4:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_2, align 8
  %_38 = load i64, i64* %_1, align 8
  %_39 = load i64, i64* %_2, align 8
  %_40 = icmp eq i64 %_38, %_39
  store i1 %_40, i1* %_0, align 8
  %_41 = load i1, i1* %_0, align 8
  call void @_B_printBoolean (i1 %_41)
  store i1 0, i1* %_3, align 8
  %_42 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 2)
  %_43 = extractvalue {i64, i1} %_42, 1
  br i1 %_43, label %L7, label %L6
L5:
  store i64 1, i64* %_31, align 8
  br label %L1
L6:
  %_44 = extractvalue {i64, i1} %_42, 0
  store i64 %_44, i64* %_5, align 8
  %_45 = load i64, i64* %_5, align 8
  %_46 = icmp ne i64 5, %_45
  store i1 %_46, i1* %_4, align 8
  %_47 = load i1, i1* %_4, align 8
  call void @_B_printBoolean (i1 %_47)
  store i1 0, i1* %_6, align 8
  %_48 = icmp slt i64 5, 9
  store i1 %_48, i1* %_8, align 8
  %_49 = icmp sgt i64 5, 2
  store i1 %_49, i1* %_9, align 8
  %_50 = load i1, i1* %_8, align 8
  %_51 = load i1, i1* %_9, align 8
  %_52 = icmp eq i1 %_50, %_51
  store i1 %_52, i1* %_7, align 8
  %_53 = load i1, i1* %_7, align 8
  call void @_B_printBoolean (i1 %_53)
  store i1 0, i1* %_10, align 8
  %_54 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 3)
  %_55 = extractvalue {i64, i1} %_54, 1
  br i1 %_55, label %L9, label %L8
L7:
  store i64 1, i64* %_31, align 8
  br label %L1
L8:
  %_56 = extractvalue {i64, i1} %_54, 0
  store i64 %_56, i64* %_12, align 8
  %_57 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 2, i64 4)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L11, label %L10
L9:
  store i64 1, i64* %_31, align 8
  br label %L1
L10:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_13, align 8
  %_60 = load i64, i64* %_12, align 8
  %_61 = load i64, i64* %_13, align 8
  %_62 = icmp sle i64 %_60, %_61
  store i1 %_62, i1* %_11, align 8
  %_63 = load i1, i1* %_11, align 8
  call void @_B_printBoolean (i1 %_63)
  store i1 0, i1* %_14, align 8
  %_64 = icmp sge i64 1, 5
  store i1 %_64, i1* %_17, align 8
  %_65 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 1, i64 2)
  %_66 = extractvalue {i64, i1} %_65, 1
  br i1 %_66, label %L13, label %L12
L11:
  store i64 1, i64* %_31, align 8
  br label %L1
L12:
  %_67 = extractvalue {i64, i1} %_65, 0
  store i64 %_67, i64* %_19, align 8
  %_68 = load i64, i64* %_19, align 8
  %_69 = icmp sge i64 %_68, 3
  store i1 %_69, i1* %_18, align 8
  %_70 = load i1, i1* %_17, align 8
  %_71 = load i1, i1* %_18, align 8
  %_72 = icmp eq i1 %_70, %_71
  store i1 %_72, i1* %_16, align 8
  %_73 = load i1, i1* %_16, align 8
  %_74 = icmp ne i1 %_73, 0
  store i1 %_74, i1* %_15, align 8
  %_75 = load i1, i1* %_15, align 8
  call void @_B_printBoolean (i1 %_75)
  store i1 0, i1* %_20, align 8
  %_76 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 7, i64 1)
  %_77 = extractvalue {i64, i1} %_76, 1
  br i1 %_77, label %L15, label %L14
L13:
  store i64 1, i64* %_31, align 8
  br label %L1
L14:
  %_78 = extractvalue {i64, i1} %_76, 0
  store i64 %_78, i64* %_23, align 8
  %_79 = load i64, i64* %_23, align 8
  %_80 = icmp eq i64 %_79, 8
  store i1 %_80, i1* %_22, align 8
  %_81 = load i1, i1* %_22, align 8
  %_82 = icmp ne i1 %_81, 0
  store i1 %_82, i1* %_21, align 8
  %_83 = load i1, i1* %_21, align 8
  call void @_B_printBoolean (i1 %_83)
  store i1 0, i1* %_24, align 8
  %_84 = icmp eq i1 0, 0
  store i1 %_84, i1* %_25, align 8
  %_85 = load i1, i1* %_25, align 8
  call void @_B_printBoolean (i1 %_85)
  store i1 0, i1* %_27, align 8
  %_86 = icmp eq i1 0, 0
  store i1 %_86, i1* %_28, align 8
  %_87 = load i1, i1* %_28, align 8
  call void @_B_printBoolean (i1 %_87)
  store i1 0, i1* %_30, align 8
  ret void
L15:
  store i64 1, i64* %_31, align 8
  br label %L1
}
define internal void @_B_printBoolean (i1 %_0) {
  %x = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  store i1 %_0, i1* %x, align 8
  %_3 = load i1, i1* %x, align 8
  br i1 %_3, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_2, align 8
  br label %L3
L3:
  ret void
}
