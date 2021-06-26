@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i8*
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
  %_25 = alloca i8*
  %_26 = alloca i64
  %_27 = alloca i8*
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
  %_41 = alloca i8*
  %_42 = alloca i64
  %_43 = alloca i64
  %_44 = alloca i8*
  %_45 = alloca i64
  %_46 = alloca i64
  %_47 = alloca i64
  %_48 = alloca i8*
  %_49 = alloca i64
  %_50 = alloca i64
  %_51 = alloca i64
  %_52 = alloca i8*
  %_53 = alloca i64
  %_54 = alloca i64
  %_55 = alloca i8*
  %_56 = alloca i64
  %_57 = alloca i64
  %_58 = alloca i8*
  %_59 = alloca i64
  %_60 = alloca i64
  %_61 = alloca i8*
  %_62 = alloca i64
  %_63 = alloca i64
  %_64 = alloca i64
  %_65 = alloca i8*
  %_66 = alloca i64
  %_67 = alloca i64
  %_68 = alloca i64
  %_69 = alloca i8*
  %_70 = alloca i64
  %_71 = alloca i64
  %_72 = alloca i8*
  %_73 = alloca i64
  %_74 = alloca i64
  %_75 = alloca i8*
  %_76 = alloca i64
  %_77 = alloca i64
  %_78 = alloca i8*
  %_79 = alloca i64
  %_80 = alloca i64
  %_81 = alloca i64
  %_82 = alloca i8*
  %_83 = alloca i64
  %_84 = alloca i64
  %_85 = alloca i64
  %_86 = alloca i8*
  %_87 = alloca i8
  %_88 = load i8*, i8** @_bal_stack_guard
  %_89 = icmp ult i8* %_87, %_88
  br i1 %_89, label %L2, label %L1
