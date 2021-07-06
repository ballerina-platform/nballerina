@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_83 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_84 = extractvalue {i64, i1} %_83, 1
  br i1 %_84, label %L5, label %L4
L2:
  %_229 = load i64, i64* %_70
  call void @_bal_panic (i64 %_229)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_85 = extractvalue {i64, i1} %_83, 0
  store i64 %_85, i64* %_7
  %_86 = load i64, i64* %big
  %_87 = load i64, i64* %_7
  %_88 = icmp eq i64 %_86, %_87
  store i1 %_88, i1* %_6
  %_89 = load i1, i1* %_6
  call void @_B_printBoolean (i1 %_89)
  store i8* null, i8** %_8
  %_90 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_91 = extractvalue {i64, i1} %_90, 1
  br i1 %_91, label %L7, label %L6
L5:
  store i64 2561, i64* %_70
  br label %L2
L6:
  %_92 = extractvalue {i64, i1} %_90, 0
  store i64 %_92, i64* %_10
  %_93 = load i64, i64* %big
  %_94 = load i64, i64* %_10
  %_95 = icmp eq i64 %_93, %_94
  store i1 %_95, i1* %_9
  %_96 = load i1, i1* %_9
  call void @_B_printBoolean (i1 %_96)
  store i8* null, i8** %_11
  store i64 1, i64* %one
  %_97 = load i64, i64* %one
  %_98 = icmp eq i64 %_97, 9223372036854775806
  store i1 %_98, i1* %_12
  %_99 = load i1, i1* %_12
  call void @_B_printBoolean (i1 %_99)
  store i8* null, i8** %_13
  %_100 = load i64, i64* %one
  %_101 = icmp eq i64 %_100, 1
  store i1 %_101, i1* %_14
  %_102 = load i1, i1* %_14
  call void @_B_printBoolean (i1 %_102)
  store i8* null, i8** %_15
  %_103 = load i64, i64* %one
  %_104 = icmp eq i64 %_103, 0
  store i1 %_104, i1* %_16
  %_105 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_105)
  store i8* null, i8** %_17
  %_106 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_107 = extractvalue {i64, i1} %_106, 1
  br i1 %_107, label %L9, label %L8
L7:
  store i64 2817, i64* %_70
  br label %L2
L8:
  %_108 = extractvalue {i64, i1} %_106, 0
  store i64 %_108, i64* %_19
  %_109 = load i64, i64* %one
  %_110 = load i64, i64* %_19
  %_111 = icmp eq i64 %_109, %_110
  store i1 %_111, i1* %_18
  %_112 = load i1, i1* %_18
  call void @_B_printBoolean (i1 %_112)
  store i8* null, i8** %_20
  %_113 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_114 = extractvalue {i64, i1} %_113, 1
  br i1 %_114, label %L11, label %L10
L9:
  store i64 4353, i64* %_70
  br label %L2
L10:
  %_115 = extractvalue {i64, i1} %_113, 0
  store i64 %_115, i64* %_22
  %_116 = load i64, i64* %one
  %_117 = load i64, i64* %_22
  %_118 = icmp eq i64 %_116, %_117
  store i1 %_118, i1* %_21
  %_119 = load i1, i1* %_21
  call void @_B_printBoolean (i1 %_119)
  store i8* null, i8** %_23
  store i64 0, i64* %zero
  %_120 = load i64, i64* %zero
  %_121 = icmp eq i64 %_120, 9223372036854775806
  store i1 %_121, i1* %_24
  %_122 = load i1, i1* %_24
  call void @_B_printBoolean (i1 %_122)
  store i8* null, i8** %_25
  %_123 = load i64, i64* %zero
  %_124 = icmp eq i64 %_123, 1
  store i1 %_124, i1* %_26
  %_125 = load i1, i1* %_26
  call void @_B_printBoolean (i1 %_125)
  store i8* null, i8** %_27
  %_126 = load i64, i64* %zero
  %_127 = icmp eq i64 %_126, 0
  store i1 %_127, i1* %_28
  %_128 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_128)
  store i8* null, i8** %_29
  %_129 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_130 = extractvalue {i64, i1} %_129, 1
  br i1 %_130, label %L13, label %L12
L11:
  store i64 4609, i64* %_70
  br label %L2
