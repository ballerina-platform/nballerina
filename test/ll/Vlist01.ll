@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_21 = alloca i64
  %_22 = alloca i8
  %_23 = load i8*, i8** @_bal_stack_guard
  %_24 = icmp ult i8* %_22, %_23
  br i1 %_24, label %L3, label %L1
L1:
  %_25 = call i8* @_bal_alloc (i64 24)
  %_26 = bitcast i8* %_25 to {i64, i64, [0 x i8*]*}*
  %_27 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_26, i64 0, i32 0
  store i64 0, i64* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_26, i64 0, i32 1
  store i64 0, i64* %_28
  %_29 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_26, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_29
  %_30 = getelementptr i8, i8* %_25, i64 1297036692682702848
  store i8* %_30, i8** %_0
  %_31 = load i8*, i8** %_0
  call void @_Bio__println (i8* %_31)
  store i8* null, i8** %_1
  %_32 = call i8* @_bal_alloc (i64 8)
  %_33 = bitcast i8* %_32 to [1 x i8*]*
  %_34 = zext i1 1 to i64
  %_35 = or i64 %_34, 72057594037927936
  %_36 = getelementptr i8, i8* null, i64 %_35
  %_37 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_33, i64 0, i64 0
  store i8* %_36, i8** %_37
  %_38 = bitcast [1 x i8*]* %_33 to [0 x i8*]*
  %_39 = call i8* @_bal_alloc (i64 24)
  %_40 = bitcast i8* %_39 to {i64, i64, [0 x i8*]*}*
  %_41 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_40, i64 0, i32 0
  store i64 1, i64* %_41
  %_42 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_40, i64 0, i32 1
  store i64 1, i64* %_42
  %_43 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_40, i64 0, i32 2
  store [0 x i8*]* %_38, [0 x i8*]** %_43
  %_44 = getelementptr i8, i8* %_39, i64 1297036692682702848
  store i8* %_44, i8** %_2
  %_45 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_3
  %_46 = call i8* @_bal_alloc (i64 8)
  %_47 = bitcast i8* %_46 to [1 x i8*]*
  %_48 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_47, i64 0, i64 0
  store i8* null, i8** %_48
  %_49 = bitcast [1 x i8*]* %_47 to [0 x i8*]*
  %_50 = call i8* @_bal_alloc (i64 24)
  %_51 = bitcast i8* %_50 to {i64, i64, [0 x i8*]*}*
  %_52 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_51, i64 0, i32 0
  store i64 1, i64* %_52
  %_53 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_51, i64 0, i32 1
  store i64 1, i64* %_53
  %_54 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_51, i64 0, i32 2
  store [0 x i8*]* %_49, [0 x i8*]** %_54
  %_55 = getelementptr i8, i8* %_50, i64 1297036692682702848
  store i8* %_55, i8** %_4
  %_56 = load i8*, i8** %_4
  call void @_Bio__println (i8* %_56)
  store i8* null, i8** %_5
  %_57 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 17)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L5, label %L4
