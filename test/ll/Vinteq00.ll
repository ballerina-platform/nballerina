declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %big = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i64
  %_11 = alloca i8*
  %one = alloca i64
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i1
  %_15 = alloca i8*
  %_16 = alloca i1
  %_17 = alloca i8*
  %_18 = alloca i1
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i1
  %_22 = alloca i64
  %_23 = alloca i8*
  %zero = alloca i64
  %_24 = alloca i1
  %_25 = alloca i8*
  %_26 = alloca i1
  %_27 = alloca i8*
  %_28 = alloca i1
  %_29 = alloca i8*
  %_30 = alloca i1
  %_31 = alloca i64
  %_32 = alloca i8*
  %_33 = alloca i1
  %_34 = alloca i64
  %_35 = alloca i8*
  %_36 = alloca i1
  %_37 = alloca i64
  %_38 = alloca i8*
  %_39 = alloca i1
  %_40 = alloca i64
  %_41 = alloca i8*
  %_42 = alloca i1
  %_43 = alloca i64
  %_44 = alloca i8*
  %_45 = alloca i1
  %_46 = alloca i64
  %_47 = alloca i64
  %_48 = alloca i8*
  %_49 = alloca i1
  %_50 = alloca i64
  %_51 = alloca i64
  %_52 = alloca i8*
  %_53 = alloca i1
  %_54 = alloca i64
  %_55 = alloca i8*
  %_56 = alloca i1
  %_57 = alloca i64
  %_58 = alloca i8*
  %_59 = alloca i1
  %_60 = alloca i64
  %_61 = alloca i8*
  %_62 = alloca i1
  %_63 = alloca i64
  %_64 = alloca i64
  %_65 = alloca i8*
  %_66 = alloca i1
  %_67 = alloca i64
  %_68 = alloca i64
  %_69 = alloca i8*
  %_70 = alloca i64
  store i64 9223372036854775806, i64* %big
  %_71 = load i64, i64* %big
  %_72 = icmp eq i64 %_71, 9223372036854775806
  store i1 %_72, i1* %_0
  %_73 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_73)
  store i8* null, i8** %_1
  %_74 = load i64, i64* %big
  %_75 = icmp eq i64 %_74, 1
  store i1 %_75, i1* %_2
  %_76 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_76)
  store i8* null, i8** %_3
  %_77 = load i64, i64* %big
  %_78 = icmp eq i64 %_77, 0
  store i1 %_78, i1* %_4
  %_79 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_79)
  store i8* null, i8** %_5
  %_80 = load i64, i64* %big
  %_81 = icmp eq i64 %_80, -1
  store i1 %_81, i1* %_6
  %_82 = load i1, i1* %_6
  call void @_B_printBoolean (i1 %_82)
  store i8* null, i8** %_8
  %_83 = load i64, i64* %big
  %_84 = icmp eq i64 %_83, -9223372036854775806
  store i1 %_84, i1* %_9
  %_85 = load i1, i1* %_9
  call void @_B_printBoolean (i1 %_85)
  store i8* null, i8** %_11
  store i64 1, i64* %one
  %_86 = load i64, i64* %one
  %_87 = icmp eq i64 %_86, 9223372036854775806
  store i1 %_87, i1* %_12
  %_88 = load i1, i1* %_12
  call void @_B_printBoolean (i1 %_88)
  store i8* null, i8** %_13
  %_89 = load i64, i64* %one
  %_90 = icmp eq i64 %_89, 1
  store i1 %_90, i1* %_14
  %_91 = load i1, i1* %_14
  call void @_B_printBoolean (i1 %_91)
  store i8* null, i8** %_15
  %_92 = load i64, i64* %one
  %_93 = icmp eq i64 %_92, 0
  store i1 %_93, i1* %_16
  %_94 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_94)
  store i8* null, i8** %_17
  %_95 = load i64, i64* %one
  %_96 = icmp eq i64 %_95, -1
  store i1 %_96, i1* %_18
  %_97 = load i1, i1* %_18
  call void @_B_printBoolean (i1 %_97)
  store i8* null, i8** %_20
  %_98 = load i64, i64* %one
  %_99 = icmp eq i64 %_98, -9223372036854775806
  store i1 %_99, i1* %_21
  %_100 = load i1, i1* %_21
  call void @_B_printBoolean (i1 %_100)
  store i8* null, i8** %_23
  store i64 0, i64* %zero
  %_101 = load i64, i64* %zero
  %_102 = icmp eq i64 %_101, 9223372036854775806
  store i1 %_102, i1* %_24
  %_103 = load i1, i1* %_24
  call void @_B_printBoolean (i1 %_103)
  store i8* null, i8** %_25
  %_104 = load i64, i64* %zero
  %_105 = icmp eq i64 %_104, 1
  store i1 %_105, i1* %_26
  %_106 = load i1, i1* %_26
  call void @_B_printBoolean (i1 %_106)
  store i8* null, i8** %_27
  %_107 = load i64, i64* %zero
  %_108 = icmp eq i64 %_107, 0
  store i1 %_108, i1* %_28
  %_109 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_109)
  store i8* null, i8** %_29
  %_110 = load i64, i64* %zero
  %_111 = icmp eq i64 %_110, -1
  store i1 %_111, i1* %_30
  %_112 = load i1, i1* %_30
  call void @_B_printBoolean (i1 %_112)
  store i8* null, i8** %_32
  %_113 = load i64, i64* %zero
  %_114 = icmp eq i64 %_113, -9223372036854775806
  store i1 %_114, i1* %_33
  %_115 = load i1, i1* %_33
  call void @_B_printBoolean (i1 %_115)
  store i8* null, i8** %_35
  %_116 = load i64, i64* %one
  %_117 = sub i64 0, %_116
  store i64 %_117, i64* %_37
  %_118 = load i64, i64* %_37
  %_119 = icmp eq i64 %_118, 9223372036854775806
  store i1 %_119, i1* %_36
  %_120 = load i1, i1* %_36
  call void @_B_printBoolean (i1 %_120)
  store i8* null, i8** %_38
  %_121 = load i64, i64* %one
  %_122 = sub i64 0, %_121
  store i64 %_122, i64* %_40
  %_123 = load i64, i64* %_40
  %_124 = icmp eq i64 %_123, 1
  store i1 %_124, i1* %_39
  %_125 = load i1, i1* %_39
  call void @_B_printBoolean (i1 %_125)
  store i8* null, i8** %_41
  %_126 = load i64, i64* %one
  %_127 = sub i64 0, %_126
  store i64 %_127, i64* %_43
  %_128 = load i64, i64* %_43
  %_129 = icmp eq i64 %_128, 0
  store i1 %_129, i1* %_42
  %_130 = load i1, i1* %_42
  call void @_B_printBoolean (i1 %_130)
  store i8* null, i8** %_44
  %_131 = load i64, i64* %one
  %_132 = sub i64 0, %_131
  store i64 %_132, i64* %_46
  %_133 = load i64, i64* %_46
  %_134 = icmp eq i64 %_133, -1
  store i1 %_134, i1* %_45
  %_135 = load i1, i1* %_45
  call void @_B_printBoolean (i1 %_135)
  store i8* null, i8** %_48
  %_136 = load i64, i64* %one
  %_137 = sub i64 0, %_136
  store i64 %_137, i64* %_50
  %_138 = load i64, i64* %_50
  %_139 = icmp eq i64 %_138, -9223372036854775806
  store i1 %_139, i1* %_49
  %_140 = load i1, i1* %_49
  call void @_B_printBoolean (i1 %_140)
  store i8* null, i8** %_52
  %_141 = load i64, i64* %big
  %_142 = sub i64 0, %_141
  store i64 %_142, i64* %_54
  %_143 = load i64, i64* %_54
  %_144 = icmp eq i64 %_143, 9223372036854775806
  store i1 %_144, i1* %_53
  %_145 = load i1, i1* %_53
  call void @_B_printBoolean (i1 %_145)
  store i8* null, i8** %_55
  %_146 = load i64, i64* %big
  %_147 = sub i64 0, %_146
  store i64 %_147, i64* %_57
  %_148 = load i64, i64* %_57
  %_149 = icmp eq i64 %_148, 1
  store i1 %_149, i1* %_56
  %_150 = load i1, i1* %_56
  call void @_B_printBoolean (i1 %_150)
  store i8* null, i8** %_58
  %_151 = load i64, i64* %big
  %_152 = sub i64 0, %_151
  store i64 %_152, i64* %_60
  %_153 = load i64, i64* %_60
  %_154 = icmp eq i64 %_153, 0
  store i1 %_154, i1* %_59
  %_155 = load i1, i1* %_59
  call void @_B_printBoolean (i1 %_155)
  store i8* null, i8** %_61
  %_156 = load i64, i64* %big
  %_157 = sub i64 0, %_156
  store i64 %_157, i64* %_63
  %_158 = load i64, i64* %_63
  %_159 = icmp eq i64 %_158, -1
  store i1 %_159, i1* %_62
  %_160 = load i1, i1* %_62
  call void @_B_printBoolean (i1 %_160)
  store i8* null, i8** %_65
  %_161 = load i64, i64* %big
  %_162 = sub i64 0, %_161
  store i64 %_162, i64* %_67
  %_163 = load i64, i64* %_67
  %_164 = icmp eq i64 %_163, -9223372036854775806
  store i1 %_164, i1* %_66
  %_165 = load i1, i1* %_66
  call void @_B_printBoolean (i1 %_165)
  store i8* null, i8** %_69
  ret void
  %_166 = load i64, i64* %_70
  call void @_bal_panic (i64 %_166)
  unreachable
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i1 %_0, i1* %b
  %_3 = load i1, i1* %b
  br i1 %_3, label %L1, label %L2
L1:
  %_4 = call i8* @_bal_alloc (i64 8)
  %_5 = bitcast i8* %_4 to i64*
  store i64 1, i64* %_5, align 8
  %_6 = getelementptr i8, i8* %_4, i64 144115188075855872
  call void @_Bio__println (i8* %_6)
  store i8* null, i8** %_1
  br label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 0, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 144115188075855872
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_2
  br label %L3
L3:
  ret void
}
