@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i8*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8*
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i64
  %_40 = alloca i8*
  %_41 = alloca i8
  %_42 = load i8*, i8** @_bal_stack_guard
  %_43 = icmp ult i8* %_41, %_42
  br i1 %_43, label %L2, label %L1
L1:
  %_44 = call i64 @_B_mul (i64 9223372036854775806, i64 1)
  store i64 %_44, i64* %_0
  %_45 = load i64, i64* %_0
  %_46 = call i8* @_bal_alloc (i64 8)
  %_47 = bitcast i8* %_46 to i64*
  store i64 %_45, i64* %_47, align 8
  %_48 = getelementptr i8, i8* %_46, i64 144115188075855872
  call void @_Bio__println (i8* %_48)
  store i8* null, i8** %_1
  %_49 = call i64 @_B_mul (i64 9223372036854775806, i64 0)
  store i64 %_49, i64* %_2
  %_50 = load i64, i64* %_2
  %_51 = call i8* @_bal_alloc (i64 8)
  %_52 = bitcast i8* %_51 to i64*
  store i64 %_50, i64* %_52, align 8
  %_53 = getelementptr i8, i8* %_51, i64 144115188075855872
  call void @_Bio__println (i8* %_53)
  store i8* null, i8** %_3
  %_54 = call i64 @_B_mul (i64 9223372036854775806, i64 -1)
  store i64 %_54, i64* %_5
  %_55 = load i64, i64* %_5
  %_56 = call i8* @_bal_alloc (i64 8)
  %_57 = bitcast i8* %_56 to i64*
  store i64 %_55, i64* %_57, align 8
  %_58 = getelementptr i8, i8* %_56, i64 144115188075855872
  call void @_Bio__println (i8* %_58)
  store i8* null, i8** %_6
  %_59 = call i64 @_B_mul (i64 1, i64 1)
  store i64 %_59, i64* %_7
  %_60 = load i64, i64* %_7
  %_61 = call i8* @_bal_alloc (i64 8)
  %_62 = bitcast i8* %_61 to i64*
  store i64 %_60, i64* %_62, align 8
  %_63 = getelementptr i8, i8* %_61, i64 144115188075855872
  call void @_Bio__println (i8* %_63)
  store i8* null, i8** %_8
  %_64 = call i64 @_B_mul (i64 1, i64 0)
  store i64 %_64, i64* %_9
  %_65 = load i64, i64* %_9
  %_66 = call i8* @_bal_alloc (i64 8)
  %_67 = bitcast i8* %_66 to i64*
  store i64 %_65, i64* %_67, align 8
  %_68 = getelementptr i8, i8* %_66, i64 144115188075855872
  call void @_Bio__println (i8* %_68)
  store i8* null, i8** %_10
  %_69 = call i64 @_B_mul (i64 1, i64 -1)
  store i64 %_69, i64* %_12
  %_70 = load i64, i64* %_12
  %_71 = call i8* @_bal_alloc (i64 8)
  %_72 = bitcast i8* %_71 to i64*
  store i64 %_70, i64* %_72, align 8
  %_73 = getelementptr i8, i8* %_71, i64 144115188075855872
  call void @_Bio__println (i8* %_73)
  store i8* null, i8** %_13
  %_74 = call i64 @_B_mul (i64 0, i64 1)
  store i64 %_74, i64* %_14
  %_75 = load i64, i64* %_14
  %_76 = call i8* @_bal_alloc (i64 8)
  %_77 = bitcast i8* %_76 to i64*
  store i64 %_75, i64* %_77, align 8
  %_78 = getelementptr i8, i8* %_76, i64 144115188075855872
  call void @_Bio__println (i8* %_78)
  store i8* null, i8** %_15
  %_79 = call i64 @_B_mul (i64 0, i64 0)
  store i64 %_79, i64* %_16
  %_80 = load i64, i64* %_16
  %_81 = call i8* @_bal_alloc (i64 8)
  %_82 = bitcast i8* %_81 to i64*
  store i64 %_80, i64* %_82, align 8
  %_83 = getelementptr i8, i8* %_81, i64 144115188075855872
  call void @_Bio__println (i8* %_83)
  store i8* null, i8** %_17
  %_84 = call i64 @_B_mul (i64 0, i64 -1)
  store i64 %_84, i64* %_19
  %_85 = load i64, i64* %_19
  %_86 = call i8* @_bal_alloc (i64 8)
  %_87 = bitcast i8* %_86 to i64*
  store i64 %_85, i64* %_87, align 8
  %_88 = getelementptr i8, i8* %_86, i64 144115188075855872
  call void @_Bio__println (i8* %_88)
  store i8* null, i8** %_20
  %_89 = call i64 @_B_mul (i64 -1, i64 1)
  store i64 %_89, i64* %_22
  %_90 = load i64, i64* %_22
  %_91 = call i8* @_bal_alloc (i64 8)
  %_92 = bitcast i8* %_91 to i64*
  store i64 %_90, i64* %_92, align 8
  %_93 = getelementptr i8, i8* %_91, i64 144115188075855872
  call void @_Bio__println (i8* %_93)
  store i8* null, i8** %_23
  %_94 = call i64 @_B_mul (i64 -1, i64 0)
  store i64 %_94, i64* %_25
  %_95 = load i64, i64* %_25
  %_96 = call i8* @_bal_alloc (i64 8)
  %_97 = bitcast i8* %_96 to i64*
  store i64 %_95, i64* %_97, align 8
  %_98 = getelementptr i8, i8* %_96, i64 144115188075855872
  call void @_Bio__println (i8* %_98)
  store i8* null, i8** %_26
  %_99 = call i64 @_B_mul (i64 -1, i64 -1)
  store i64 %_99, i64* %_29
  %_100 = load i64, i64* %_29
  %_101 = call i8* @_bal_alloc (i64 8)
  %_102 = bitcast i8* %_101 to i64*
  store i64 %_100, i64* %_102, align 8
  %_103 = getelementptr i8, i8* %_101, i64 144115188075855872
  call void @_Bio__println (i8* %_103)
  store i8* null, i8** %_30
  %_104 = call i64 @_B_mul (i64 -9223372036854775806, i64 1)
  store i64 %_104, i64* %_32
  %_105 = load i64, i64* %_32
  %_106 = call i8* @_bal_alloc (i64 8)
  %_107 = bitcast i8* %_106 to i64*
  store i64 %_105, i64* %_107, align 8
  %_108 = getelementptr i8, i8* %_106, i64 144115188075855872
  call void @_Bio__println (i8* %_108)
  store i8* null, i8** %_33
  %_109 = call i64 @_B_mul (i64 -9223372036854775806, i64 0)
  store i64 %_109, i64* %_35
  %_110 = load i64, i64* %_35
  %_111 = call i8* @_bal_alloc (i64 8)
  %_112 = bitcast i8* %_111 to i64*
  store i64 %_110, i64* %_112, align 8
  %_113 = getelementptr i8, i8* %_111, i64 144115188075855872
  call void @_Bio__println (i8* %_113)
  store i8* null, i8** %_36
  %_114 = call i64 @_B_mul (i64 -9223372036854775806, i64 -1)
  store i64 %_114, i64* %_39
  %_115 = load i64, i64* %_39
  %_116 = call i8* @_bal_alloc (i64 8)
  %_117 = bitcast i8* %_116 to i64*
  store i64 %_115, i64* %_117, align 8
  %_118 = getelementptr i8, i8* %_116, i64 144115188075855872
  call void @_Bio__println (i8* %_118)
  store i8* null, i8** %_40
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_mul (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_7 = load i64, i64* %a
  %_8 = load i64, i64* %b
  %_9 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 6404)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 6657, i64* %_3
  br label %L2
}
