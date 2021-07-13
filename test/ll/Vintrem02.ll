@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i64
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i64
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i8 addrspace (1)*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8 addrspace (1)*
  %_24 = alloca i64
  %_25 = alloca i8 addrspace (1)*
  %_26 = alloca i64
  %_27 = alloca i8 addrspace (1)*
  %_28 = alloca i64
  %_29 = alloca i8 addrspace (1)*
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i8 addrspace (1)*
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i8 addrspace (1)*
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i8 addrspace (1)*
  %_39 = alloca i64
  %_40 = alloca i64
  %_41 = alloca i8 addrspace (1)*
  %_42 = alloca i64
  %_43 = alloca i64
  %_44 = alloca i8 addrspace (1)*
  %_45 = alloca i64
  %_46 = alloca i64
  %_47 = alloca i64
  %_48 = alloca i8 addrspace (1)*
  %_49 = alloca i64
  %_50 = alloca i64
  %_51 = alloca i64
  %_52 = alloca i8 addrspace (1)*
  %_53 = alloca i64
  %_54 = alloca i64
  %_55 = alloca i8 addrspace (1)*
  %_56 = alloca i64
  %_57 = alloca i64
  %_58 = alloca i8 addrspace (1)*
  %_59 = alloca i64
  %_60 = alloca i64
  %_61 = alloca i8 addrspace (1)*
  %_62 = alloca i64
  %_63 = alloca i64
  %_64 = alloca i64
  %_65 = alloca i8 addrspace (1)*
  %_66 = alloca i64
  %_67 = alloca i64
  %_68 = alloca i64
  %_69 = alloca i8 addrspace (1)*
  %_70 = alloca i64
  %_71 = alloca i64
  %_72 = alloca i8 addrspace (1)*
  %_73 = alloca i64
  %_74 = alloca i64
  %_75 = alloca i8 addrspace (1)*
  %_76 = alloca i64
  %_77 = alloca i64
  %_78 = alloca i8 addrspace (1)*
  %_79 = alloca i64
  %_80 = alloca i64
  %_81 = alloca i64
  %_82 = alloca i8 addrspace (1)*
  %_83 = alloca i64
  %_84 = alloca i64
  %_85 = alloca i64
  %_86 = alloca i8 addrspace (1)*
  %_87 = alloca i64
  %_88 = alloca i8
  %_89 = load i8*, i8** @_bal_stack_guard
  %_90 = icmp ult i8* %_88, %_89
  br i1 %_90, label %L3, label %L1
L1:
  %_91 = call i64 @_B_rem (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_91, i64* %_0
  %_92 = load i64, i64* %_0
  %_93 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_92)
  call void @_Bio__println (i8 addrspace (1)* %_93)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_94 = call i64 @_B_rem (i64 1, i64 9223372036854775806)
  store i64 %_94, i64* %_2
  %_95 = load i64, i64* %_2
  %_96 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_95)
  call void @_Bio__println (i8 addrspace (1)* %_96)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_97 = call i64 @_B_rem (i64 0, i64 9223372036854775806)
  store i64 %_97, i64* %_4
  %_98 = load i64, i64* %_4
  %_99 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_98)
  call void @_Bio__println (i8 addrspace (1)* %_99)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_100 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_101 = extractvalue {i64, i1} %_100, 1
  br i1 %_101, label %L5, label %L4
L2:
  %_289 = load i64, i64* %_87
  call void @_bal_panic (i64 %_289)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_102 = extractvalue {i64, i1} %_100, 0
  store i64 %_102, i64* %_6
  %_103 = load i64, i64* %_6
  %_104 = call i64 @_B_rem (i64 %_103, i64 9223372036854775806)
  store i64 %_104, i64* %_7
  %_105 = load i64, i64* %_7
  %_106 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_105)
  call void @_Bio__println (i8 addrspace (1)* %_106)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_107 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_108 = extractvalue {i64, i1} %_107, 1
  br i1 %_108, label %L7, label %L6