L12:
  %_131 = extractvalue {i64, i1} %_129, 0
  store i64 %_131, i64* %_31
  %_132 = load i64, i64* %zero
  %_133 = load i64, i64* %_31
  %_134 = icmp eq i64 %_132, %_133
  store i1 %_134, i1* %_30
  %_135 = load i1, i1* %_30
  call void @_B_printBoolean (i1 %_135)
  store i8* null, i8** %_32
  %_136 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_137 = extractvalue {i64, i1} %_136, 1
  br i1 %_137, label %L15, label %L14
L13:
  store i64 6145, i64* %_70
  br label %L2
L14:
  %_138 = extractvalue {i64, i1} %_136, 0
  store i64 %_138, i64* %_34
  %_139 = load i64, i64* %zero
  %_140 = load i64, i64* %_34
  %_141 = icmp eq i64 %_139, %_140
  store i1 %_141, i1* %_33
  %_142 = load i1, i1* %_33
  call void @_B_printBoolean (i1 %_142)
  store i8* null, i8** %_35
  %_143 = load i64, i64* %one
  %_144 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_143)
  %_145 = extractvalue {i64, i1} %_144, 1
  br i1 %_145, label %L17, label %L16
L15:
  store i64 6401, i64* %_70
  br label %L2
L16:
  %_146 = extractvalue {i64, i1} %_144, 0
  store i64 %_146, i64* %_37
  %_147 = load i64, i64* %_37
  %_148 = icmp eq i64 %_147, 9223372036854775806
  store i1 %_148, i1* %_36
  %_149 = load i1, i1* %_36
  call void @_B_printBoolean (i1 %_149)
  store i8* null, i8** %_38
  %_150 = load i64, i64* %one
  %_151 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_150)
  %_152 = extractvalue {i64, i1} %_151, 1
  br i1 %_152, label %L19, label %L18
L17:
  store i64 6913, i64* %_70
  br label %L2
L18:
  %_153 = extractvalue {i64, i1} %_151, 0
  store i64 %_153, i64* %_40
  %_154 = load i64, i64* %_40
  %_155 = icmp eq i64 %_154, 1
  store i1 %_155, i1* %_39
  %_156 = load i1, i1* %_39
  call void @_B_printBoolean (i1 %_156)
  store i8* null, i8** %_41
  %_157 = load i64, i64* %one
  %_158 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_157)
  %_159 = extractvalue {i64, i1} %_158, 1
  br i1 %_159, label %L21, label %L20
L19:
  store i64 7169, i64* %_70
  br label %L2
L20:
  %_160 = extractvalue {i64, i1} %_158, 0
  store i64 %_160, i64* %_43
  %_161 = load i64, i64* %_43
  %_162 = icmp eq i64 %_161, 0
  store i1 %_162, i1* %_42
  %_163 = load i1, i1* %_42
  call void @_B_printBoolean (i1 %_163)
  store i8* null, i8** %_44
  %_164 = load i64, i64* %one
  %_165 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_164)
  %_166 = extractvalue {i64, i1} %_165, 1
  br i1 %_166, label %L23, label %L22
L21:
  store i64 7425, i64* %_70
  br label %L2
L22:
  %_167 = extractvalue {i64, i1} %_165, 0
  store i64 %_167, i64* %_46
  %_168 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_169 = extractvalue {i64, i1} %_168, 1
  br i1 %_169, label %L25, label %L24
L23:
  store i64 7681, i64* %_70
  br label %L2
L24:
  %_170 = extractvalue {i64, i1} %_168, 0
  store i64 %_170, i64* %_47
  %_171 = load i64, i64* %_46
  %_172 = load i64, i64* %_47
  %_173 = icmp eq i64 %_171, %_172
  store i1 %_173, i1* %_45
  %_174 = load i1, i1* %_45
  call void @_B_printBoolean (i1 %_174)
  store i8* null, i8** %_48
  %_175 = load i64, i64* %one
  %_176 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_175)
  %_177 = extractvalue {i64, i1} %_176, 1
  br i1 %_177, label %L27, label %L26
L25:
  store i64 7681, i64* %_70
  br label %L2
L26:
  %_178 = extractvalue {i64, i1} %_176, 0
  store i64 %_178, i64* %_50
  %_179 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_180 = extractvalue {i64, i1} %_179, 1
  br i1 %_180, label %L29, label %L28
L27:
  store i64 7937, i64* %_70
  br label %L2
