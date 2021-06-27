@_bal_stack_guard = external global i8*
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
  %_71 = alloca i8
  %_72 = load i8*, i8** @_bal_stack_guard
  %_73 = icmp ult i8* %_71, %_72
  br i1 %_73, label %L3, label %L1
L1:
  store i64 9223372036854775806, i64* %big
  %_74 = load i64, i64* %big
  %_75 = icmp eq i64 %_74, 9223372036854775806
  store i1 %_75, i1* %_0
  %_76 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_76)
  store i8* null, i8** %_1
  %_77 = load i64, i64* %big
  %_78 = icmp eq i64 %_77, 1
  store i1 %_78, i1* %_2
  %_79 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_79)
  store i8* null, i8** %_3
  %_80 = load i64, i64* %big
  %_81 = icmp eq i64 %_80, 0
  store i1 %_81, i1* %_4
  %_82 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_82)
  store i8* null, i8** %_5
  %_83 = load i64, i64* %big
  %_84 = icmp eq i64 %_83, -1
  store i1 %_84, i1* %_6
  %_85 = load i1, i1* %_6
  call void @_B_printBoolean (i1 %_85)
  store i8* null, i8** %_8
  %_86 = load i64, i64* %big
  %_87 = icmp eq i64 %_86, -9223372036854775806
  store i1 %_87, i1* %_9
  %_88 = load i1, i1* %_9
  call void @_B_printBoolean (i1 %_88)
  store i8* null, i8** %_11
  store i64 1, i64* %one
  %_89 = load i64, i64* %one
  %_90 = icmp eq i64 %_89, 9223372036854775806
  store i1 %_90, i1* %_12
  %_91 = load i1, i1* %_12
  call void @_B_printBoolean (i1 %_91)
  store i8* null, i8** %_13
  %_92 = load i64, i64* %one
  %_93 = icmp eq i64 %_92, 1
  store i1 %_93, i1* %_14
  %_94 = load i1, i1* %_14
  call void @_B_printBoolean (i1 %_94)
  store i8* null, i8** %_15
  %_95 = load i64, i64* %one
  %_96 = icmp eq i64 %_95, 0
  store i1 %_96, i1* %_16
  %_97 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_97)
  store i8* null, i8** %_17
  %_98 = load i64, i64* %one
  %_99 = icmp eq i64 %_98, -1
  store i1 %_99, i1* %_18
  %_100 = load i1, i1* %_18
  call void @_B_printBoolean (i1 %_100)
  store i8* null, i8** %_20
  %_101 = load i64, i64* %one
  %_102 = icmp eq i64 %_101, -9223372036854775806
  store i1 %_102, i1* %_21
  %_103 = load i1, i1* %_21
  call void @_B_printBoolean (i1 %_103)
  store i8* null, i8** %_23
  store i64 0, i64* %zero
  %_104 = load i64, i64* %zero
  %_105 = icmp eq i64 %_104, 9223372036854775806
  store i1 %_105, i1* %_24
  %_106 = load i1, i1* %_24
  call void @_B_printBoolean (i1 %_106)
  store i8* null, i8** %_25
  %_107 = load i64, i64* %zero
  %_108 = icmp eq i64 %_107, 1
  store i1 %_108, i1* %_26
  %_109 = load i1, i1* %_26
  call void @_B_printBoolean (i1 %_109)
  store i8* null, i8** %_27
  %_110 = load i64, i64* %zero
  %_111 = icmp eq i64 %_110, 0
  store i1 %_111, i1* %_28
  %_112 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_112)
  store i8* null, i8** %_29
  %_113 = load i64, i64* %zero
  %_114 = icmp eq i64 %_113, -1
  store i1 %_114, i1* %_30
  %_115 = load i1, i1* %_30
  call void @_B_printBoolean (i1 %_115)
  store i8* null, i8** %_32
  %_116 = load i64, i64* %zero
  %_117 = icmp eq i64 %_116, -9223372036854775806
  store i1 %_117, i1* %_33
  %_118 = load i1, i1* %_33
  call void @_B_printBoolean (i1 %_118)
  store i8* null, i8** %_35
  %_119 = load i64, i64* %one
  %_120 = sub i64 0, %_119
  store i64 %_120, i64* %_37
  %_121 = load i64, i64* %_37
  %_122 = icmp eq i64 %_121, 9223372036854775806
  store i1 %_122, i1* %_36
  %_123 = load i1, i1* %_36
  call void @_B_printBoolean (i1 %_123)
  store i8* null, i8** %_38
  %_124 = load i64, i64* %one
  %_125 = sub i64 0, %_124
  store i64 %_125, i64* %_40
  %_126 = load i64, i64* %_40
  %_127 = icmp eq i64 %_126, 1
  store i1 %_127, i1* %_39
  %_128 = load i1, i1* %_39
  call void @_B_printBoolean (i1 %_128)
  store i8* null, i8** %_41
  %_129 = load i64, i64* %one
  %_130 = sub i64 0, %_129
  store i64 %_130, i64* %_43
  %_131 = load i64, i64* %_43
  %_132 = icmp eq i64 %_131, 0
  store i1 %_132, i1* %_42
  %_133 = load i1, i1* %_42
  call void @_B_printBoolean (i1 %_133)
  store i8* null, i8** %_44
  %_134 = load i64, i64* %one
  %_135 = sub i64 0, %_134
  store i64 %_135, i64* %_46
  %_136 = load i64, i64* %_46
  %_137 = icmp eq i64 %_136, -1
  store i1 %_137, i1* %_45
  %_138 = load i1, i1* %_45
  call void @_B_printBoolean (i1 %_138)
  store i8* null, i8** %_48
  %_139 = load i64, i64* %one
  %_140 = sub i64 0, %_139
  store i64 %_140, i64* %_50
  %_141 = load i64, i64* %_50
  %_142 = icmp eq i64 %_141, -9223372036854775806
  store i1 %_142, i1* %_49
  %_143 = load i1, i1* %_49
  call void @_B_printBoolean (i1 %_143)
  store i8* null, i8** %_52
  %_144 = load i64, i64* %big
  %_145 = sub i64 0, %_144
  store i64 %_145, i64* %_54
  %_146 = load i64, i64* %_54
  %_147 = icmp eq i64 %_146, 9223372036854775806
  store i1 %_147, i1* %_53
  %_148 = load i1, i1* %_53
  call void @_B_printBoolean (i1 %_148)
  store i8* null, i8** %_55
  %_149 = load i64, i64* %big
  %_150 = sub i64 0, %_149
  store i64 %_150, i64* %_57
  %_151 = load i64, i64* %_57
  %_152 = icmp eq i64 %_151, 1
  store i1 %_152, i1* %_56
  %_153 = load i1, i1* %_56
  call void @_B_printBoolean (i1 %_153)
  store i8* null, i8** %_58
  %_154 = load i64, i64* %big
  %_155 = sub i64 0, %_154
  store i64 %_155, i64* %_60
  %_156 = load i64, i64* %_60
  %_157 = icmp eq i64 %_156, 0
  store i1 %_157, i1* %_59
  %_158 = load i1, i1* %_59
  call void @_B_printBoolean (i1 %_158)
  store i8* null, i8** %_61
  %_159 = load i64, i64* %big
  %_160 = sub i64 0, %_159
  store i64 %_160, i64* %_63
  %_161 = load i64, i64* %_63
  %_162 = icmp eq i64 %_161, -1
  store i1 %_162, i1* %_62
  %_163 = load i1, i1* %_62
  call void @_B_printBoolean (i1 %_163)
  store i8* null, i8** %_65
  %_164 = load i64, i64* %big
  %_165 = sub i64 0, %_164
  store i64 %_165, i64* %_67
  %_166 = load i64, i64* %_67
  %_167 = icmp eq i64 %_166, -9223372036854775806
  store i1 %_167, i1* %_66
  %_168 = load i1, i1* %_66
  call void @_B_printBoolean (i1 %_168)
  store i8* null, i8** %_69
  ret void
  %_169 = load i64, i64* %_70
  call void @_bal_panic (i64 %_169)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L5, label %L1
L1:
  store i1 %_0, i1* %b
  %_6 = load i1, i1* %b
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 1, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 144115188075855872
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 0, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 144115188075855872
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 10244)
  unreachable
}