L5:
  store i64 1793, i64* %_87
  br label %L2
L6:
  %_109 = extractvalue {i64, i1} %_107, 0
  store i64 %_109, i64* %_9
  %_110 = load i64, i64* %_9
  %_111 = call i64 @_B_rem (i64 %_110, i64 9223372036854775806)
  store i64 %_111, i64* %_10
  %_112 = load i64, i64* %_10
  %_113 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_112)
  call void @_Bio__println (i8 addrspace (1)* %_113)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_114 = call i64 @_B_rem (i64 9223372036854775806, i64 10)
  store i64 %_114, i64* %_12
  %_115 = load i64, i64* %_12
  %_116 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_115)
  call void @_Bio__println (i8 addrspace (1)* %_116)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  %_117 = call i64 @_B_rem (i64 1, i64 10)
  store i64 %_117, i64* %_14
  %_118 = load i64, i64* %_14
  %_119 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_118)
  call void @_Bio__println (i8 addrspace (1)* %_119)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  %_120 = call i64 @_B_rem (i64 0, i64 10)
  store i64 %_120, i64* %_16
  %_121 = load i64, i64* %_16
  %_122 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_121)
  call void @_Bio__println (i8 addrspace (1)* %_122)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_123 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_124 = extractvalue {i64, i1} %_123, 1
  br i1 %_124, label %L9, label %L8
L7:
  store i64 2049, i64* %_87
  br label %L2
L8:
  %_125 = extractvalue {i64, i1} %_123, 0
  store i64 %_125, i64* %_18
  %_126 = load i64, i64* %_18
  %_127 = call i64 @_B_rem (i64 %_126, i64 10)
  store i64 %_127, i64* %_19
  %_128 = load i64, i64* %_19
  %_129 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_128)
  call void @_Bio__println (i8 addrspace (1)* %_129)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_130 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_131 = extractvalue {i64, i1} %_130, 1
  br i1 %_131, label %L11, label %L10
L9:
  store i64 3329, i64* %_87
  br label %L2
L10:
  %_132 = extractvalue {i64, i1} %_130, 0
  store i64 %_132, i64* %_21
  %_133 = load i64, i64* %_21
  %_134 = call i64 @_B_rem (i64 %_133, i64 10)
  store i64 %_134, i64* %_22
  %_135 = load i64, i64* %_22
  %_136 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_135)
  call void @_Bio__println (i8 addrspace (1)* %_136)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_137 = call i64 @_B_rem (i64 9223372036854775806, i64 1)
  store i64 %_137, i64* %_24
  %_138 = load i64, i64* %_24
  %_139 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_138)
  call void @_Bio__println (i8 addrspace (1)* %_139)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_25
  %_140 = call i64 @_B_rem (i64 1, i64 1)
  store i64 %_140, i64* %_26
  %_141 = load i64, i64* %_26
  %_142 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_141)
  call void @_Bio__println (i8 addrspace (1)* %_142)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_27
  %_143 = call i64 @_B_rem (i64 0, i64 1)
  store i64 %_143, i64* %_28
  %_144 = load i64, i64* %_28
  %_145 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_144)
  call void @_Bio__println (i8 addrspace (1)* %_145)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_29
  %_146 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_147 = extractvalue {i64, i1} %_146, 1
  br i1 %_147, label %L13, label %L12
L11:
  store i64 3585, i64* %_87
  br label %L2
L12:
  %_148 = extractvalue {i64, i1} %_146, 0
  store i64 %_148, i64* %_30
  %_149 = load i64, i64* %_30
  %_150 = call i64 @_B_rem (i64 %_149, i64 1)
  store i64 %_150, i64* %_31
  %_151 = load i64, i64* %_31
  %_152 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_151)
  call void @_Bio__println (i8 addrspace (1)* %_152)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_32
  %_153 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_154 = extractvalue {i64, i1} %_153, 1
  br i1 %_154, label %L15, label %L14
