declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i8*
  %_20 = alloca i64
  %_21 = alloca i8*
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i8*
  %_26 = alloca i64
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i8*
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i8*
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i8*
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i8*
  %_39 = alloca i64
  %_40 = alloca i64
  %_41 = alloca i64
  %_42 = alloca i64
  %_43 = alloca i8*
  %_44 = alloca i64
  %_45 = alloca i8*
  %_46 = alloca i64
  %_47 = alloca i8*
  %_48 = alloca i64
  %_49 = alloca i8*
  %_50 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_50, i64* %_0
  %_51 = load i64, i64* %_0
  %_52 = call i8* @_bal_alloc (i64 8)
  %_53 = bitcast i8* %_52 to i64*
  store i64 %_51, i64* %_53, align 8
  %_54 = getelementptr i8, i8* %_52, i64 144115188075855872
  call void @_Bio__println (i8* %_54)
  store i8* null, i8** %_1
  %_55 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_55, i64* %_2
  %_56 = load i64, i64* %_2
  %_57 = call i8* @_bal_alloc (i64 8)
  %_58 = bitcast i8* %_57 to i64*
  store i64 %_56, i64* %_58, align 8
  %_59 = getelementptr i8, i8* %_57, i64 144115188075855872
  call void @_Bio__println (i8* %_59)
  store i8* null, i8** %_3
  %_60 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_60, i64* %_4
  %_61 = load i64, i64* %_4
  %_62 = call i8* @_bal_alloc (i64 8)
  %_63 = bitcast i8* %_62 to i64*
  store i64 %_61, i64* %_63, align 8
  %_64 = getelementptr i8, i8* %_62, i64 144115188075855872
  call void @_Bio__println (i8* %_64)
  store i8* null, i8** %_5
  %_65 = call i64 @_B_sub (i64 9223372036854775806, i64 1)
  store i64 %_65, i64* %_6
  %_66 = load i64, i64* %_6
  %_67 = call i8* @_bal_alloc (i64 8)
  %_68 = bitcast i8* %_67 to i64*
  store i64 %_66, i64* %_68, align 8
  %_69 = getelementptr i8, i8* %_67, i64 144115188075855872
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_7
  %_70 = call i64 @_B_sub (i64 1, i64 1)
  store i64 %_70, i64* %_8
  %_71 = load i64, i64* %_8
  %_72 = call i8* @_bal_alloc (i64 8)
  %_73 = bitcast i8* %_72 to i64*
  store i64 %_71, i64* %_73, align 8
  %_74 = getelementptr i8, i8* %_72, i64 144115188075855872
  call void @_Bio__println (i8* %_74)
  store i8* null, i8** %_9
  %_75 = call i64 @_B_sub (i64 0, i64 1)
  store i64 %_75, i64* %_10
  %_76 = load i64, i64* %_10
  %_77 = call i8* @_bal_alloc (i64 8)
  %_78 = bitcast i8* %_77 to i64*
  store i64 %_76, i64* %_78, align 8
  %_79 = getelementptr i8, i8* %_77, i64 144115188075855872
  call void @_Bio__println (i8* %_79)
  store i8* null, i8** %_11
  %_80 = call i64 @_B_sub (i64 -1, i64 -1)
  store i64 %_80, i64* %_14
  %_81 = load i64, i64* %_14
  %_82 = call i8* @_bal_alloc (i64 8)
  %_83 = bitcast i8* %_82 to i64*
  store i64 %_81, i64* %_83, align 8
  %_84 = getelementptr i8, i8* %_82, i64 144115188075855872
  call void @_Bio__println (i8* %_84)
  store i8* null, i8** %_15
  %_85 = call i64 @_B_sub (i64 9223372036854775806, i64 0)
  store i64 %_85, i64* %_16
  %_86 = load i64, i64* %_16
  %_87 = call i8* @_bal_alloc (i64 8)
  %_88 = bitcast i8* %_87 to i64*
  store i64 %_86, i64* %_88, align 8
  %_89 = getelementptr i8, i8* %_87, i64 144115188075855872
  call void @_Bio__println (i8* %_89)
  store i8* null, i8** %_17
  %_90 = call i64 @_B_sub (i64 1, i64 0)
  store i64 %_90, i64* %_18
  %_91 = load i64, i64* %_18
  %_92 = call i8* @_bal_alloc (i64 8)
  %_93 = bitcast i8* %_92 to i64*
  store i64 %_91, i64* %_93, align 8
  %_94 = getelementptr i8, i8* %_92, i64 144115188075855872
  call void @_Bio__println (i8* %_94)
  store i8* null, i8** %_19
  %_95 = call i64 @_B_sub (i64 0, i64 0)
  store i64 %_95, i64* %_20
  %_96 = load i64, i64* %_20
  %_97 = call i8* @_bal_alloc (i64 8)
  %_98 = bitcast i8* %_97 to i64*
  store i64 %_96, i64* %_98, align 8
  %_99 = getelementptr i8, i8* %_97, i64 144115188075855872
  call void @_Bio__println (i8* %_99)
  store i8* null, i8** %_21
  %_100 = call i64 @_B_sub (i64 -1, i64 0)
  store i64 %_100, i64* %_24
  %_101 = load i64, i64* %_24
  %_102 = call i8* @_bal_alloc (i64 8)
  %_103 = bitcast i8* %_102 to i64*
  store i64 %_101, i64* %_103, align 8
  %_104 = getelementptr i8, i8* %_102, i64 144115188075855872
  call void @_Bio__println (i8* %_104)
  store i8* null, i8** %_25
  %_105 = call i64 @_B_sub (i64 -9223372036854775806, i64 0)
  store i64 %_105, i64* %_28
  %_106 = load i64, i64* %_28
  %_107 = call i8* @_bal_alloc (i64 8)
  %_108 = bitcast i8* %_107 to i64*
  store i64 %_106, i64* %_108, align 8
  %_109 = getelementptr i8, i8* %_107, i64 144115188075855872
  call void @_Bio__println (i8* %_109)
  store i8* null, i8** %_29
  %_110 = call i64 @_B_sub (i64 9223372036854775806, i64 -1)
  store i64 %_110, i64* %_31
  %_111 = load i64, i64* %_31
  %_112 = call i8* @_bal_alloc (i64 8)
  %_113 = bitcast i8* %_112 to i64*
  store i64 %_111, i64* %_113, align 8
  %_114 = getelementptr i8, i8* %_112, i64 144115188075855872
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_32
  %_115 = call i64 @_B_sub (i64 1, i64 -1)
  store i64 %_115, i64* %_34
  %_116 = load i64, i64* %_34
  %_117 = call i8* @_bal_alloc (i64 8)
  %_118 = bitcast i8* %_117 to i64*
  store i64 %_116, i64* %_118, align 8
  %_119 = getelementptr i8, i8* %_117, i64 144115188075855872
  call void @_Bio__println (i8* %_119)
  store i8* null, i8** %_35
  %_120 = call i64 @_B_sub (i64 0, i64 -1)
  store i64 %_120, i64* %_37
  %_121 = load i64, i64* %_37
  %_122 = call i8* @_bal_alloc (i64 8)
  %_123 = bitcast i8* %_122 to i64*
  store i64 %_121, i64* %_123, align 8
  %_124 = getelementptr i8, i8* %_122, i64 144115188075855872
  call void @_Bio__println (i8* %_124)
  store i8* null, i8** %_38
  %_125 = call i64 @_B_sub (i64 -1, i64 1)
  store i64 %_125, i64* %_42
  %_126 = load i64, i64* %_42
  %_127 = call i8* @_bal_alloc (i64 8)
  %_128 = bitcast i8* %_127 to i64*
  store i64 %_126, i64* %_128, align 8
  %_129 = getelementptr i8, i8* %_127, i64 144115188075855872
  call void @_Bio__println (i8* %_129)
  store i8* null, i8** %_43
  %_130 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_130, i64* %_44
  %_131 = load i64, i64* %_44
  %_132 = call i8* @_bal_alloc (i64 8)
  %_133 = bitcast i8* %_132 to i64*
  store i64 %_131, i64* %_133, align 8
  %_134 = getelementptr i8, i8* %_132, i64 144115188075855872
  call void @_Bio__println (i8* %_134)
  store i8* null, i8** %_45
  %_135 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_135, i64* %_46
  %_136 = load i64, i64* %_46
  %_137 = call i8* @_bal_alloc (i64 8)
  %_138 = bitcast i8* %_137 to i64*
  store i64 %_136, i64* %_138, align 8
  %_139 = getelementptr i8, i8* %_137, i64 144115188075855872
  call void @_Bio__println (i8* %_139)
  store i8* null, i8** %_47
  %_140 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_140, i64* %_48
  %_141 = load i64, i64* %_48
  %_142 = call i8* @_bal_alloc (i64 8)
  %_143 = bitcast i8* %_142 to i64*
  store i64 %_141, i64* %_143, align 8
  %_144 = getelementptr i8, i8* %_142, i64 144115188075855872
  call void @_Bio__println (i8* %_144)
  store i8* null, i8** %_49
  ret void
}
define internal i64 @_B_sub (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_4 = load i64, i64* %a
  %_5 = load i64, i64* %b
  %_6 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_4, i64 %_5)
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
