@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i8*
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i8*
  %_40 = alloca i64
  %_41 = alloca i64
  %_42 = alloca i64
  %_43 = alloca i64
  %_44 = alloca i64
  %_45 = alloca i64
  %_46 = alloca i64
  %_47 = alloca i64
  %_48 = alloca i64
  %_49 = alloca i64
  %_50 = alloca i64
  %_51 = alloca i64
  %_52 = alloca i64
  %_53 = alloca i8*
  %_54 = alloca i64
  %_55 = alloca i64
  %_56 = alloca i64
  %_57 = alloca i64
  %_58 = alloca i64
  %_59 = alloca i64
  %_60 = alloca i64
  %_61 = alloca i64
  %_62 = alloca i64
  %_63 = alloca i64
  %_64 = alloca i64
  %_65 = alloca i64
  %_66 = alloca i64
  %_67 = alloca i64
  %_68 = alloca i64
  %_69 = alloca i8*
  %_70 = alloca i8
  %_71 = load i8*, i8** @_bal_stack_guard
  %_72 = icmp ult i8* %_70, %_71
  br i1 %_72, label %L2, label %L1
L1:
  %_73 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_73, i64* %_2
  %_74 = load i64, i64* %_2
  %_75 = call i8* @_bal_alloc (i64 8)
  %_76 = bitcast i8* %_75 to i64*
  store i64 %_74, i64* %_76, align 8
  %_77 = getelementptr i8, i8* %_75, i64 144115188075855872
  call void @_Bio__println (i8* %_77)
  store i8* null, i8** %_3
  %_78 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_78, i64* %_6
  %_79 = load i64, i64* %_6
  %_80 = call i64 @_B_add (i64 %_79, i64 -11)
  store i64 %_80, i64* %_8
  %_81 = load i64, i64* %_8
  %_82 = call i8* @_bal_alloc (i64 8)
  %_83 = bitcast i8* %_82 to i64*
  store i64 %_81, i64* %_83, align 8
  %_84 = getelementptr i8, i8* %_82, i64 144115188075855872
  call void @_Bio__println (i8* %_84)
  store i8* null, i8** %_9
  %_85 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_85, i64* %_12
  %_86 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_86, i64* %_15
  %_87 = load i64, i64* %_12
  %_88 = load i64, i64* %_15
  %_89 = call i64 @_B_add (i64 %_87, i64 %_88)
  store i64 %_89, i64* %_16
  %_90 = load i64, i64* %_16
  %_91 = call i8* @_bal_alloc (i64 8)
  %_92 = bitcast i8* %_91 to i64*
  store i64 %_90, i64* %_92, align 8
  %_93 = getelementptr i8, i8* %_91, i64 144115188075855872
  call void @_Bio__println (i8* %_93)
  store i8* null, i8** %_17
  %_94 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_94, i64* %_20
  %_95 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_95, i64* %_23
  %_96 = load i64, i64* %_20
  %_97 = load i64, i64* %_23
  %_98 = call i64 @_B_add (i64 %_96, i64 %_97)
  store i64 %_98, i64* %_24
  %_99 = load i64, i64* %_24
  %_100 = call i64 @_B_add (i64 %_99, i64 -12)
  store i64 %_100, i64* %_26
  %_101 = load i64, i64* %_26
  %_102 = call i8* @_bal_alloc (i64 8)
  %_103 = bitcast i8* %_102 to i64*
  store i64 %_101, i64* %_103, align 8
  %_104 = getelementptr i8, i8* %_102, i64 144115188075855872
  call void @_Bio__println (i8* %_104)
  store i8* null, i8** %_27
  %_105 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_105, i64* %_30
  %_106 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_106, i64* %_33
  %_107 = load i64, i64* %_30
  %_108 = load i64, i64* %_33
  %_109 = call i64 @_B_add (i64 %_107, i64 %_108)
  store i64 %_109, i64* %_34
  %_110 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_110, i64* %_37
  %_111 = load i64, i64* %_34
  %_112 = load i64, i64* %_37
  %_113 = call i64 @_B_add (i64 %_111, i64 %_112)
  store i64 %_113, i64* %_38
  %_114 = load i64, i64* %_38
  %_115 = call i8* @_bal_alloc (i64 8)
  %_116 = bitcast i8* %_115 to i64*
  store i64 %_114, i64* %_116, align 8
  %_117 = getelementptr i8, i8* %_115, i64 144115188075855872
  call void @_Bio__println (i8* %_117)
  store i8* null, i8** %_39
  %_118 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_118, i64* %_42
  %_119 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_119, i64* %_45
  %_120 = load i64, i64* %_42
  %_121 = load i64, i64* %_45
  %_122 = call i64 @_B_add (i64 %_120, i64 %_121)
  store i64 %_122, i64* %_46
  %_123 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_123, i64* %_49
  %_124 = load i64, i64* %_49
  %_125 = call i64 @_B_add (i64 %_124, i64 -5)
  store i64 %_125, i64* %_51
  %_126 = load i64, i64* %_46
  %_127 = load i64, i64* %_51
  %_128 = call i64 @_B_add (i64 %_126, i64 %_127)
  store i64 %_128, i64* %_52
  %_129 = load i64, i64* %_52
  %_130 = call i8* @_bal_alloc (i64 8)
  %_131 = bitcast i8* %_130 to i64*
  store i64 %_129, i64* %_131, align 8
  %_132 = getelementptr i8, i8* %_130, i64 144115188075855872
  call void @_Bio__println (i8* %_132)
  store i8* null, i8** %_53
  %_133 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_133, i64* %_56
  %_134 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_134, i64* %_59
  %_135 = load i64, i64* %_56
  %_136 = load i64, i64* %_59
  %_137 = call i64 @_B_add (i64 %_135, i64 %_136)
  store i64 %_137, i64* %_60
  %_138 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_138, i64* %_63
  %_139 = call i64 @_B_add (i64 -23, i64 -50)
  store i64 %_139, i64* %_66
  %_140 = load i64, i64* %_63
  %_141 = load i64, i64* %_66
  %_142 = call i64 @_B_add (i64 %_140, i64 %_141)
  store i64 %_142, i64* %_67
  %_143 = load i64, i64* %_60
  %_144 = load i64, i64* %_67
  %_145 = call i64 @_B_add (i64 %_143, i64 %_144)
  store i64 %_145, i64* %_68
  %_146 = load i64, i64* %_68
  %_147 = call i8* @_bal_alloc (i64 8)
  %_148 = bitcast i8* %_147 to i64*
  store i64 %_146, i64* %_148, align 8
  %_149 = getelementptr i8, i8* %_147, i64 144115188075855872
  call void @_Bio__println (i8* %_149)
  store i8* null, i8** %_69
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_7 = load i64, i64* %x
  %_8 = load i64, i64* %y
  %_9 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 3076)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 3329, i64* %_3
  br label %L2
}
