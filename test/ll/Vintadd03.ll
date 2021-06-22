declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
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
  %_70 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_70, i64* %_2
  %_71 = load i64, i64* %_2
  %_72 = call i8* @_bal_alloc (i64 8)
  %_73 = bitcast i8* %_72 to i64*
  store i64 %_71, i64* %_73, align 8
  %_74 = getelementptr i8, i8* %_72, i64 144115188075855872
  call void @_Bio__println (i8* %_74)
  store i8* null, i8** %_3
  %_75 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_75, i64* %_6
  %_76 = load i64, i64* %_6
  %_77 = call i64 @_B_add (i64 %_76, i64 -11)
  store i64 %_77, i64* %_8
  %_78 = load i64, i64* %_8
  %_79 = call i8* @_bal_alloc (i64 8)
  %_80 = bitcast i8* %_79 to i64*
  store i64 %_78, i64* %_80, align 8
  %_81 = getelementptr i8, i8* %_79, i64 144115188075855872
  call void @_Bio__println (i8* %_81)
  store i8* null, i8** %_9
  %_82 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_82, i64* %_12
  %_83 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_83, i64* %_15
  %_84 = load i64, i64* %_12
  %_85 = load i64, i64* %_15
  %_86 = call i64 @_B_add (i64 %_84, i64 %_85)
  store i64 %_86, i64* %_16
  %_87 = load i64, i64* %_16
  %_88 = call i8* @_bal_alloc (i64 8)
  %_89 = bitcast i8* %_88 to i64*
  store i64 %_87, i64* %_89, align 8
  %_90 = getelementptr i8, i8* %_88, i64 144115188075855872
  call void @_Bio__println (i8* %_90)
  store i8* null, i8** %_17
  %_91 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_91, i64* %_20
  %_92 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_92, i64* %_23
  %_93 = load i64, i64* %_20
  %_94 = load i64, i64* %_23
  %_95 = call i64 @_B_add (i64 %_93, i64 %_94)
  store i64 %_95, i64* %_24
  %_96 = load i64, i64* %_24
  %_97 = call i64 @_B_add (i64 %_96, i64 -12)
  store i64 %_97, i64* %_26
  %_98 = load i64, i64* %_26
  %_99 = call i8* @_bal_alloc (i64 8)
  %_100 = bitcast i8* %_99 to i64*
  store i64 %_98, i64* %_100, align 8
  %_101 = getelementptr i8, i8* %_99, i64 144115188075855872
  call void @_Bio__println (i8* %_101)
  store i8* null, i8** %_27
  %_102 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_102, i64* %_30
  %_103 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_103, i64* %_33
  %_104 = load i64, i64* %_30
  %_105 = load i64, i64* %_33
  %_106 = call i64 @_B_add (i64 %_104, i64 %_105)
  store i64 %_106, i64* %_34
  %_107 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_107, i64* %_37
  %_108 = load i64, i64* %_34
  %_109 = load i64, i64* %_37
  %_110 = call i64 @_B_add (i64 %_108, i64 %_109)
  store i64 %_110, i64* %_38
  %_111 = load i64, i64* %_38
  %_112 = call i8* @_bal_alloc (i64 8)
  %_113 = bitcast i8* %_112 to i64*
  store i64 %_111, i64* %_113, align 8
  %_114 = getelementptr i8, i8* %_112, i64 144115188075855872
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_39
  %_115 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_115, i64* %_42
  %_116 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_116, i64* %_45
  %_117 = load i64, i64* %_42
  %_118 = load i64, i64* %_45
  %_119 = call i64 @_B_add (i64 %_117, i64 %_118)
  store i64 %_119, i64* %_46
  %_120 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_120, i64* %_49
  %_121 = load i64, i64* %_49
  %_122 = call i64 @_B_add (i64 %_121, i64 -5)
  store i64 %_122, i64* %_51
  %_123 = load i64, i64* %_46
  %_124 = load i64, i64* %_51
  %_125 = call i64 @_B_add (i64 %_123, i64 %_124)
  store i64 %_125, i64* %_52
  %_126 = load i64, i64* %_52
  %_127 = call i8* @_bal_alloc (i64 8)
  %_128 = bitcast i8* %_127 to i64*
  store i64 %_126, i64* %_128, align 8
  %_129 = getelementptr i8, i8* %_127, i64 144115188075855872
  call void @_Bio__println (i8* %_129)
  store i8* null, i8** %_53
  %_130 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_130, i64* %_56
  %_131 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_131, i64* %_59
  %_132 = load i64, i64* %_56
  %_133 = load i64, i64* %_59
  %_134 = call i64 @_B_add (i64 %_132, i64 %_133)
  store i64 %_134, i64* %_60
  %_135 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_135, i64* %_63
  %_136 = call i64 @_B_add (i64 -23, i64 -50)
  store i64 %_136, i64* %_66
  %_137 = load i64, i64* %_63
  %_138 = load i64, i64* %_66
  %_139 = call i64 @_B_add (i64 %_137, i64 %_138)
  store i64 %_139, i64* %_67
  %_140 = load i64, i64* %_60
  %_141 = load i64, i64* %_67
  %_142 = call i64 @_B_add (i64 %_140, i64 %_141)
  store i64 %_142, i64* %_68
  %_143 = load i64, i64* %_68
  %_144 = call i8* @_bal_alloc (i64 8)
  %_145 = bitcast i8* %_144 to i64*
  store i64 %_143, i64* %_145, align 8
  %_146 = getelementptr i8, i8* %_144, i64 144115188075855872
  call void @_Bio__println (i8* %_146)
  store i8* null, i8** %_69
  ret void
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_4 = load i64, i64* %x
  %_5 = load i64, i64* %y
  %_6 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_4, i64 %_5)
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