L13:
  store i64 4865, i64* %_87
  br label %L2
L14:
  %_155 = extractvalue {i64, i1} %_153, 0
  store i64 %_155, i64* %_33
  %_156 = load i64, i64* %_33
  %_157 = call i64 @_B_rem (i64 %_156, i64 1)
  store i64 %_157, i64* %_34
  %_158 = load i64, i64* %_34
  %_159 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_158)
  call void @_Bio__println (i8 addrspace (1)* %_159)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_35
  %_160 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_161 = extractvalue {i64, i1} %_160, 1
  br i1 %_161, label %L17, label %L16
L15:
  store i64 5121, i64* %_87
  br label %L2
L16:
  %_162 = extractvalue {i64, i1} %_160, 0
  store i64 %_162, i64* %_36
  %_163 = load i64, i64* %_36
  %_164 = call i64 @_B_rem (i64 9223372036854775806, i64 %_163)
  store i64 %_164, i64* %_37
  %_165 = load i64, i64* %_37
  %_166 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_165)
  call void @_Bio__println (i8 addrspace (1)* %_166)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_38
  %_167 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_168 = extractvalue {i64, i1} %_167, 1
  br i1 %_168, label %L19, label %L18
L17:
  store i64 5633, i64* %_87
  br label %L2
L18:
  %_169 = extractvalue {i64, i1} %_167, 0
  store i64 %_169, i64* %_39
  %_170 = load i64, i64* %_39
  %_171 = call i64 @_B_rem (i64 1, i64 %_170)
  store i64 %_171, i64* %_40
  %_172 = load i64, i64* %_40
  %_173 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_172)
  call void @_Bio__println (i8 addrspace (1)* %_173)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_41
  %_174 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_175 = extractvalue {i64, i1} %_174, 1
  br i1 %_175, label %L21, label %L20
L19:
  store i64 5889, i64* %_87
  br label %L2
L20:
  %_176 = extractvalue {i64, i1} %_174, 0
  store i64 %_176, i64* %_42
  %_177 = load i64, i64* %_42
  %_178 = call i64 @_B_rem (i64 0, i64 %_177)
  store i64 %_178, i64* %_43
  %_179 = load i64, i64* %_43
  %_180 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_179)
  call void @_Bio__println (i8 addrspace (1)* %_180)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_44
  %_181 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_182 = extractvalue {i64, i1} %_181, 1
  br i1 %_182, label %L23, label %L22
L21:
  store i64 6145, i64* %_87
  br label %L2
L22:
  %_183 = extractvalue {i64, i1} %_181, 0
  store i64 %_183, i64* %_45
  %_184 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_185 = extractvalue {i64, i1} %_184, 1
  br i1 %_185, label %L25, label %L24
L23:
  store i64 6401, i64* %_87
  br label %L2
L24:
  %_186 = extractvalue {i64, i1} %_184, 0
  store i64 %_186, i64* %_46
  %_187 = load i64, i64* %_45
  %_188 = load i64, i64* %_46
  %_189 = call i64 @_B_rem (i64 %_187, i64 %_188)
  store i64 %_189, i64* %_47
  %_190 = load i64, i64* %_47
  %_191 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_190)
  call void @_Bio__println (i8 addrspace (1)* %_191)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_48
  %_192 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_193 = extractvalue {i64, i1} %_192, 1
  br i1 %_193, label %L27, label %L26
L25:
  store i64 6401, i64* %_87
  br label %L2
L26:
  %_194 = extractvalue {i64, i1} %_192, 0
  store i64 %_194, i64* %_49
  %_195 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_196 = extractvalue {i64, i1} %_195, 1
  br i1 %_196, label %L29, label %L28
L27:
  store i64 6657, i64* %_87
  br label %L2
