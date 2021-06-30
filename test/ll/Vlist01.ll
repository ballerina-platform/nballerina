@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i8*
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = alloca i8*
  %_13 = alloca i8*
  %_14 = alloca i8*
  %_15 = alloca i8*
  %_16 = alloca i8*
  %_17 = alloca i8*
  %_18 = alloca i8*
  %_19 = alloca i8*
  %_20 = alloca i8*
  %_21 = alloca i8
  %_22 = load i8*, i8** @_bal_stack_guard
  %_23 = icmp ult i8* %_21, %_22
  br i1 %_23, label %L2, label %L1
L1:
  %_24 = call i8* @_bal_alloc (i64 24)
  %_25 = bitcast i8* %_24 to {i64, i64, [0 x i8*]*}*
  %_26 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 0
  store i64 0, i64* %_26
  %_27 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 1
  store i64 0, i64* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_25, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_28
  %_29 = getelementptr i8, i8* %_24, i64 1297036692682702848
  store i8* %_29, i8** %_0
  %_30 = load i8*, i8** %_0
  call void @_Bio__println (i8* %_30)
  store i8* null, i8** %_1
  %_31 = call i8* @_bal_alloc (i64 8)
  %_32 = bitcast i8* %_31 to [1 x i8*]*
  %_33 = zext i1 1 to i64
  %_34 = or i64 %_33, 72057594037927936
  %_35 = getelementptr i8, i8* null, i64 %_34
  %_36 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_32, i64 0, i64 0
  store i8* %_35, i8** %_36
  %_37 = bitcast [1 x i8*]* %_32 to [0 x i8*]*
  %_38 = call i8* @_bal_alloc (i64 24)
  %_39 = bitcast i8* %_38 to {i64, i64, [0 x i8*]*}*
  %_40 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_39, i64 0, i32 0
  store i64 1, i64* %_40
  %_41 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_39, i64 0, i32 1
  store i64 1, i64* %_41
  %_42 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_39, i64 0, i32 2
  store [0 x i8*]* %_37, [0 x i8*]** %_42
  %_43 = getelementptr i8, i8* %_38, i64 1297036692682702848
  store i8* %_43, i8** %_2
  %_44 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_3
  %_45 = call i8* @_bal_alloc (i64 8)
  %_46 = bitcast i8* %_45 to [1 x i8*]*
  %_47 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_46, i64 0, i64 0
  store i8* null, i8** %_47
  %_48 = bitcast [1 x i8*]* %_46 to [0 x i8*]*
  %_49 = call i8* @_bal_alloc (i64 24)
  %_50 = bitcast i8* %_49 to {i64, i64, [0 x i8*]*}*
  %_51 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_50, i64 0, i32 0
  store i64 1, i64* %_51
  %_52 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_50, i64 0, i32 1
  store i64 1, i64* %_52
  %_53 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_50, i64 0, i32 2
  store [0 x i8*]* %_48, [0 x i8*]** %_53
  %_54 = getelementptr i8, i8* %_49, i64 1297036692682702848
  store i8* %_54, i8** %_4
  %_55 = load i8*, i8** %_4
  call void @_Bio__println (i8* %_55)
  store i8* null, i8** %_5
  %_56 = call i8* @_bal_alloc (i64 8)
  %_57 = bitcast i8* %_56 to [1 x i8*]*
  %_58 = call i8* @_bal_alloc (i64 8)
  %_59 = bitcast i8* %_58 to i64*
  store i64 -17, i64* %_59, align 8
  %_60 = getelementptr i8, i8* %_58, i64 504403158265495552
  %_61 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_57, i64 0, i64 0
  store i8* %_60, i8** %_61
  %_62 = bitcast [1 x i8*]* %_57 to [0 x i8*]*
  %_63 = call i8* @_bal_alloc (i64 24)
  %_64 = bitcast i8* %_63 to {i64, i64, [0 x i8*]*}*
  %_65 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_64, i64 0, i32 0
  store i64 1, i64* %_65
  %_66 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_64, i64 0, i32 1
  store i64 1, i64* %_66
  %_67 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_64, i64 0, i32 2
  store [0 x i8*]* %_62, [0 x i8*]** %_67
  %_68 = getelementptr i8, i8* %_63, i64 1297036692682702848
  store i8* %_68, i8** %_7
  %_69 = load i8*, i8** %_7
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_8
  %_70 = call i8* @_bal_alloc (i64 24)
  %_71 = bitcast i8* %_70 to [3 x i8*]*
  %_72 = zext i1 0 to i64
  %_73 = or i64 %_72, 72057594037927936
  %_74 = getelementptr i8, i8* null, i64 %_73
  %_75 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_71, i64 0, i64 0
  store i8* %_74, i8** %_75
  %_76 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_71, i64 0, i64 1
  store i8* null, i8** %_76
  %_77 = call i8* @_bal_alloc (i64 8)
  %_78 = bitcast i8* %_77 to i64*
  store i64 43, i64* %_78, align 8
  %_79 = getelementptr i8, i8* %_77, i64 504403158265495552
  %_80 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_71, i64 0, i64 2
  store i8* %_79, i8** %_80
  %_81 = bitcast [3 x i8*]* %_71 to [0 x i8*]*
  %_82 = call i8* @_bal_alloc (i64 24)
  %_83 = bitcast i8* %_82 to {i64, i64, [0 x i8*]*}*
  %_84 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_83, i64 0, i32 0
  store i64 3, i64* %_84
  %_85 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_83, i64 0, i32 1
  store i64 3, i64* %_85
  %_86 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_83, i64 0, i32 2
  store [0 x i8*]* %_81, [0 x i8*]** %_86
  %_87 = getelementptr i8, i8* %_82, i64 1297036692682702848
  store i8* %_87, i8** %_9
  %_88 = load i8*, i8** %_9
  call void @_Bio__println (i8* %_88)
  store i8* null, i8** %_10
  %_89 = call i8* @_bal_alloc (i64 24)
  %_90 = bitcast i8* %_89 to {i64, i64, [0 x i8*]*}*
  %_91 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_90, i64 0, i32 0
  store i64 0, i64* %_91
  %_92 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_90, i64 0, i32 1
  store i64 0, i64* %_92
  %_93 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_90, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_93
  %_94 = getelementptr i8, i8* %_89, i64 1297036692682702848
  store i8* %_94, i8** %_11
  %_95 = call i8* @_bal_alloc (i64 8)
  %_96 = bitcast i8* %_95 to [1 x i8*]*
  %_97 = load i8*, i8** %_11
  %_98 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_96, i64 0, i64 0
  store i8* %_97, i8** %_98
  %_99 = bitcast [1 x i8*]* %_96 to [0 x i8*]*
  %_100 = call i8* @_bal_alloc (i64 24)
  %_101 = bitcast i8* %_100 to {i64, i64, [0 x i8*]*}*
  %_102 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_101, i64 0, i32 0
  store i64 1, i64* %_102
  %_103 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_101, i64 0, i32 1
  store i64 1, i64* %_103
  %_104 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_101, i64 0, i32 2
  store [0 x i8*]* %_99, [0 x i8*]** %_104
  %_105 = getelementptr i8, i8* %_100, i64 1297036692682702848
  store i8* %_105, i8** %_12
  %_106 = call i8* @_bal_alloc (i64 8)
  %_107 = bitcast i8* %_106 to [1 x i8*]*
  %_108 = load i8*, i8** %_12
  %_109 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_107, i64 0, i64 0
  store i8* %_108, i8** %_109
  %_110 = bitcast [1 x i8*]* %_107 to [0 x i8*]*
  %_111 = call i8* @_bal_alloc (i64 24)
  %_112 = bitcast i8* %_111 to {i64, i64, [0 x i8*]*}*
  %_113 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_112, i64 0, i32 0
  store i64 1, i64* %_113
  %_114 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_112, i64 0, i32 1
  store i64 1, i64* %_114
  %_115 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_112, i64 0, i32 2
  store [0 x i8*]* %_110, [0 x i8*]** %_115
  %_116 = getelementptr i8, i8* %_111, i64 1297036692682702848
  store i8* %_116, i8** %_13
  %_117 = call i8* @_bal_alloc (i64 8)
  %_118 = bitcast i8* %_117 to [1 x i8*]*
  %_119 = load i8*, i8** %_13
  %_120 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_118, i64 0, i64 0
  store i8* %_119, i8** %_120
  %_121 = bitcast [1 x i8*]* %_118 to [0 x i8*]*
  %_122 = call i8* @_bal_alloc (i64 24)
  %_123 = bitcast i8* %_122 to {i64, i64, [0 x i8*]*}*
  %_124 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_123, i64 0, i32 0
  store i64 1, i64* %_124
  %_125 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_123, i64 0, i32 1
  store i64 1, i64* %_125
  %_126 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_123, i64 0, i32 2
  store [0 x i8*]* %_121, [0 x i8*]** %_126
  %_127 = getelementptr i8, i8* %_122, i64 1297036692682702848
  store i8* %_127, i8** %_14
  %_128 = call i8* @_bal_alloc (i64 8)
  %_129 = bitcast i8* %_128 to [1 x i8*]*
  %_130 = load i8*, i8** %_14
  %_131 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_129, i64 0, i64 0
  store i8* %_130, i8** %_131
  %_132 = bitcast [1 x i8*]* %_129 to [0 x i8*]*
  %_133 = call i8* @_bal_alloc (i64 24)
  %_134 = bitcast i8* %_133 to {i64, i64, [0 x i8*]*}*
  %_135 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_134, i64 0, i32 0
  store i64 1, i64* %_135
  %_136 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_134, i64 0, i32 1
  store i64 1, i64* %_136
  %_137 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_134, i64 0, i32 2
  store [0 x i8*]* %_132, [0 x i8*]** %_137
  %_138 = getelementptr i8, i8* %_133, i64 1297036692682702848
  store i8* %_138, i8** %_15
  %_139 = call i8* @_bal_alloc (i64 8)
  %_140 = bitcast i8* %_139 to [1 x i8*]*
  %_141 = load i8*, i8** %_15
  %_142 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_140, i64 0, i64 0
  store i8* %_141, i8** %_142
  %_143 = bitcast [1 x i8*]* %_140 to [0 x i8*]*
  %_144 = call i8* @_bal_alloc (i64 24)
  %_145 = bitcast i8* %_144 to {i64, i64, [0 x i8*]*}*
  %_146 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_145, i64 0, i32 0
  store i64 1, i64* %_146
  %_147 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_145, i64 0, i32 1
  store i64 1, i64* %_147
  %_148 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_145, i64 0, i32 2
  store [0 x i8*]* %_143, [0 x i8*]** %_148
  %_149 = getelementptr i8, i8* %_144, i64 1297036692682702848
  store i8* %_149, i8** %_16
  %_150 = load i8*, i8** %_16
  call void @_Bio__println (i8* %_150)
  store i8* null, i8** %_17
  %_151 = call i8* @_bal_alloc (i64 24)
  %_152 = bitcast i8* %_151 to [3 x i8*]*
  %_153 = call i8* @_bal_alloc (i64 8)
  %_154 = bitcast i8* %_153 to i64*
  store i64 1, i64* %_154, align 8
  %_155 = getelementptr i8, i8* %_153, i64 504403158265495552
  %_156 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_152, i64 0, i64 0
  store i8* %_155, i8** %_156
  %_157 = zext i1 1 to i64
  %_158 = or i64 %_157, 72057594037927936
  %_159 = getelementptr i8, i8* null, i64 %_158
  %_160 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_152, i64 0, i64 1
  store i8* %_159, i8** %_160
  %_161 = call i8* @_bal_alloc (i64 8)
  %_162 = bitcast i8* %_161 to i64*
  store i64 21, i64* %_162, align 8
  %_163 = getelementptr i8, i8* %_161, i64 504403158265495552
  %_164 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_152, i64 0, i64 2
  store i8* %_163, i8** %_164
  %_165 = bitcast [3 x i8*]* %_152 to [0 x i8*]*
  %_166 = call i8* @_bal_alloc (i64 24)
  %_167 = bitcast i8* %_166 to {i64, i64, [0 x i8*]*}*
  %_168 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_167, i64 0, i32 0
  store i64 3, i64* %_168
  %_169 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_167, i64 0, i32 1
  store i64 3, i64* %_169
  %_170 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_167, i64 0, i32 2
  store [0 x i8*]* %_165, [0 x i8*]** %_170
  %_171 = getelementptr i8, i8* %_166, i64 1297036692682702848
  store i8* %_171, i8** %_18
  %_172 = call i8* @_bal_alloc (i64 24)
  %_173 = bitcast i8* %_172 to [3 x i8*]*
  %_174 = zext i1 0 to i64
  %_175 = or i64 %_174, 72057594037927936
  %_176 = getelementptr i8, i8* null, i64 %_175
  %_177 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_173, i64 0, i64 0
  store i8* %_176, i8** %_177
  %_178 = load i8*, i8** %_18
  %_179 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_173, i64 0, i64 1
  store i8* %_178, i8** %_179
  %_180 = call i8* @_bal_alloc (i64 8)
  %_181 = bitcast i8* %_180 to i64*
  store i64 0, i64* %_181, align 8
  %_182 = getelementptr i8, i8* %_180, i64 504403158265495552
  %_183 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_173, i64 0, i64 2
  store i8* %_182, i8** %_183
  %_184 = bitcast [3 x i8*]* %_173 to [0 x i8*]*
  %_185 = call i8* @_bal_alloc (i64 24)
  %_186 = bitcast i8* %_185 to {i64, i64, [0 x i8*]*}*
  %_187 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_186, i64 0, i32 0
  store i64 3, i64* %_187
  %_188 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_186, i64 0, i32 1
  store i64 3, i64* %_188
  %_189 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_186, i64 0, i32 2
  store [0 x i8*]* %_184, [0 x i8*]** %_189
  %_190 = getelementptr i8, i8* %_185, i64 1297036692682702848
  store i8* %_190, i8** %_19
  %_191 = load i8*, i8** %_19
  call void @_Bio__println (i8* %_191)
  store i8* null, i8** %_20
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