L2:
  %_197 = load i64, i64* %_21
  call void @_bal_panic (i64 %_197)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_6
  %_60 = call i8* @_bal_alloc (i64 8)
  %_61 = bitcast i8* %_60 to [1 x i8*]*
  %_62 = load i64, i64* %_6
  %_63 = call i8* @_bal_alloc (i64 8)
  %_64 = bitcast i8* %_63 to i64*
  store i64 %_62, i64* %_64, align 8
  %_65 = getelementptr i8, i8* %_63, i64 504403158265495552
  %_66 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_61, i64 0, i64 0
  store i8* %_65, i8** %_66
  %_67 = bitcast [1 x i8*]* %_61 to [0 x i8*]*
  %_68 = call i8* @_bal_alloc (i64 24)
  %_69 = bitcast i8* %_68 to {i64, i64, [0 x i8*]*}*
  %_70 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_69, i64 0, i32 0
  store i64 1, i64* %_70
  %_71 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_69, i64 0, i32 1
  store i64 1, i64* %_71
  %_72 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_69, i64 0, i32 2
  store [0 x i8*]* %_67, [0 x i8*]** %_72
  %_73 = getelementptr i8, i8* %_68, i64 1297036692682702848
  store i8* %_73, i8** %_7
  %_74 = load i8*, i8** %_7
  call void @_Bio__println (i8* %_74)
  store i8* null, i8** %_8
  %_75 = call i8* @_bal_alloc (i64 24)
  %_76 = bitcast i8* %_75 to [3 x i8*]*
  %_77 = zext i1 0 to i64
  %_78 = or i64 %_77, 72057594037927936
  %_79 = getelementptr i8, i8* null, i64 %_78
  %_80 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_76, i64 0, i64 0
  store i8* %_79, i8** %_80
  %_81 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_76, i64 0, i64 1
  store i8* null, i8** %_81
  %_82 = call i8* @_bal_alloc (i64 8)
  %_83 = bitcast i8* %_82 to i64*
  store i64 43, i64* %_83, align 8
  %_84 = getelementptr i8, i8* %_82, i64 504403158265495552
  %_85 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_76, i64 0, i64 2
  store i8* %_84, i8** %_85
  %_86 = bitcast [3 x i8*]* %_76 to [0 x i8*]*
  %_87 = call i8* @_bal_alloc (i64 24)
  %_88 = bitcast i8* %_87 to {i64, i64, [0 x i8*]*}*
  %_89 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_88, i64 0, i32 0
  store i64 3, i64* %_89
  %_90 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_88, i64 0, i32 1
  store i64 3, i64* %_90
  %_91 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_88, i64 0, i32 2
  store [0 x i8*]* %_86, [0 x i8*]** %_91
  %_92 = getelementptr i8, i8* %_87, i64 1297036692682702848
  store i8* %_92, i8** %_9
  %_93 = load i8*, i8** %_9
  call void @_Bio__println (i8* %_93)
  store i8* null, i8** %_10
  %_94 = call i8* @_bal_alloc (i64 24)
  %_95 = bitcast i8* %_94 to {i64, i64, [0 x i8*]*}*
  %_96 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_95, i64 0, i32 0
  store i64 0, i64* %_96
  %_97 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_95, i64 0, i32 1
  store i64 0, i64* %_97
  %_98 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_95, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_98
  %_99 = getelementptr i8, i8* %_94, i64 1297036692682702848
  store i8* %_99, i8** %_11
  %_100 = call i8* @_bal_alloc (i64 8)
  %_101 = bitcast i8* %_100 to [1 x i8*]*
  %_102 = load i8*, i8** %_11
  %_103 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_101, i64 0, i64 0
  store i8* %_102, i8** %_103
  %_104 = bitcast [1 x i8*]* %_101 to [0 x i8*]*
  %_105 = call i8* @_bal_alloc (i64 24)
  %_106 = bitcast i8* %_105 to {i64, i64, [0 x i8*]*}*
  %_107 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_106, i64 0, i32 0
  store i64 1, i64* %_107
  %_108 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_106, i64 0, i32 1
  store i64 1, i64* %_108
  %_109 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_106, i64 0, i32 2
  store [0 x i8*]* %_104, [0 x i8*]** %_109
  %_110 = getelementptr i8, i8* %_105, i64 1297036692682702848
  store i8* %_110, i8** %_12
  %_111 = call i8* @_bal_alloc (i64 8)
  %_112 = bitcast i8* %_111 to [1 x i8*]*
  %_113 = load i8*, i8** %_12
  %_114 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_112, i64 0, i64 0
  store i8* %_113, i8** %_114
  %_115 = bitcast [1 x i8*]* %_112 to [0 x i8*]*
  %_116 = call i8* @_bal_alloc (i64 24)
  %_117 = bitcast i8* %_116 to {i64, i64, [0 x i8*]*}*
  %_118 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_117, i64 0, i32 0
  store i64 1, i64* %_118
  %_119 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_117, i64 0, i32 1
  store i64 1, i64* %_119
  %_120 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_117, i64 0, i32 2
  store [0 x i8*]* %_115, [0 x i8*]** %_120
  %_121 = getelementptr i8, i8* %_116, i64 1297036692682702848
  store i8* %_121, i8** %_13
  %_122 = call i8* @_bal_alloc (i64 8)
  %_123 = bitcast i8* %_122 to [1 x i8*]*
  %_124 = load i8*, i8** %_13
  %_125 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_123, i64 0, i64 0
  store i8* %_124, i8** %_125
  %_126 = bitcast [1 x i8*]* %_123 to [0 x i8*]*
  %_127 = call i8* @_bal_alloc (i64 24)
  %_128 = bitcast i8* %_127 to {i64, i64, [0 x i8*]*}*
  %_129 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_128, i64 0, i32 0
  store i64 1, i64* %_129
  %_130 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_128, i64 0, i32 1
  store i64 1, i64* %_130
  %_131 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_128, i64 0, i32 2
  store [0 x i8*]* %_126, [0 x i8*]** %_131
  %_132 = getelementptr i8, i8* %_127, i64 1297036692682702848
  store i8* %_132, i8** %_14
  %_133 = call i8* @_bal_alloc (i64 8)
  %_134 = bitcast i8* %_133 to [1 x i8*]*
  %_135 = load i8*, i8** %_14
  %_136 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_134, i64 0, i64 0
  store i8* %_135, i8** %_136
  %_137 = bitcast [1 x i8*]* %_134 to [0 x i8*]*
  %_138 = call i8* @_bal_alloc (i64 24)
  %_139 = bitcast i8* %_138 to {i64, i64, [0 x i8*]*}*
  %_140 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_139, i64 0, i32 0
  store i64 1, i64* %_140
  %_141 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_139, i64 0, i32 1
  store i64 1, i64* %_141
  %_142 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_139, i64 0, i32 2
  store [0 x i8*]* %_137, [0 x i8*]** %_142
  %_143 = getelementptr i8, i8* %_138, i64 1297036692682702848
  store i8* %_143, i8** %_15
  %_144 = call i8* @_bal_alloc (i64 8)
  %_145 = bitcast i8* %_144 to [1 x i8*]*
  %_146 = load i8*, i8** %_15
  %_147 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_145, i64 0, i64 0
  store i8* %_146, i8** %_147
  %_148 = bitcast [1 x i8*]* %_145 to [0 x i8*]*
  %_149 = call i8* @_bal_alloc (i64 24)
  %_150 = bitcast i8* %_149 to {i64, i64, [0 x i8*]*}*
  %_151 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_150, i64 0, i32 0
  store i64 1, i64* %_151
  %_152 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_150, i64 0, i32 1
  store i64 1, i64* %_152
  %_153 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_150, i64 0, i32 2
  store [0 x i8*]* %_148, [0 x i8*]** %_153
  %_154 = getelementptr i8, i8* %_149, i64 1297036692682702848
  store i8* %_154, i8** %_16
  %_155 = load i8*, i8** %_16
  call void @_Bio__println (i8* %_155)
  store i8* null, i8** %_17
  %_156 = call i8* @_bal_alloc (i64 24)
  %_157 = bitcast i8* %_156 to [3 x i8*]*
  %_158 = call i8* @_bal_alloc (i64 8)
  %_159 = bitcast i8* %_158 to i64*
  store i64 1, i64* %_159, align 8
  %_160 = getelementptr i8, i8* %_158, i64 504403158265495552
  %_161 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_157, i64 0, i64 0
  store i8* %_160, i8** %_161
  %_162 = zext i1 1 to i64
  %_163 = or i64 %_162, 72057594037927936
  %_164 = getelementptr i8, i8* null, i64 %_163
  %_165 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_157, i64 0, i64 1
  store i8* %_164, i8** %_165
  %_166 = call i8* @_bal_alloc (i64 8)
  %_167 = bitcast i8* %_166 to i64*
  store i64 21, i64* %_167, align 8
  %_168 = getelementptr i8, i8* %_166, i64 504403158265495552
  %_169 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_157, i64 0, i64 2
  store i8* %_168, i8** %_169
  %_170 = bitcast [3 x i8*]* %_157 to [0 x i8*]*
  %_171 = call i8* @_bal_alloc (i64 24)
  %_172 = bitcast i8* %_171 to {i64, i64, [0 x i8*]*}*
  %_173 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_172, i64 0, i32 0
  store i64 3, i64* %_173
  %_174 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_172, i64 0, i32 1
  store i64 3, i64* %_174
  %_175 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_172, i64 0, i32 2
  store [0 x i8*]* %_170, [0 x i8*]** %_175
  %_176 = getelementptr i8, i8* %_171, i64 1297036692682702848
  store i8* %_176, i8** %_18
  %_177 = call i8* @_bal_alloc (i64 24)
  %_178 = bitcast i8* %_177 to [3 x i8*]*
  %_179 = zext i1 0 to i64
  %_180 = or i64 %_179, 72057594037927936
  %_181 = getelementptr i8, i8* null, i64 %_180
  %_182 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_178, i64 0, i64 0
  store i8* %_181, i8** %_182
  %_183 = load i8*, i8** %_18
  %_184 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_178, i64 0, i64 1
  store i8* %_183, i8** %_184
  %_185 = call i8* @_bal_alloc (i64 8)
  %_186 = bitcast i8* %_185 to i64*
  store i64 0, i64* %_186, align 8
  %_187 = getelementptr i8, i8* %_185, i64 504403158265495552
  %_188 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_178, i64 0, i64 2
  store i8* %_187, i8** %_188
  %_189 = bitcast [3 x i8*]* %_178 to [0 x i8*]*
  %_190 = call i8* @_bal_alloc (i64 24)
  %_191 = bitcast i8* %_190 to {i64, i64, [0 x i8*]*}*
  %_192 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_191, i64 0, i32 0
  store i64 3, i64* %_192
  %_193 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_191, i64 0, i32 1
  store i64 3, i64* %_193
  %_194 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_191, i64 0, i32 2
  store [0 x i8*]* %_189, [0 x i8*]** %_194
  %_195 = getelementptr i8, i8* %_190, i64 1297036692682702848
  store i8* %_195, i8** %_19
  %_196 = load i8*, i8** %_19
  call void @_Bio__println (i8* %_196)
  store i8* null, i8** %_20
  ret void
L5:
  store i64 1793, i64* %_21
  br label %L2
}