L28:
  %_197 = extractvalue {i64, i1} %_195, 0
  store i64 %_197, i64* %_50
  %_198 = load i64, i64* %_49
  %_199 = load i64, i64* %_50
  %_200 = call i64 @_B_rem (i64 %_198, i64 %_199)
  store i64 %_200, i64* %_51
  %_201 = load i64, i64* %_51
  %_202 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_201)
  call void @_Bio__println (i8 addrspace (1)* %_202)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_52
  %_203 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_204 = extractvalue {i64, i1} %_203, 1
  br i1 %_204, label %L31, label %L30
L29:
  store i64 6657, i64* %_87
  br label %L2
L30:
  %_205 = extractvalue {i64, i1} %_203, 0
  store i64 %_205, i64* %_53
  %_206 = load i64, i64* %_53
  %_207 = call i64 @_B_rem (i64 9223372036854775806, i64 %_206)
  store i64 %_207, i64* %_54
  %_208 = load i64, i64* %_54
  %_209 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_208)
  call void @_Bio__println (i8 addrspace (1)* %_209)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_55
  %_210 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_211 = extractvalue {i64, i1} %_210, 1
  br i1 %_211, label %L33, label %L32
L31:
  store i64 7169, i64* %_87
  br label %L2
L32:
  %_212 = extractvalue {i64, i1} %_210, 0
  store i64 %_212, i64* %_56
  %_213 = load i64, i64* %_56
  %_214 = call i64 @_B_rem (i64 1, i64 %_213)
  store i64 %_214, i64* %_57
  %_215 = load i64, i64* %_57
  %_216 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_215)
  call void @_Bio__println (i8 addrspace (1)* %_216)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_58
  %_217 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_218 = extractvalue {i64, i1} %_217, 1
  br i1 %_218, label %L35, label %L34
L33:
  store i64 7425, i64* %_87
  br label %L2
L34:
  %_219 = extractvalue {i64, i1} %_217, 0
  store i64 %_219, i64* %_59
  %_220 = load i64, i64* %_59
  %_221 = call i64 @_B_rem (i64 0, i64 %_220)
  store i64 %_221, i64* %_60
  %_222 = load i64, i64* %_60
  %_223 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_222)
  call void @_Bio__println (i8 addrspace (1)* %_223)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_61
  %_224 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_225 = extractvalue {i64, i1} %_224, 1
  br i1 %_225, label %L37, label %L36
L35:
  store i64 7681, i64* %_87
  br label %L2
L36:
  %_226 = extractvalue {i64, i1} %_224, 0
  store i64 %_226, i64* %_62
  %_227 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_228 = extractvalue {i64, i1} %_227, 1
  br i1 %_228, label %L39, label %L38
L37:
  store i64 7937, i64* %_87
  br label %L2
L38:
  %_229 = extractvalue {i64, i1} %_227, 0
  store i64 %_229, i64* %_63
  %_230 = load i64, i64* %_62
  %_231 = load i64, i64* %_63
  %_232 = call i64 @_B_rem (i64 %_230, i64 %_231)
  store i64 %_232, i64* %_64
  %_233 = load i64, i64* %_64
  %_234 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_233)
  call void @_Bio__println (i8 addrspace (1)* %_234)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_65
  %_235 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_236 = extractvalue {i64, i1} %_235, 1
  br i1 %_236, label %L41, label %L40
L39:
  store i64 7937, i64* %_87
  br label %L2
L40:
  %_237 = extractvalue {i64, i1} %_235, 0
  store i64 %_237, i64* %_66
  %_238 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 10)
  %_239 = extractvalue {i64, i1} %_238, 1
  br i1 %_239, label %L43, label %L42
L41:
  store i64 8193, i64* %_87
  br label %L2
