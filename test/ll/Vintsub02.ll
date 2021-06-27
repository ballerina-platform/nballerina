@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_50 = alloca i8
  %_51 = load i8*, i8** @_bal_stack_guard
  %_52 = icmp ult i8* %_50, %_51
  br i1 %_52, label %L2, label %L1
L1:
  %_53 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_53, i64* %_0
  %_54 = load i64, i64* %_0
  %_55 = call i8* @_bal_alloc (i64 8)
  %_56 = bitcast i8* %_55 to i64*
  store i64 %_54, i64* %_56, align 8
  %_57 = getelementptr i8, i8* %_55, i64 144115188075855872
  call void @_Bio__println (i8* %_57)
  store i8* null, i8** %_1
  %_58 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_58, i64* %_2
  %_59 = load i64, i64* %_2
  %_60 = call i8* @_bal_alloc (i64 8)
  %_61 = bitcast i8* %_60 to i64*
  store i64 %_59, i64* %_61, align 8
  %_62 = getelementptr i8, i8* %_60, i64 144115188075855872
  call void @_Bio__println (i8* %_62)
  store i8* null, i8** %_3
  %_63 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_63, i64* %_4
  %_64 = load i64, i64* %_4
  %_65 = call i8* @_bal_alloc (i64 8)
  %_66 = bitcast i8* %_65 to i64*
  store i64 %_64, i64* %_66, align 8
  %_67 = getelementptr i8, i8* %_65, i64 144115188075855872
  call void @_Bio__println (i8* %_67)
  store i8* null, i8** %_5
  %_68 = call i64 @_B_sub (i64 9223372036854775806, i64 1)
  store i64 %_68, i64* %_6
  %_69 = load i64, i64* %_6
  %_70 = call i8* @_bal_alloc (i64 8)
  %_71 = bitcast i8* %_70 to i64*
  store i64 %_69, i64* %_71, align 8
  %_72 = getelementptr i8, i8* %_70, i64 144115188075855872
  call void @_Bio__println (i8* %_72)
  store i8* null, i8** %_7
  %_73 = call i64 @_B_sub (i64 1, i64 1)
  store i64 %_73, i64* %_8
  %_74 = load i64, i64* %_8
  %_75 = call i8* @_bal_alloc (i64 8)
  %_76 = bitcast i8* %_75 to i64*
  store i64 %_74, i64* %_76, align 8
  %_77 = getelementptr i8, i8* %_75, i64 144115188075855872
  call void @_Bio__println (i8* %_77)
  store i8* null, i8** %_9
  %_78 = call i64 @_B_sub (i64 0, i64 1)
  store i64 %_78, i64* %_10
  %_79 = load i64, i64* %_10
  %_80 = call i8* @_bal_alloc (i64 8)
  %_81 = bitcast i8* %_80 to i64*
  store i64 %_79, i64* %_81, align 8
  %_82 = getelementptr i8, i8* %_80, i64 144115188075855872
  call void @_Bio__println (i8* %_82)
  store i8* null, i8** %_11
  %_83 = call i64 @_B_sub (i64 -1, i64 -1)
  store i64 %_83, i64* %_14
  %_84 = load i64, i64* %_14
  %_85 = call i8* @_bal_alloc (i64 8)
  %_86 = bitcast i8* %_85 to i64*
  store i64 %_84, i64* %_86, align 8
  %_87 = getelementptr i8, i8* %_85, i64 144115188075855872
  call void @_Bio__println (i8* %_87)
  store i8* null, i8** %_15
  %_88 = call i64 @_B_sub (i64 9223372036854775806, i64 0)
  store i64 %_88, i64* %_16
  %_89 = load i64, i64* %_16
  %_90 = call i8* @_bal_alloc (i64 8)
  %_91 = bitcast i8* %_90 to i64*
  store i64 %_89, i64* %_91, align 8
  %_92 = getelementptr i8, i8* %_90, i64 144115188075855872
  call void @_Bio__println (i8* %_92)
  store i8* null, i8** %_17
  %_93 = call i64 @_B_sub (i64 1, i64 0)
  store i64 %_93, i64* %_18
  %_94 = load i64, i64* %_18
  %_95 = call i8* @_bal_alloc (i64 8)
  %_96 = bitcast i8* %_95 to i64*
  store i64 %_94, i64* %_96, align 8
  %_97 = getelementptr i8, i8* %_95, i64 144115188075855872
  call void @_Bio__println (i8* %_97)
  store i8* null, i8** %_19
  %_98 = call i64 @_B_sub (i64 0, i64 0)
  store i64 %_98, i64* %_20
  %_99 = load i64, i64* %_20
  %_100 = call i8* @_bal_alloc (i64 8)
  %_101 = bitcast i8* %_100 to i64*
  store i64 %_99, i64* %_101, align 8
  %_102 = getelementptr i8, i8* %_100, i64 144115188075855872
  call void @_Bio__println (i8* %_102)
  store i8* null, i8** %_21
  %_103 = call i64 @_B_sub (i64 -1, i64 0)
  store i64 %_103, i64* %_24
  %_104 = load i64, i64* %_24
  %_105 = call i8* @_bal_alloc (i64 8)
  %_106 = bitcast i8* %_105 to i64*
  store i64 %_104, i64* %_106, align 8
  %_107 = getelementptr i8, i8* %_105, i64 144115188075855872
  call void @_Bio__println (i8* %_107)
  store i8* null, i8** %_25
  %_108 = call i64 @_B_sub (i64 -9223372036854775806, i64 0)
  store i64 %_108, i64* %_28
  %_109 = load i64, i64* %_28
  %_110 = call i8* @_bal_alloc (i64 8)
  %_111 = bitcast i8* %_110 to i64*
  store i64 %_109, i64* %_111, align 8
  %_112 = getelementptr i8, i8* %_110, i64 144115188075855872
  call void @_Bio__println (i8* %_112)
  store i8* null, i8** %_29
  %_113 = call i64 @_B_sub (i64 9223372036854775806, i64 -1)
  store i64 %_113, i64* %_31
  %_114 = load i64, i64* %_31
  %_115 = call i8* @_bal_alloc (i64 8)
  %_116 = bitcast i8* %_115 to i64*
  store i64 %_114, i64* %_116, align 8
  %_117 = getelementptr i8, i8* %_115, i64 144115188075855872
  call void @_Bio__println (i8* %_117)
  store i8* null, i8** %_32
  %_118 = call i64 @_B_sub (i64 1, i64 -1)
  store i64 %_118, i64* %_34
  %_119 = load i64, i64* %_34
  %_120 = call i8* @_bal_alloc (i64 8)
  %_121 = bitcast i8* %_120 to i64*
  store i64 %_119, i64* %_121, align 8
  %_122 = getelementptr i8, i8* %_120, i64 144115188075855872
  call void @_Bio__println (i8* %_122)
  store i8* null, i8** %_35
  %_123 = call i64 @_B_sub (i64 0, i64 -1)
  store i64 %_123, i64* %_37
  %_124 = load i64, i64* %_37
  %_125 = call i8* @_bal_alloc (i64 8)
  %_126 = bitcast i8* %_125 to i64*
  store i64 %_124, i64* %_126, align 8
  %_127 = getelementptr i8, i8* %_125, i64 144115188075855872
  call void @_Bio__println (i8* %_127)
  store i8* null, i8** %_38
  %_128 = call i64 @_B_sub (i64 -1, i64 1)
  store i64 %_128, i64* %_42
  %_129 = load i64, i64* %_42
  %_130 = call i8* @_bal_alloc (i64 8)
  %_131 = bitcast i8* %_130 to i64*
  store i64 %_129, i64* %_131, align 8
  %_132 = getelementptr i8, i8* %_130, i64 144115188075855872
  call void @_Bio__println (i8* %_132)
  store i8* null, i8** %_43
  %_133 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_133, i64* %_44
  %_134 = load i64, i64* %_44
  %_135 = call i8* @_bal_alloc (i64 8)
  %_136 = bitcast i8* %_135 to i64*
  store i64 %_134, i64* %_136, align 8
  %_137 = getelementptr i8, i8* %_135, i64 144115188075855872
  call void @_Bio__println (i8* %_137)
  store i8* null, i8** %_45
  %_138 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_138, i64* %_46
  %_139 = load i64, i64* %_46
  %_140 = call i8* @_bal_alloc (i64 8)
  %_141 = bitcast i8* %_140 to i64*
  store i64 %_139, i64* %_141, align 8
  %_142 = getelementptr i8, i8* %_140, i64 144115188075855872
  call void @_Bio__println (i8* %_142)
  store i8* null, i8** %_47
  %_143 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_143, i64* %_48
  %_144 = load i64, i64* %_48
  %_145 = call i8* @_bal_alloc (i64 8)
  %_146 = bitcast i8* %_145 to i64*
  store i64 %_144, i64* %_146, align 8
  %_147 = getelementptr i8, i8* %_145, i64 144115188075855872
  call void @_Bio__println (i8* %_147)
  store i8* null, i8** %_49
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_sub (i64 %_0, i64 %_1) {
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
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 7428)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 7681, i64* %_3
  br label %L2
}
