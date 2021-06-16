declare void @_bal_panic (i64)
declare void @_Bio__println (i64)
define void @_B_main () {
  %big = alloca i64, align 8
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i64, align 8
  %_11 = alloca i1, align 8
  %one = alloca i64, align 8
  %_12 = alloca i1, align 8
  %_13 = alloca i1, align 8
  %_14 = alloca i1, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i1, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i1, align 8
  %_19 = alloca i64, align 8
  %_20 = alloca i1, align 8
  %_21 = alloca i1, align 8
  %_22 = alloca i64, align 8
  %_23 = alloca i1, align 8
  %zero = alloca i64, align 8
  %_24 = alloca i1, align 8
  %_25 = alloca i1, align 8
  %_26 = alloca i1, align 8
  %_27 = alloca i1, align 8
  %_28 = alloca i1, align 8
  %_29 = alloca i1, align 8
  %_30 = alloca i1, align 8
  %_31 = alloca i64, align 8
  %_32 = alloca i1, align 8
  %_33 = alloca i1, align 8
  %_34 = alloca i64, align 8
  %_35 = alloca i1, align 8
  %_36 = alloca i1, align 8
  %_37 = alloca i64, align 8
  %_38 = alloca i1, align 8
  %_39 = alloca i1, align 8
  %_40 = alloca i64, align 8
  %_41 = alloca i1, align 8
  %_42 = alloca i1, align 8
  %_43 = alloca i64, align 8
  %_44 = alloca i1, align 8
  %_45 = alloca i1, align 8
  %_46 = alloca i64, align 8
  %_47 = alloca i64, align 8
  %_48 = alloca i1, align 8
  %_49 = alloca i1, align 8
  %_50 = alloca i64, align 8
  %_51 = alloca i64, align 8
  %_52 = alloca i1, align 8
  %_53 = alloca i1, align 8
  %_54 = alloca i64, align 8
  %_55 = alloca i1, align 8
  %_56 = alloca i1, align 8
  %_57 = alloca i64, align 8
  %_58 = alloca i1, align 8
  %_59 = alloca i1, align 8
  %_60 = alloca i64, align 8
  %_61 = alloca i1, align 8
  %_62 = alloca i1, align 8
  %_63 = alloca i64, align 8
  %_64 = alloca i64, align 8
  %_65 = alloca i1, align 8
  %_66 = alloca i1, align 8
  %_67 = alloca i64, align 8
  %_68 = alloca i64, align 8
  %_69 = alloca i1, align 8
  %_70 = alloca i64, align 8
  store i64 9223372036854775806, i64* %big, align 8
  %_71 = load i64, i64* %big, align 8
  %_72 = icmp eq i64 %_71, 9223372036854775806
  store i1 %_72, i1* %_0, align 8
  %_73 = load i1, i1* %_0, align 8
  call void @_B_printBoolean (i1 %_73)
  store i1 0, i1* %_1, align 8
  %_74 = load i64, i64* %big, align 8
  %_75 = icmp eq i64 %_74, 1
  store i1 %_75, i1* %_2, align 8
  %_76 = load i1, i1* %_2, align 8
  call void @_B_printBoolean (i1 %_76)
  store i1 0, i1* %_3, align 8
  %_77 = load i64, i64* %big, align 8
  %_78 = icmp eq i64 %_77, 0
  store i1 %_78, i1* %_4, align 8
  %_79 = load i1, i1* %_4, align 8
  call void @_B_printBoolean (i1 %_79)
  store i1 0, i1* %_5, align 8
  %_80 = load i64, i64* %big, align 8
  %_81 = icmp eq i64 %_80, -1
  store i1 %_81, i1* %_6, align 8
  %_82 = load i1, i1* %_6, align 8
  call void @_B_printBoolean (i1 %_82)
  store i1 0, i1* %_8, align 8
  %_83 = load i64, i64* %big, align 8
  %_84 = icmp eq i64 %_83, -9223372036854775806
  store i1 %_84, i1* %_9, align 8
  %_85 = load i1, i1* %_9, align 8
  call void @_B_printBoolean (i1 %_85)
  store i1 0, i1* %_11, align 8
  store i64 1, i64* %one, align 8
  %_86 = load i64, i64* %one, align 8
  %_87 = icmp eq i64 %_86, 9223372036854775806
  store i1 %_87, i1* %_12, align 8
  %_88 = load i1, i1* %_12, align 8
  call void @_B_printBoolean (i1 %_88)
  store i1 0, i1* %_13, align 8
  %_89 = load i64, i64* %one, align 8
  %_90 = icmp eq i64 %_89, 1
  store i1 %_90, i1* %_14, align 8
  %_91 = load i1, i1* %_14, align 8
  call void @_B_printBoolean (i1 %_91)
  store i1 0, i1* %_15, align 8
  %_92 = load i64, i64* %one, align 8
  %_93 = icmp eq i64 %_92, 0
  store i1 %_93, i1* %_16, align 8
  %_94 = load i1, i1* %_16, align 8
  call void @_B_printBoolean (i1 %_94)
  store i1 0, i1* %_17, align 8
  %_95 = load i64, i64* %one, align 8
  %_96 = icmp eq i64 %_95, -1
  store i1 %_96, i1* %_18, align 8
  %_97 = load i1, i1* %_18, align 8
  call void @_B_printBoolean (i1 %_97)
  store i1 0, i1* %_20, align 8
  %_98 = load i64, i64* %one, align 8
  %_99 = icmp eq i64 %_98, -9223372036854775806
  store i1 %_99, i1* %_21, align 8
  %_100 = load i1, i1* %_21, align 8
  call void @_B_printBoolean (i1 %_100)
  store i1 0, i1* %_23, align 8
  store i64 0, i64* %zero, align 8
  %_101 = load i64, i64* %zero, align 8
  %_102 = icmp eq i64 %_101, 9223372036854775806
  store i1 %_102, i1* %_24, align 8
  %_103 = load i1, i1* %_24, align 8
  call void @_B_printBoolean (i1 %_103)
  store i1 0, i1* %_25, align 8
  %_104 = load i64, i64* %zero, align 8
  %_105 = icmp eq i64 %_104, 1
  store i1 %_105, i1* %_26, align 8
  %_106 = load i1, i1* %_26, align 8
  call void @_B_printBoolean (i1 %_106)
  store i1 0, i1* %_27, align 8
  %_107 = load i64, i64* %zero, align 8
  %_108 = icmp eq i64 %_107, 0
  store i1 %_108, i1* %_28, align 8
  %_109 = load i1, i1* %_28, align 8
  call void @_B_printBoolean (i1 %_109)
  store i1 0, i1* %_29, align 8
  %_110 = load i64, i64* %zero, align 8
  %_111 = icmp eq i64 %_110, -1
  store i1 %_111, i1* %_30, align 8
  %_112 = load i1, i1* %_30, align 8
  call void @_B_printBoolean (i1 %_112)
  store i1 0, i1* %_32, align 8
  %_113 = load i64, i64* %zero, align 8
  %_114 = icmp eq i64 %_113, -9223372036854775806
  store i1 %_114, i1* %_33, align 8
  %_115 = load i1, i1* %_33, align 8
  call void @_B_printBoolean (i1 %_115)
  store i1 0, i1* %_35, align 8
  %_116 = load i64, i64* %one, align 8
  %_117 = sub i64 0, %_116
  store i64 %_117, i64* %_37, align 8
  %_118 = load i64, i64* %_37, align 8
  %_119 = icmp eq i64 %_118, 9223372036854775806
  store i1 %_119, i1* %_36, align 8
  %_120 = load i1, i1* %_36, align 8
  call void @_B_printBoolean (i1 %_120)
  store i1 0, i1* %_38, align 8
  %_121 = load i64, i64* %one, align 8
  %_122 = sub i64 0, %_121
  store i64 %_122, i64* %_40, align 8
  %_123 = load i64, i64* %_40, align 8
  %_124 = icmp eq i64 %_123, 1
  store i1 %_124, i1* %_39, align 8
  %_125 = load i1, i1* %_39, align 8
  call void @_B_printBoolean (i1 %_125)
  store i1 0, i1* %_41, align 8
  %_126 = load i64, i64* %one, align 8
  %_127 = sub i64 0, %_126
  store i64 %_127, i64* %_43, align 8
  %_128 = load i64, i64* %_43, align 8
  %_129 = icmp eq i64 %_128, 0
  store i1 %_129, i1* %_42, align 8
  %_130 = load i1, i1* %_42, align 8
  call void @_B_printBoolean (i1 %_130)
  store i1 0, i1* %_44, align 8
  %_131 = load i64, i64* %one, align 8
  %_132 = sub i64 0, %_131
  store i64 %_132, i64* %_46, align 8
  %_133 = load i64, i64* %_46, align 8
  %_134 = icmp eq i64 %_133, -1
  store i1 %_134, i1* %_45, align 8
  %_135 = load i1, i1* %_45, align 8
  call void @_B_printBoolean (i1 %_135)
  store i1 0, i1* %_48, align 8
  %_136 = load i64, i64* %one, align 8
  %_137 = sub i64 0, %_136
  store i64 %_137, i64* %_50, align 8
  %_138 = load i64, i64* %_50, align 8
  %_139 = icmp eq i64 %_138, -9223372036854775806
  store i1 %_139, i1* %_49, align 8
  %_140 = load i1, i1* %_49, align 8
  call void @_B_printBoolean (i1 %_140)
  store i1 0, i1* %_52, align 8
  %_141 = load i64, i64* %big, align 8
  %_142 = sub i64 0, %_141
  store i64 %_142, i64* %_54, align 8
  %_143 = load i64, i64* %_54, align 8
  %_144 = icmp eq i64 %_143, 9223372036854775806
  store i1 %_144, i1* %_53, align 8
  %_145 = load i1, i1* %_53, align 8
  call void @_B_printBoolean (i1 %_145)
  store i1 0, i1* %_55, align 8
  %_146 = load i64, i64* %big, align 8
  %_147 = sub i64 0, %_146
  store i64 %_147, i64* %_57, align 8
  %_148 = load i64, i64* %_57, align 8
  %_149 = icmp eq i64 %_148, 1
  store i1 %_149, i1* %_56, align 8
  %_150 = load i1, i1* %_56, align 8
  call void @_B_printBoolean (i1 %_150)
  store i1 0, i1* %_58, align 8
  %_151 = load i64, i64* %big, align 8
  %_152 = sub i64 0, %_151
  store i64 %_152, i64* %_60, align 8
  %_153 = load i64, i64* %_60, align 8
  %_154 = icmp eq i64 %_153, 0
  store i1 %_154, i1* %_59, align 8
  %_155 = load i1, i1* %_59, align 8
  call void @_B_printBoolean (i1 %_155)
  store i1 0, i1* %_61, align 8
  %_156 = load i64, i64* %big, align 8
  %_157 = sub i64 0, %_156
  store i64 %_157, i64* %_63, align 8
  %_158 = load i64, i64* %_63, align 8
  %_159 = icmp eq i64 %_158, -1
  store i1 %_159, i1* %_62, align 8
  %_160 = load i1, i1* %_62, align 8
  call void @_B_printBoolean (i1 %_160)
  store i1 0, i1* %_65, align 8
  %_161 = load i64, i64* %big, align 8
  %_162 = sub i64 0, %_161
  store i64 %_162, i64* %_67, align 8
  %_163 = load i64, i64* %_67, align 8
  %_164 = icmp eq i64 %_163, -9223372036854775806
  store i1 %_164, i1* %_66, align 8
  %_165 = load i1, i1* %_66, align 8
  call void @_B_printBoolean (i1 %_165)
  store i1 0, i1* %_69, align 8
  ret void
  %_166 = load i64, i64* %_70, align 8
  call void @_bal_panic (i64 %_166)
  unreachable
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  store i1 %_0, i1* %b, align 8
  %_3 = load i1, i1* %b, align 8
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