L42:
  %_240 = extractvalue {i64, i1} %_238, 0
  store i64 %_240, i64* %_67
  %_241 = load i64, i64* %_66
  %_242 = load i64, i64* %_67
  %_243 = call i64 @_B_rem (i64 %_241, i64 %_242)
  store i64 %_243, i64* %_68
  %_244 = load i64, i64* %_68
  %_245 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_244)
  call void @_Bio__println (i8 addrspace (1)* %_245)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_69
  %_246 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_247 = extractvalue {i64, i1} %_246, 1
  br i1 %_247, label %L45, label %L44
L43:
  store i64 8193, i64* %_87
  br label %L2
L44:
  %_248 = extractvalue {i64, i1} %_246, 0
  store i64 %_248, i64* %_70
  %_249 = load i64, i64* %_70
  %_250 = call i64 @_B_rem (i64 9223372036854775806, i64 %_249)
  store i64 %_250, i64* %_71
  %_251 = load i64, i64* %_71
  %_252 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_251)
  call void @_Bio__println (i8 addrspace (1)* %_252)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_72
  %_253 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_254 = extractvalue {i64, i1} %_253, 1
  br i1 %_254, label %L47, label %L46
L45:
  store i64 8705, i64* %_87
  br label %L2
L46:
  %_255 = extractvalue {i64, i1} %_253, 0
  store i64 %_255, i64* %_73
  %_256 = load i64, i64* %_73
  %_257 = call i64 @_B_rem (i64 1, i64 %_256)
  store i64 %_257, i64* %_74
  %_258 = load i64, i64* %_74
  %_259 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_258)
  call void @_Bio__println (i8 addrspace (1)* %_259)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_75
  %_260 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_261 = extractvalue {i64, i1} %_260, 1
  br i1 %_261, label %L49, label %L48
L47:
  store i64 8961, i64* %_87
  br label %L2
L48:
  %_262 = extractvalue {i64, i1} %_260, 0
  store i64 %_262, i64* %_76
  %_263 = load i64, i64* %_76
  %_264 = call i64 @_B_rem (i64 0, i64 %_263)
  store i64 %_264, i64* %_77
  %_265 = load i64, i64* %_77
  %_266 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_265)
  call void @_Bio__println (i8 addrspace (1)* %_266)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_78
  %_267 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_268 = extractvalue {i64, i1} %_267, 1
  br i1 %_268, label %L51, label %L50
L49:
  store i64 9217, i64* %_87
  br label %L2
L50:
  %_269 = extractvalue {i64, i1} %_267, 0
  store i64 %_269, i64* %_79
  %_270 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_271 = extractvalue {i64, i1} %_270, 1
  br i1 %_271, label %L53, label %L52
L51:
  store i64 9473, i64* %_87
  br label %L2
L52:
  %_272 = extractvalue {i64, i1} %_270, 0
  store i64 %_272, i64* %_80
  %_273 = load i64, i64* %_79
  %_274 = load i64, i64* %_80
  %_275 = call i64 @_B_rem (i64 %_273, i64 %_274)
  store i64 %_275, i64* %_81
  %_276 = load i64, i64* %_81
  %_277 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_276)
  call void @_Bio__println (i8 addrspace (1)* %_277)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_82
  %_278 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_279 = extractvalue {i64, i1} %_278, 1
  br i1 %_279, label %L55, label %L54
L53:
  store i64 9473, i64* %_87
  br label %L2
L54:
  %_280 = extractvalue {i64, i1} %_278, 0
  store i64 %_280, i64* %_83
  %_281 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_282 = extractvalue {i64, i1} %_281, 1
  br i1 %_282, label %L57, label %L56
L55:
  store i64 9729, i64* %_87
  br label %L2
L56:
  %_283 = extractvalue {i64, i1} %_281, 0
  store i64 %_283, i64* %_84
  %_284 = load i64, i64* %_83
  %_285 = load i64, i64* %_84
  %_286 = call i64 @_B_rem (i64 %_284, i64 %_285)
  store i64 %_286, i64* %_85
  %_287 = load i64, i64* %_85
  %_288 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_287)
  call void @_Bio__println (i8 addrspace (1)* %_288)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_86
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