L1:
  %_90 = call i64 @_B_rem (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_90, i64* %_0
  %_91 = load i64, i64* %_0
  %_92 = call i8* @_bal_alloc (i64 8)
  %_93 = bitcast i8* %_92 to i64*
  store i64 %_91, i64* %_93, align 8
  %_94 = getelementptr i8, i8* %_92, i64 144115188075855872
  call void @_Bio__println (i8* %_94)
  store i8* null, i8** %_1
  %_95 = call i64 @_B_rem (i64 1, i64 9223372036854775806)
  store i64 %_95, i64* %_2
  %_96 = load i64, i64* %_2
  %_97 = call i8* @_bal_alloc (i64 8)
  %_98 = bitcast i8* %_97 to i64*
  store i64 %_96, i64* %_98, align 8
  %_99 = getelementptr i8, i8* %_97, i64 144115188075855872
  call void @_Bio__println (i8* %_99)
  store i8* null, i8** %_3
  %_100 = call i64 @_B_rem (i64 0, i64 9223372036854775806)
  store i64 %_100, i64* %_4
  %_101 = load i64, i64* %_4
  %_102 = call i8* @_bal_alloc (i64 8)
  %_103 = bitcast i8* %_102 to i64*
  store i64 %_101, i64* %_103, align 8
  %_104 = getelementptr i8, i8* %_102, i64 144115188075855872
  call void @_Bio__println (i8* %_104)
  store i8* null, i8** %_5
  %_105 = call i64 @_B_rem (i64 -1, i64 9223372036854775806)
  store i64 %_105, i64* %_7
  %_106 = load i64, i64* %_7
  %_107 = call i8* @_bal_alloc (i64 8)
  %_108 = bitcast i8* %_107 to i64*
  store i64 %_106, i64* %_108, align 8
  %_109 = getelementptr i8, i8* %_107, i64 144115188075855872
  call void @_Bio__println (i8* %_109)
  store i8* null, i8** %_8
  %_110 = call i64 @_B_rem (i64 -9223372036854775806, i64 9223372036854775806)
  store i64 %_110, i64* %_10
  %_111 = load i64, i64* %_10
  %_112 = call i8* @_bal_alloc (i64 8)
  %_113 = bitcast i8* %_112 to i64*
  store i64 %_111, i64* %_113, align 8
  %_114 = getelementptr i8, i8* %_112, i64 144115188075855872
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_11
  %_115 = call i64 @_B_rem (i64 9223372036854775806, i64 10)
  store i64 %_115, i64* %_12
  %_116 = load i64, i64* %_12
  %_117 = call i8* @_bal_alloc (i64 8)
  %_118 = bitcast i8* %_117 to i64*
  store i64 %_116, i64* %_118, align 8
  %_119 = getelementptr i8, i8* %_117, i64 144115188075855872
  call void @_Bio__println (i8* %_119)
  store i8* null, i8** %_13
  %_120 = call i64 @_B_rem (i64 1, i64 10)
  store i64 %_120, i64* %_14
  %_121 = load i64, i64* %_14
  %_122 = call i8* @_bal_alloc (i64 8)
  %_123 = bitcast i8* %_122 to i64*
  store i64 %_121, i64* %_123, align 8
  %_124 = getelementptr i8, i8* %_122, i64 144115188075855872
  call void @_Bio__println (i8* %_124)
  store i8* null, i8** %_15
  %_125 = call i64 @_B_rem (i64 0, i64 10)
  store i64 %_125, i64* %_16
  %_126 = load i64, i64* %_16
  %_127 = call i8* @_bal_alloc (i64 8)
  %_128 = bitcast i8* %_127 to i64*
  store i64 %_126, i64* %_128, align 8
  %_129 = getelementptr i8, i8* %_127, i64 144115188075855872
  call void @_Bio__println (i8* %_129)
  store i8* null, i8** %_17
  %_130 = call i64 @_B_rem (i64 -1, i64 10)
  store i64 %_130, i64* %_19
  %_131 = load i64, i64* %_19
  %_132 = call i8* @_bal_alloc (i64 8)
  %_133 = bitcast i8* %_132 to i64*
  store i64 %_131, i64* %_133, align 8
  %_134 = getelementptr i8, i8* %_132, i64 144115188075855872
  call void @_Bio__println (i8* %_134)
  store i8* null, i8** %_20
  %_135 = call i64 @_B_rem (i64 -9223372036854775806, i64 10)
  store i64 %_135, i64* %_22
  %_136 = load i64, i64* %_22
  %_137 = call i8* @_bal_alloc (i64 8)
  %_138 = bitcast i8* %_137 to i64*
  store i64 %_136, i64* %_138, align 8
  %_139 = getelementptr i8, i8* %_137, i64 144115188075855872
  call void @_Bio__println (i8* %_139)
  store i8* null, i8** %_23
  %_140 = call i64 @_B_rem (i64 9223372036854775806, i64 1)
  store i64 %_140, i64* %_24
  %_141 = load i64, i64* %_24
  %_142 = call i8* @_bal_alloc (i64 8)
  %_143 = bitcast i8* %_142 to i64*
  store i64 %_141, i64* %_143, align 8
  %_144 = getelementptr i8, i8* %_142, i64 144115188075855872
  call void @_Bio__println (i8* %_144)
  store i8* null, i8** %_25
  %_145 = call i64 @_B_rem (i64 1, i64 1)
  store i64 %_145, i64* %_26
  %_146 = load i64, i64* %_26
  %_147 = call i8* @_bal_alloc (i64 8)
  %_148 = bitcast i8* %_147 to i64*
  store i64 %_146, i64* %_148, align 8
  %_149 = getelementptr i8, i8* %_147, i64 144115188075855872
  call void @_Bio__println (i8* %_149)
  store i8* null, i8** %_27
  %_150 = call i64 @_B_rem (i64 0, i64 1)
  store i64 %_150, i64* %_28
  %_151 = load i64, i64* %_28
  %_152 = call i8* @_bal_alloc (i64 8)
  %_153 = bitcast i8* %_152 to i64*
  store i64 %_151, i64* %_153, align 8
  %_154 = getelementptr i8, i8* %_152, i64 144115188075855872
  call void @_Bio__println (i8* %_154)
  store i8* null, i8** %_29
  %_155 = call i64 @_B_rem (i64 -1, i64 1)
  store i64 %_155, i64* %_31
  %_156 = load i64, i64* %_31
  %_157 = call i8* @_bal_alloc (i64 8)
  %_158 = bitcast i8* %_157 to i64*
  store i64 %_156, i64* %_158, align 8
  %_159 = getelementptr i8, i8* %_157, i64 144115188075855872
  call void @_Bio__println (i8* %_159)
  store i8* null, i8** %_32
  %_160 = call i64 @_B_rem (i64 -9223372036854775806, i64 1)
  store i64 %_160, i64* %_34
  %_161 = load i64, i64* %_34
  %_162 = call i8* @_bal_alloc (i64 8)
  %_163 = bitcast i8* %_162 to i64*
  store i64 %_161, i64* %_163, align 8
  %_164 = getelementptr i8, i8* %_162, i64 144115188075855872
  call void @_Bio__println (i8* %_164)
  store i8* null, i8** %_35
  %_165 = call i64 @_B_rem (i64 9223372036854775806, i64 -1)
  store i64 %_165, i64* %_37
  %_166 = load i64, i64* %_37
  %_167 = call i8* @_bal_alloc (i64 8)
  %_168 = bitcast i8* %_167 to i64*
  store i64 %_166, i64* %_168, align 8
  %_169 = getelementptr i8, i8* %_167, i64 144115188075855872
  call void @_Bio__println (i8* %_169)
  store i8* null, i8** %_38
  %_170 = call i64 @_B_rem (i64 1, i64 -1)
  store i64 %_170, i64* %_40
  %_171 = load i64, i64* %_40
  %_172 = call i8* @_bal_alloc (i64 8)
  %_173 = bitcast i8* %_172 to i64*
  store i64 %_171, i64* %_173, align 8
  %_174 = getelementptr i8, i8* %_172, i64 144115188075855872
  call void @_Bio__println (i8* %_174)
  store i8* null, i8** %_41
  %_175 = call i64 @_B_rem (i64 0, i64 -1)
  store i64 %_175, i64* %_43
  %_176 = load i64, i64* %_43
  %_177 = call i8* @_bal_alloc (i64 8)
  %_178 = bitcast i8* %_177 to i64*
  store i64 %_176, i64* %_178, align 8
  %_179 = getelementptr i8, i8* %_177, i64 144115188075855872
  call void @_Bio__println (i8* %_179)
  store i8* null, i8** %_44
  %_180 = call i64 @_B_rem (i64 -1, i64 -1)
  store i64 %_180, i64* %_47
  %_181 = load i64, i64* %_47
  %_182 = call i8* @_bal_alloc (i64 8)
  %_183 = bitcast i8* %_182 to i64*
  store i64 %_181, i64* %_183, align 8
  %_184 = getelementptr i8, i8* %_182, i64 144115188075855872
  call void @_Bio__println (i8* %_184)
  store i8* null, i8** %_48
  %_185 = call i64 @_B_rem (i64 -9223372036854775806, i64 -1)
  store i64 %_185, i64* %_51
  %_186 = load i64, i64* %_51
  %_187 = call i8* @_bal_alloc (i64 8)
  %_188 = bitcast i8* %_187 to i64*
  store i64 %_186, i64* %_188, align 8
  %_189 = getelementptr i8, i8* %_187, i64 144115188075855872
  call void @_Bio__println (i8* %_189)
  store i8* null, i8** %_52
  %_190 = call i64 @_B_rem (i64 9223372036854775806, i64 -10)
  store i64 %_190, i64* %_54
  %_191 = load i64, i64* %_54
  %_192 = call i8* @_bal_alloc (i64 8)
  %_193 = bitcast i8* %_192 to i64*
  store i64 %_191, i64* %_193, align 8
  %_194 = getelementptr i8, i8* %_192, i64 144115188075855872
  call void @_Bio__println (i8* %_194)
  store i8* null, i8** %_55
  %_195 = call i64 @_B_rem (i64 1, i64 -10)
  store i64 %_195, i64* %_57
  %_196 = load i64, i64* %_57
  %_197 = call i8* @_bal_alloc (i64 8)
  %_198 = bitcast i8* %_197 to i64*
  store i64 %_196, i64* %_198, align 8
  %_199 = getelementptr i8, i8* %_197, i64 144115188075855872
  call void @_Bio__println (i8* %_199)
  store i8* null, i8** %_58
  %_200 = call i64 @_B_rem (i64 0, i64 -10)
  store i64 %_200, i64* %_60
  %_201 = load i64, i64* %_60
  %_202 = call i8* @_bal_alloc (i64 8)
  %_203 = bitcast i8* %_202 to i64*
  store i64 %_201, i64* %_203, align 8
  %_204 = getelementptr i8, i8* %_202, i64 144115188075855872
  call void @_Bio__println (i8* %_204)
  store i8* null, i8** %_61
  %_205 = call i64 @_B_rem (i64 -1, i64 -10)
  store i64 %_205, i64* %_64
  %_206 = load i64, i64* %_64
  %_207 = call i8* @_bal_alloc (i64 8)
  %_208 = bitcast i8* %_207 to i64*
  store i64 %_206, i64* %_208, align 8
  %_209 = getelementptr i8, i8* %_207, i64 144115188075855872
  call void @_Bio__println (i8* %_209)
  store i8* null, i8** %_65
  %_210 = call i64 @_B_rem (i64 -9223372036854775806, i64 -10)
  store i64 %_210, i64* %_68
  %_211 = load i64, i64* %_68
  %_212 = call i8* @_bal_alloc (i64 8)
  %_213 = bitcast i8* %_212 to i64*
  store i64 %_211, i64* %_213, align 8
  %_214 = getelementptr i8, i8* %_212, i64 144115188075855872
  call void @_Bio__println (i8* %_214)
  store i8* null, i8** %_69
  %_215 = call i64 @_B_rem (i64 9223372036854775806, i64 -9223372036854775806)
  store i64 %_215, i64* %_71
  %_216 = load i64, i64* %_71
  %_217 = call i8* @_bal_alloc (i64 8)
  %_218 = bitcast i8* %_217 to i64*
  store i64 %_216, i64* %_218, align 8
  %_219 = getelementptr i8, i8* %_217, i64 144115188075855872
  call void @_Bio__println (i8* %_219)
  store i8* null, i8** %_72
  %_220 = call i64 @_B_rem (i64 1, i64 -9223372036854775806)
  store i64 %_220, i64* %_74
  %_221 = load i64, i64* %_74
  %_222 = call i8* @_bal_alloc (i64 8)
  %_223 = bitcast i8* %_222 to i64*
  store i64 %_221, i64* %_223, align 8
  %_224 = getelementptr i8, i8* %_222, i64 144115188075855872
  call void @_Bio__println (i8* %_224)
  store i8* null, i8** %_75
  %_225 = call i64 @_B_rem (i64 0, i64 -9223372036854775806)
  store i64 %_225, i64* %_77
  %_226 = load i64, i64* %_77
  %_227 = call i8* @_bal_alloc (i64 8)
  %_228 = bitcast i8* %_227 to i64*
  store i64 %_226, i64* %_228, align 8
  %_229 = getelementptr i8, i8* %_227, i64 144115188075855872
  call void @_Bio__println (i8* %_229)
  store i8* null, i8** %_78
  %_230 = call i64 @_B_rem (i64 -1, i64 -9223372036854775806)
  store i64 %_230, i64* %_81
  %_231 = load i64, i64* %_81
  %_232 = call i8* @_bal_alloc (i64 8)
  %_233 = bitcast i8* %_232 to i64*
  store i64 %_231, i64* %_233, align 8
  %_234 = getelementptr i8, i8* %_232, i64 144115188075855872
  call void @_Bio__println (i8* %_234)
  store i8* null, i8** %_82
  %_235 = call i64 @_B_rem (i64 -9223372036854775806, i64 -9223372036854775806)
  store i64 %_235, i64* %_85
  %_236 = load i64, i64* %_85
  %_237 = call i8* @_bal_alloc (i64 8)
  %_238 = bitcast i8* %_237 to i64*
  store i64 %_236, i64* %_238, align 8
  %_239 = getelementptr i8, i8* %_237, i64 144115188075855872
  call void @_Bio__println (i8* %_239)
  store i8* null, i8** %_86
  ret void
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
define internal i64 @_B_rem (i64 %_0, i64 %_1) {
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
  %_9 = icmp eq i64 %_8, 0
  br i1 %_9, label %L4, label %L5
L2:
  %_15 = load i64, i64* %_3
  call void @_bal_panic (i64 %_15)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  store i64 2, i64* %_3
  br label %L2
L5:
  %_10 = icmp eq i64 %_7, -9223372036854775808
  %_11 = icmp eq i64 %_8, -1
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %L7, label %L6
L6:
  %_13 = srem i64 %_7, %_8
  store i64 %_13, i64* %_2
  br label %L8
L7:
  store i64 0, i64* %_2
  br label %L8
L8:
  %_14 = load i64, i64* %_2
  ret i64 %_14
}
