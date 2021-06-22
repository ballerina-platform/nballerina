declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
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
  %_41 = call i64 @_B_mul (i64 9223372036854775806, i64 1)
  store i64 %_41, i64* %_0
  %_42 = load i64, i64* %_0
  %_43 = call i8* @_bal_alloc (i64 8)
  %_44 = bitcast i8* %_43 to i64*
  store i64 %_42, i64* %_44, align 8
  %_45 = getelementptr i8, i8* %_43, i64 144115188075855872
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_1
  %_46 = call i64 @_B_mul (i64 9223372036854775806, i64 0)
  store i64 %_46, i64* %_2
  %_47 = load i64, i64* %_2
  %_48 = call i8* @_bal_alloc (i64 8)
  %_49 = bitcast i8* %_48 to i64*
  store i64 %_47, i64* %_49, align 8
  %_50 = getelementptr i8, i8* %_48, i64 144115188075855872
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_3
  %_51 = call i64 @_B_mul (i64 9223372036854775806, i64 -1)
  store i64 %_51, i64* %_5
  %_52 = load i64, i64* %_5
  %_53 = call i8* @_bal_alloc (i64 8)
  %_54 = bitcast i8* %_53 to i64*
  store i64 %_52, i64* %_54, align 8
  %_55 = getelementptr i8, i8* %_53, i64 144115188075855872
  call void @_Bio__println (i8* %_55)
  store i8* null, i8** %_6
  %_56 = call i64 @_B_mul (i64 1, i64 1)
  store i64 %_56, i64* %_7
  %_57 = load i64, i64* %_7
  %_58 = call i8* @_bal_alloc (i64 8)
  %_59 = bitcast i8* %_58 to i64*
  store i64 %_57, i64* %_59, align 8
  %_60 = getelementptr i8, i8* %_58, i64 144115188075855872
  call void @_Bio__println (i8* %_60)
  store i8* null, i8** %_8
  %_61 = call i64 @_B_mul (i64 1, i64 0)
  store i64 %_61, i64* %_9
  %_62 = load i64, i64* %_9
  %_63 = call i8* @_bal_alloc (i64 8)
  %_64 = bitcast i8* %_63 to i64*
  store i64 %_62, i64* %_64, align 8
  %_65 = getelementptr i8, i8* %_63, i64 144115188075855872
  call void @_Bio__println (i8* %_65)
  store i8* null, i8** %_10
  %_66 = call i64 @_B_mul (i64 1, i64 -1)
  store i64 %_66, i64* %_12
  %_67 = load i64, i64* %_12
  %_68 = call i8* @_bal_alloc (i64 8)
  %_69 = bitcast i8* %_68 to i64*
  store i64 %_67, i64* %_69, align 8
  %_70 = getelementptr i8, i8* %_68, i64 144115188075855872
  call void @_Bio__println (i8* %_70)
  store i8* null, i8** %_13
  %_71 = call i64 @_B_mul (i64 0, i64 1)
  store i64 %_71, i64* %_14
  %_72 = load i64, i64* %_14
  %_73 = call i8* @_bal_alloc (i64 8)
  %_74 = bitcast i8* %_73 to i64*
  store i64 %_72, i64* %_74, align 8
  %_75 = getelementptr i8, i8* %_73, i64 144115188075855872
  call void @_Bio__println (i8* %_75)
  store i8* null, i8** %_15
  %_76 = call i64 @_B_mul (i64 0, i64 0)
  store i64 %_76, i64* %_16
  %_77 = load i64, i64* %_16
  %_78 = call i8* @_bal_alloc (i64 8)
  %_79 = bitcast i8* %_78 to i64*
  store i64 %_77, i64* %_79, align 8
  %_80 = getelementptr i8, i8* %_78, i64 144115188075855872
  call void @_Bio__println (i8* %_80)
  store i8* null, i8** %_17
  %_81 = call i64 @_B_mul (i64 0, i64 -1)
  store i64 %_81, i64* %_19
  %_82 = load i64, i64* %_19
  %_83 = call i8* @_bal_alloc (i64 8)
  %_84 = bitcast i8* %_83 to i64*
  store i64 %_82, i64* %_84, align 8
  %_85 = getelementptr i8, i8* %_83, i64 144115188075855872
  call void @_Bio__println (i8* %_85)
  store i8* null, i8** %_20
  %_86 = call i64 @_B_mul (i64 -1, i64 1)
  store i64 %_86, i64* %_22
  %_87 = load i64, i64* %_22
  %_88 = call i8* @_bal_alloc (i64 8)
  %_89 = bitcast i8* %_88 to i64*
  store i64 %_87, i64* %_89, align 8
  %_90 = getelementptr i8, i8* %_88, i64 144115188075855872
  call void @_Bio__println (i8* %_90)
  store i8* null, i8** %_23
  %_91 = call i64 @_B_mul (i64 -1, i64 0)
  store i64 %_91, i64* %_25
  %_92 = load i64, i64* %_25
  %_93 = call i8* @_bal_alloc (i64 8)
  %_94 = bitcast i8* %_93 to i64*
  store i64 %_92, i64* %_94, align 8
  %_95 = getelementptr i8, i8* %_93, i64 144115188075855872
  call void @_Bio__println (i8* %_95)
  store i8* null, i8** %_26
  %_96 = call i64 @_B_mul (i64 -1, i64 -1)
  store i64 %_96, i64* %_29
  %_97 = load i64, i64* %_29
  %_98 = call i8* @_bal_alloc (i64 8)
  %_99 = bitcast i8* %_98 to i64*
  store i64 %_97, i64* %_99, align 8
  %_100 = getelementptr i8, i8* %_98, i64 144115188075855872
  call void @_Bio__println (i8* %_100)
  store i8* null, i8** %_30
  %_101 = call i64 @_B_mul (i64 -9223372036854775806, i64 1)
  store i64 %_101, i64* %_32
  %_102 = load i64, i64* %_32
  %_103 = call i8* @_bal_alloc (i64 8)
  %_104 = bitcast i8* %_103 to i64*
  store i64 %_102, i64* %_104, align 8
  %_105 = getelementptr i8, i8* %_103, i64 144115188075855872
  call void @_Bio__println (i8* %_105)
  store i8* null, i8** %_33
  %_106 = call i64 @_B_mul (i64 -9223372036854775806, i64 0)
  store i64 %_106, i64* %_35
  %_107 = load i64, i64* %_35
  %_108 = call i8* @_bal_alloc (i64 8)
  %_109 = bitcast i8* %_108 to i64*
  store i64 %_107, i64* %_109, align 8
  %_110 = getelementptr i8, i8* %_108, i64 144115188075855872
  call void @_Bio__println (i8* %_110)
  store i8* null, i8** %_36
  %_111 = call i64 @_B_mul (i64 -9223372036854775806, i64 -1)
  store i64 %_111, i64* %_39
  %_112 = load i64, i64* %_39
  %_113 = call i8* @_bal_alloc (i64 8)
  %_114 = bitcast i8* %_113 to i64*
  store i64 %_112, i64* %_114, align 8
  %_115 = getelementptr i8, i8* %_113, i64 144115188075855872
  call void @_Bio__println (i8* %_115)
  store i8* null, i8** %_40
  ret void
}
define internal i64 @_B_mul (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_4 = load i64, i64* %a
  %_5 = load i64, i64* %b
  %_6 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_4, i64 %_5)
  %_7 = extractvalue {i64, i1} %_6, 1
  br i1 %_7, label %L3, label %L2
L1:
  %_10 = load i64, i64* %_3
  call void @_bal_panic (i64 %_10)
  unreachable
L2:
  %_8 = extractvalue {i64, i1} %_6, 0
  store i64 %_8, i64* %_2
  %_9 = load i64, i64* %_2
  ret i64 %_9
L3:
  store i64 1, i64* %_3
  br label %L1
}