L28:
  %_181 = extractvalue {i64, i1} %_179, 0
  store i64 %_181, i64* %_51
  %_182 = load i64, i64* %_50
  %_183 = load i64, i64* %_51
  %_184 = icmp eq i64 %_182, %_183
  store i1 %_184, i1* %_49
  %_185 = load i1, i1* %_49
  call void @_B_printBoolean (i1 %_185)
  store i8* null, i8** %_52
  %_186 = load i64, i64* %big
  %_187 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_186)
  %_188 = extractvalue {i64, i1} %_187, 1
  br i1 %_188, label %L31, label %L30
L29:
  store i64 7937, i64* %_70
  br label %L2
L30:
  %_189 = extractvalue {i64, i1} %_187, 0
  store i64 %_189, i64* %_54
  %_190 = load i64, i64* %_54
  %_191 = icmp eq i64 %_190, 9223372036854775806
  store i1 %_191, i1* %_53
  %_192 = load i1, i1* %_53
  call void @_B_printBoolean (i1 %_192)
  store i8* null, i8** %_55
  %_193 = load i64, i64* %big
  %_194 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_193)
  %_195 = extractvalue {i64, i1} %_194, 1
  br i1 %_195, label %L33, label %L32
L31:
  store i64 8449, i64* %_70
  br label %L2
L32:
  %_196 = extractvalue {i64, i1} %_194, 0
  store i64 %_196, i64* %_57
  %_197 = load i64, i64* %_57
  %_198 = icmp eq i64 %_197, 1
  store i1 %_198, i1* %_56
  %_199 = load i1, i1* %_56
  call void @_B_printBoolean (i1 %_199)
  store i8* null, i8** %_58
  %_200 = load i64, i64* %big
  %_201 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_200)
  %_202 = extractvalue {i64, i1} %_201, 1
  br i1 %_202, label %L35, label %L34
L33:
  store i64 8705, i64* %_70
  br label %L2
L34:
  %_203 = extractvalue {i64, i1} %_201, 0
  store i64 %_203, i64* %_60
  %_204 = load i64, i64* %_60
  %_205 = icmp eq i64 %_204, 0
  store i1 %_205, i1* %_59
  %_206 = load i1, i1* %_59
  call void @_B_printBoolean (i1 %_206)
  store i8* null, i8** %_61
  %_207 = load i64, i64* %big
  %_208 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_207)
  %_209 = extractvalue {i64, i1} %_208, 1
  br i1 %_209, label %L37, label %L36
L35:
  store i64 8961, i64* %_70
  br label %L2
L36:
  %_210 = extractvalue {i64, i1} %_208, 0
  store i64 %_210, i64* %_63
  %_211 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_212 = extractvalue {i64, i1} %_211, 1
  br i1 %_212, label %L39, label %L38
L37:
  store i64 9217, i64* %_70
  br label %L2
L38:
  %_213 = extractvalue {i64, i1} %_211, 0
  store i64 %_213, i64* %_64
  %_214 = load i64, i64* %_63
  %_215 = load i64, i64* %_64
  %_216 = icmp eq i64 %_214, %_215
  store i1 %_216, i1* %_62
  %_217 = load i1, i1* %_62
  call void @_B_printBoolean (i1 %_217)
  store i8* null, i8** %_65
  %_218 = load i64, i64* %big
  %_219 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_218)
  %_220 = extractvalue {i64, i1} %_219, 1
  br i1 %_220, label %L41, label %L40
L39:
  store i64 9217, i64* %_70
  br label %L2
L40:
  %_221 = extractvalue {i64, i1} %_219, 0
  store i64 %_221, i64* %_67
  %_222 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_223 = extractvalue {i64, i1} %_222, 1
  br i1 %_223, label %L43, label %L42
L41:
  store i64 9473, i64* %_70
  br label %L2
L42:
  %_224 = extractvalue {i64, i1} %_222, 0
  store i64 %_224, i64* %_68
  %_225 = load i64, i64* %_67
  %_226 = load i64, i64* %_68
  %_227 = icmp eq i64 %_225, %_226
  store i1 %_227, i1* %_66
  %_228 = load i1, i1* %_66
  call void @_B_printBoolean (i1 %_228)
  store i8* null, i8** %_69
  ret void
L43:
  store i64 9473, i64* %_70
  br label %L2
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
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 0, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 504403158265495552
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 10244)
  unreachable
}
