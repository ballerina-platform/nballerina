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
  %_87 = alloca i64
  %_88 = alloca i8
  %_89 = load i8*, i8** @_bal_stack_guard
  %_90 = icmp ult i8* %_88, %_89
  br i1 %_90, label %L3, label %L1
L1:
  %_91 = call i64 @_B_rem (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_91, i64* %_0
  %_92 = load i64, i64* %_0
  %_93 = call i8* @_bal_alloc (i64 8)
  %_94 = bitcast i8* %_93 to i64*
  store i64 %_92, i64* %_94, align 8
  %_95 = getelementptr i8, i8* %_93, i64 504403158265495552
  call void @_Bio__println (i8* %_95)
  store i8* null, i8** %_1
  %_96 = call i64 @_B_rem (i64 1, i64 9223372036854775806)
  store i64 %_96, i64* %_2
  %_97 = load i64, i64* %_2
  %_98 = call i8* @_bal_alloc (i64 8)
  %_99 = bitcast i8* %_98 to i64*
  store i64 %_97, i64* %_99, align 8
  %_100 = getelementptr i8, i8* %_98, i64 504403158265495552
  call void @_Bio__println (i8* %_100)
  store i8* null, i8** %_3
  %_101 = call i64 @_B_rem (i64 0, i64 9223372036854775806)
  store i64 %_101, i64* %_4
  %_102 = load i64, i64* %_4
  %_103 = call i8* @_bal_alloc (i64 8)
  %_104 = bitcast i8* %_103 to i64*
  store i64 %_102, i64* %_104, align 8
  %_105 = getelementptr i8, i8* %_103, i64 504403158265495552
  call void @_Bio__println (i8* %_105)
  store i8* null, i8** %_5
  %_106 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_107 = extractvalue {i64, i1} %_106, 1
  br i1 %_107, label %L5, label %L4
L2:
  %_349 = load i64, i64* %_87
  call void @_bal_panic (i64 %_349)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_108 = extractvalue {i64, i1} %_106, 0
  store i64 %_108, i64* %_6
  %_109 = load i64, i64* %_6
  %_110 = call i64 @_B_rem (i64 %_109, i64 9223372036854775806)
  store i64 %_110, i64* %_7
  %_111 = load i64, i64* %_7
  %_112 = call i8* @_bal_alloc (i64 8)
  %_113 = bitcast i8* %_112 to i64*
  store i64 %_111, i64* %_113, align 8
  %_114 = getelementptr i8, i8* %_112, i64 504403158265495552
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_8
  %_115 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_116 = extractvalue {i64, i1} %_115, 1
  br i1 %_116, label %L7, label %L6
L5:
  store i64 1793, i64* %_87
  br label %L2
L6:
  %_117 = extractvalue {i64, i1} %_115, 0
  store i64 %_117, i64* %_9
  %_118 = load i64, i64* %_9
  %_119 = call i64 @_B_rem (i64 %_118, i64 9223372036854775806)
  store i64 %_119, i64* %_10
  %_120 = load i64, i64* %_10
  %_121 = call i8* @_bal_alloc (i64 8)
  %_122 = bitcast i8* %_121 to i64*
  store i64 %_120, i64* %_122, align 8
  %_123 = getelementptr i8, i8* %_121, i64 504403158265495552
  call void @_Bio__println (i8* %_123)
  store i8* null, i8** %_11
  %_124 = call i64 @_B_rem (i64 9223372036854775806, i64 10)
  store i64 %_124, i64* %_12
  %_125 = load i64, i64* %_12
  %_126 = call i8* @_bal_alloc (i64 8)
  %_127 = bitcast i8* %_126 to i64*
  store i64 %_125, i64* %_127, align 8
  %_128 = getelementptr i8, i8* %_126, i64 504403158265495552
  call void @_Bio__println (i8* %_128)
  store i8* null, i8** %_13
  %_129 = call i64 @_B_rem (i64 1, i64 10)
  store i64 %_129, i64* %_14
  %_130 = load i64, i64* %_14
  %_131 = call i8* @_bal_alloc (i64 8)
  %_132 = bitcast i8* %_131 to i64*
  store i64 %_130, i64* %_132, align 8
  %_133 = getelementptr i8, i8* %_131, i64 504403158265495552
  call void @_Bio__println (i8* %_133)
  store i8* null, i8** %_15
  %_134 = call i64 @_B_rem (i64 0, i64 10)
  store i64 %_134, i64* %_16
  %_135 = load i64, i64* %_16
  %_136 = call i8* @_bal_alloc (i64 8)
  %_137 = bitcast i8* %_136 to i64*
  store i64 %_135, i64* %_137, align 8
  %_138 = getelementptr i8, i8* %_136, i64 504403158265495552
  call void @_Bio__println (i8* %_138)
  store i8* null, i8** %_17
  %_139 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_140 = extractvalue {i64, i1} %_139, 1
  br i1 %_140, label %L9, label %L8
L7:
  store i64 2049, i64* %_87
  br label %L2
L8:
  %_141 = extractvalue {i64, i1} %_139, 0
  store i64 %_141, i64* %_18
  %_142 = load i64, i64* %_18
  %_143 = call i64 @_B_rem (i64 %_142, i64 10)
  store i64 %_143, i64* %_19
  %_144 = load i64, i64* %_19
  %_145 = call i8* @_bal_alloc (i64 8)
  %_146 = bitcast i8* %_145 to i64*
  store i64 %_144, i64* %_146, align 8
  %_147 = getelementptr i8, i8* %_145, i64 504403158265495552
  call void @_Bio__println (i8* %_147)
  store i8* null, i8** %_20
  %_148 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_149 = extractvalue {i64, i1} %_148, 1
  br i1 %_149, label %L11, label %L10
L9:
  store i64 3329, i64* %_87
  br label %L2
L10:
  %_150 = extractvalue {i64, i1} %_148, 0
  store i64 %_150, i64* %_21
  %_151 = load i64, i64* %_21
  %_152 = call i64 @_B_rem (i64 %_151, i64 10)
  store i64 %_152, i64* %_22
  %_153 = load i64, i64* %_22
  %_154 = call i8* @_bal_alloc (i64 8)
  %_155 = bitcast i8* %_154 to i64*
  store i64 %_153, i64* %_155, align 8
  %_156 = getelementptr i8, i8* %_154, i64 504403158265495552
  call void @_Bio__println (i8* %_156)
  store i8* null, i8** %_23
  %_157 = call i64 @_B_rem (i64 9223372036854775806, i64 1)
  store i64 %_157, i64* %_24
  %_158 = load i64, i64* %_24
  %_159 = call i8* @_bal_alloc (i64 8)
  %_160 = bitcast i8* %_159 to i64*
  store i64 %_158, i64* %_160, align 8
  %_161 = getelementptr i8, i8* %_159, i64 504403158265495552
  call void @_Bio__println (i8* %_161)
  store i8* null, i8** %_25
  %_162 = call i64 @_B_rem (i64 1, i64 1)
  store i64 %_162, i64* %_26
  %_163 = load i64, i64* %_26
  %_164 = call i8* @_bal_alloc (i64 8)
  %_165 = bitcast i8* %_164 to i64*
  store i64 %_163, i64* %_165, align 8
  %_166 = getelementptr i8, i8* %_164, i64 504403158265495552
  call void @_Bio__println (i8* %_166)
  store i8* null, i8** %_27
  %_167 = call i64 @_B_rem (i64 0, i64 1)
  store i64 %_167, i64* %_28
  %_168 = load i64, i64* %_28
  %_169 = call i8* @_bal_alloc (i64 8)
  %_170 = bitcast i8* %_169 to i64*
  store i64 %_168, i64* %_170, align 8
  %_171 = getelementptr i8, i8* %_169, i64 504403158265495552
  call void @_Bio__println (i8* %_171)
  store i8* null, i8** %_29
  %_172 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_173 = extractvalue {i64, i1} %_172, 1
  br i1 %_173, label %L13, label %L12
L11:
  store i64 3585, i64* %_87
  br label %L2
L12:
  %_174 = extractvalue {i64, i1} %_172, 0
  store i64 %_174, i64* %_30
  %_175 = load i64, i64* %_30
  %_176 = call i64 @_B_rem (i64 %_175, i64 1)
  store i64 %_176, i64* %_31
  %_177 = load i64, i64* %_31
  %_178 = call i8* @_bal_alloc (i64 8)
  %_179 = bitcast i8* %_178 to i64*
  store i64 %_177, i64* %_179, align 8
  %_180 = getelementptr i8, i8* %_178, i64 504403158265495552
  call void @_Bio__println (i8* %_180)
  store i8* null, i8** %_32
  %_181 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_182 = extractvalue {i64, i1} %_181, 1
  br i1 %_182, label %L15, label %L14
L13:
  store i64 4865, i64* %_87
  br label %L2
L14:
  %_183 = extractvalue {i64, i1} %_181, 0
  store i64 %_183, i64* %_33
  %_184 = load i64, i64* %_33
  %_185 = call i64 @_B_rem (i64 %_184, i64 1)
  store i64 %_185, i64* %_34
  %_186 = load i64, i64* %_34
  %_187 = call i8* @_bal_alloc (i64 8)
  %_188 = bitcast i8* %_187 to i64*
  store i64 %_186, i64* %_188, align 8
  %_189 = getelementptr i8, i8* %_187, i64 504403158265495552
  call void @_Bio__println (i8* %_189)
  store i8* null, i8** %_35
  %_190 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_191 = extractvalue {i64, i1} %_190, 1
  br i1 %_191, label %L17, label %L16
L15:
  store i64 5121, i64* %_87
  br label %L2
L16:
  %_192 = extractvalue {i64, i1} %_190, 0
  store i64 %_192, i64* %_36
  %_193 = load i64, i64* %_36
  %_194 = call i64 @_B_rem (i64 9223372036854775806, i64 %_193)
  store i64 %_194, i64* %_37
  %_195 = load i64, i64* %_37
  %_196 = call i8* @_bal_alloc (i64 8)
  %_197 = bitcast i8* %_196 to i64*
  store i64 %_195, i64* %_197, align 8
  %_198 = getelementptr i8, i8* %_196, i64 504403158265495552
  call void @_Bio__println (i8* %_198)
  store i8* null, i8** %_38
  %_199 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_200 = extractvalue {i64, i1} %_199, 1
  br i1 %_200, label %L19, label %L18
L17:
  store i64 5633, i64* %_87
  br label %L2
L18:
  %_201 = extractvalue {i64, i1} %_199, 0
  store i64 %_201, i64* %_39
  %_202 = load i64, i64* %_39
  %_203 = call i64 @_B_rem (i64 1, i64 %_202)
  store i64 %_203, i64* %_40
  %_204 = load i64, i64* %_40
  %_205 = call i8* @_bal_alloc (i64 8)
  %_206 = bitcast i8* %_205 to i64*
  store i64 %_204, i64* %_206, align 8
  %_207 = getelementptr i8, i8* %_205, i64 504403158265495552
  call void @_Bio__println (i8* %_207)
  store i8* null, i8** %_41
  %_208 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_209 = extractvalue {i64, i1} %_208, 1
  br i1 %_209, label %L21, label %L20
L19:
  store i64 5889, i64* %_87
  br label %L2
L20:
  %_210 = extractvalue {i64, i1} %_208, 0
  store i64 %_210, i64* %_42
  %_211 = load i64, i64* %_42
  %_212 = call i64 @_B_rem (i64 0, i64 %_211)
  store i64 %_212, i64* %_43
  %_213 = load i64, i64* %_43
  %_214 = call i8* @_bal_alloc (i64 8)
  %_215 = bitcast i8* %_214 to i64*
  store i64 %_213, i64* %_215, align 8
  %_216 = getelementptr i8, i8* %_214, i64 504403158265495552
  call void @_Bio__println (i8* %_216)
  store i8* null, i8** %_44
  %_217 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_218 = extractvalue {i64, i1} %_217, 1
  br i1 %_218, label %L23, label %L22
L21:
  store i64 6145, i64* %_87
  br label %L2
L22:
  %_219 = extractvalue {i64, i1} %_217, 0
  store i64 %_219, i64* %_45
  %_220 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_221 = extractvalue {i64, i1} %_220, 1
  br i1 %_221, label %L25, label %L24
L23:
  store i64 6401, i64* %_87
  br label %L2
L24:
  %_222 = extractvalue {i64, i1} %_220, 0
  store i64 %_222, i64* %_46
  %_223 = load i64, i64* %_45
  %_224 = load i64, i64* %_46
  %_225 = call i64 @_B_rem (i64 %_223, i64 %_224)
  store i64 %_225, i64* %_47
  %_226 = load i64, i64* %_47
  %_227 = call i8* @_bal_alloc (i64 8)
  %_228 = bitcast i8* %_227 to i64*
  store i64 %_226, i64* %_228, align 8
  %_229 = getelementptr i8, i8* %_227, i64 504403158265495552
  call void @_Bio__println (i8* %_229)
  store i8* null, i8** %_48
  %_230 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_231 = extractvalue {i64, i1} %_230, 1
  br i1 %_231, label %L27, label %L26
L25:
  store i64 6401, i64* %_87
  br label %L2
L26:
  %_232 = extractvalue {i64, i1} %_230, 0
  store i64 %_232, i64* %_49
  %_233 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_234 = extractvalue {i64, i1} %_233, 1
  br i1 %_234, label %L29, label %L28
L27:
  store i64 6657, i64* %_87
  br label %L2
L28:
  %_235 = extractvalue {i64, i1} %_233, 0
  store i64 %_235, i64* %_50
  %_236 = load i64, i64* %_49
  %_237 = load i64, i64* %_50
  %_238 = call i64 @_B_rem (i64 %_236, i64 %_237)
  store i64 %_238, i64* %_51
  %_239 = load i64, i64* %_51
  %_240 = call i8* @_bal_alloc (i64 8)
  %_241 = bitcast i8* %_240 to i64*
  store i64 %_239, i64* %_241, align 8
  %_242 = getelementptr i8, i8* %_240, i64 504403158265495552
  call void @_Bio__println (i8* %_242)
  store i8* null, i8** %_52
  %_243 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_244 = extractvalue {i64, i1} %_243, 1
  br i1 %_244, label %L31, label %L30
L29:
  store i64 6657, i64* %_87
  br label %L2
L30:
  %_245 = extractvalue {i64, i1} %_243, 0
  store i64 %_245, i64* %_53
  %_246 = load i64, i64* %_53
  %_247 = call i64 @_B_rem (i64 9223372036854775806, i64 %_246)
  store i64 %_247, i64* %_54
  %_248 = load i64, i64* %_54
  %_249 = call i8* @_bal_alloc (i64 8)
  %_250 = bitcast i8* %_249 to i64*
  store i64 %_248, i64* %_250, align 8
  %_251 = getelementptr i8, i8* %_249, i64 504403158265495552
  call void @_Bio__println (i8* %_251)
  store i8* null, i8** %_55
  %_252 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_253 = extractvalue {i64, i1} %_252, 1
  br i1 %_253, label %L33, label %L32
L31:
  store i64 7169, i64* %_87
  br label %L2
L32:
  %_254 = extractvalue {i64, i1} %_252, 0
  store i64 %_254, i64* %_56
  %_255 = load i64, i64* %_56
  %_256 = call i64 @_B_rem (i64 1, i64 %_255)
  store i64 %_256, i64* %_57
  %_257 = load i64, i64* %_57
  %_258 = call i8* @_bal_alloc (i64 8)
  %_259 = bitcast i8* %_258 to i64*
  store i64 %_257, i64* %_259, align 8
  %_260 = getelementptr i8, i8* %_258, i64 504403158265495552
  call void @_Bio__println (i8* %_260)
  store i8* null, i8** %_58
  %_261 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_262 = extractvalue {i64, i1} %_261, 1
  br i1 %_262, label %L35, label %L34
L33:
  store i64 7425, i64* %_87
  br label %L2
L34:
  %_263 = extractvalue {i64, i1} %_261, 0
  store i64 %_263, i64* %_59
  %_264 = load i64, i64* %_59
  %_265 = call i64 @_B_rem (i64 0, i64 %_264)
  store i64 %_265, i64* %_60
  %_266 = load i64, i64* %_60
  %_267 = call i8* @_bal_alloc (i64 8)
  %_268 = bitcast i8* %_267 to i64*
  store i64 %_266, i64* %_268, align 8
  %_269 = getelementptr i8, i8* %_267, i64 504403158265495552
  call void @_Bio__println (i8* %_269)
  store i8* null, i8** %_61
  %_270 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_271 = extractvalue {i64, i1} %_270, 1
  br i1 %_271, label %L37, label %L36
L35:
  store i64 7681, i64* %_87
  br label %L2
L36:
  %_272 = extractvalue {i64, i1} %_270, 0
  store i64 %_272, i64* %_62
  %_273 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_274 = extractvalue {i64, i1} %_273, 1
  br i1 %_274, label %L39, label %L38
L37:
  store i64 7937, i64* %_87
  br label %L2
L38:
  %_275 = extractvalue {i64, i1} %_273, 0
  store i64 %_275, i64* %_63
  %_276 = load i64, i64* %_62
  %_277 = load i64, i64* %_63
  %_278 = call i64 @_B_rem (i64 %_276, i64 %_277)
  store i64 %_278, i64* %_64
  %_279 = load i64, i64* %_64
  %_280 = call i8* @_bal_alloc (i64 8)
  %_281 = bitcast i8* %_280 to i64*
  store i64 %_279, i64* %_281, align 8
  %_282 = getelementptr i8, i8* %_280, i64 504403158265495552
  call void @_Bio__println (i8* %_282)
  store i8* null, i8** %_65
  %_283 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_284 = extractvalue {i64, i1} %_283, 1
  br i1 %_284, label %L41, label %L40
L39:
  store i64 7937, i64* %_87
  br label %L2
L40:
  %_285 = extractvalue {i64, i1} %_283, 0
  store i64 %_285, i64* %_66
  %_286 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_287 = extractvalue {i64, i1} %_286, 1
  br i1 %_287, label %L43, label %L42
L41:
  store i64 8193, i64* %_87
  br label %L2
L42:
  %_288 = extractvalue {i64, i1} %_286, 0
  store i64 %_288, i64* %_67
  %_289 = load i64, i64* %_66
  %_290 = load i64, i64* %_67
  %_291 = call i64 @_B_rem (i64 %_289, i64 %_290)
  store i64 %_291, i64* %_68
  %_292 = load i64, i64* %_68
  %_293 = call i8* @_bal_alloc (i64 8)
  %_294 = bitcast i8* %_293 to i64*
  store i64 %_292, i64* %_294, align 8
  %_295 = getelementptr i8, i8* %_293, i64 504403158265495552
  call void @_Bio__println (i8* %_295)
  store i8* null, i8** %_69
  %_296 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_297 = extractvalue {i64, i1} %_296, 1
  br i1 %_297, label %L45, label %L44
L43:
  store i64 8193, i64* %_87
  br label %L2
L44:
  %_298 = extractvalue {i64, i1} %_296, 0
  store i64 %_298, i64* %_70
  %_299 = load i64, i64* %_70
  %_300 = call i64 @_B_rem (i64 9223372036854775806, i64 %_299)
  store i64 %_300, i64* %_71
  %_301 = load i64, i64* %_71
  %_302 = call i8* @_bal_alloc (i64 8)
  %_303 = bitcast i8* %_302 to i64*
  store i64 %_301, i64* %_303, align 8
  %_304 = getelementptr i8, i8* %_302, i64 504403158265495552
  call void @_Bio__println (i8* %_304)
  store i8* null, i8** %_72
  %_305 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_306 = extractvalue {i64, i1} %_305, 1
  br i1 %_306, label %L47, label %L46
L45:
  store i64 8705, i64* %_87
  br label %L2
L46:
  %_307 = extractvalue {i64, i1} %_305, 0
  store i64 %_307, i64* %_73
  %_308 = load i64, i64* %_73
  %_309 = call i64 @_B_rem (i64 1, i64 %_308)
  store i64 %_309, i64* %_74
  %_310 = load i64, i64* %_74
  %_311 = call i8* @_bal_alloc (i64 8)
  %_312 = bitcast i8* %_311 to i64*
  store i64 %_310, i64* %_312, align 8
  %_313 = getelementptr i8, i8* %_311, i64 504403158265495552
  call void @_Bio__println (i8* %_313)
  store i8* null, i8** %_75
  %_314 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_315 = extractvalue {i64, i1} %_314, 1
  br i1 %_315, label %L49, label %L48
L47:
  store i64 8961, i64* %_87
  br label %L2
L48:
  %_316 = extractvalue {i64, i1} %_314, 0
  store i64 %_316, i64* %_76
  %_317 = load i64, i64* %_76
  %_318 = call i64 @_B_rem (i64 0, i64 %_317)
  store i64 %_318, i64* %_77
  %_319 = load i64, i64* %_77
  %_320 = call i8* @_bal_alloc (i64 8)
  %_321 = bitcast i8* %_320 to i64*
  store i64 %_319, i64* %_321, align 8
  %_322 = getelementptr i8, i8* %_320, i64 504403158265495552
  call void @_Bio__println (i8* %_322)
  store i8* null, i8** %_78
  %_323 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_324 = extractvalue {i64, i1} %_323, 1
  br i1 %_324, label %L51, label %L50
L49:
  store i64 9217, i64* %_87
  br label %L2
L50:
  %_325 = extractvalue {i64, i1} %_323, 0
  store i64 %_325, i64* %_79
  %_326 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_327 = extractvalue {i64, i1} %_326, 1
  br i1 %_327, label %L53, label %L52
L51:
  store i64 9473, i64* %_87
  br label %L2
L52:
  %_328 = extractvalue {i64, i1} %_326, 0
  store i64 %_328, i64* %_80
  %_329 = load i64, i64* %_79
  %_330 = load i64, i64* %_80
  %_331 = call i64 @_B_rem (i64 %_329, i64 %_330)
  store i64 %_331, i64* %_81
  %_332 = load i64, i64* %_81
  %_333 = call i8* @_bal_alloc (i64 8)
  %_334 = bitcast i8* %_333 to i64*
  store i64 %_332, i64* %_334, align 8
  %_335 = getelementptr i8, i8* %_333, i64 504403158265495552
  call void @_Bio__println (i8* %_335)
  store i8* null, i8** %_82
  %_336 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_337 = extractvalue {i64, i1} %_336, 1
  br i1 %_337, label %L55, label %L54
L53:
  store i64 9473, i64* %_87
  br label %L2
L54:
  %_338 = extractvalue {i64, i1} %_336, 0
  store i64 %_338, i64* %_83
  %_339 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_340 = extractvalue {i64, i1} %_339, 1
  br i1 %_340, label %L57, label %L56
L55:
  store i64 9729, i64* %_87
  br label %L2
L56:
  %_341 = extractvalue {i64, i1} %_339, 0
  store i64 %_341, i64* %_84
  %_342 = load i64, i64* %_83
  %_343 = load i64, i64* %_84
  %_344 = call i64 @_B_rem (i64 %_342, i64 %_343)
  store i64 %_344, i64* %_85
  %_345 = load i64, i64* %_85
  %_346 = call i8* @_bal_alloc (i64 8)
  %_347 = bitcast i8* %_346 to i64*
  store i64 %_345, i64* %_347, align 8
  %_348 = getelementptr i8, i8* %_346, i64 504403158265495552
  call void @_Bio__println (i8* %_348)
  store i8* null, i8** %_86
  ret void
L57:
  store i64 9729, i64* %_87
  br label %L2
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
  call void @_bal_panic (i64 10500)
  unreachable
L4:
  store i64 10754, i64* %_3
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
