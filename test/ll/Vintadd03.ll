@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i8 addrspace (1)*
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
  %_39 = alloca i8 addrspace (1)*
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
  %_53 = alloca i8 addrspace (1)*
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
  %_69 = alloca i8 addrspace (1)*
  %_70 = alloca i64
  %_71 = alloca i8
  %_72 = load i8*, i8** @_bal_stack_guard
  %_73 = icmp ult i8* %_71, %_72
  br i1 %_73, label %L3, label %L1
L1:
  %_74 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_75 = extractvalue {i64, i1} %_74, 1
  br i1 %_75, label %L5, label %L4
L2:
  %_277 = load i64, i64* %_70
  call void @_bal_panic (i64 %_277)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_76 = extractvalue {i64, i1} %_74, 0
  store i64 %_76, i64* %_0
  %_77 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_78 = extractvalue {i64, i1} %_77, 1
  br i1 %_78, label %L7, label %L6
L5:
  store i64 769, i64* %_70
  br label %L2
L6:
  %_79 = extractvalue {i64, i1} %_77, 0
  store i64 %_79, i64* %_1
  %_80 = load i64, i64* %_0
  %_81 = load i64, i64* %_1
  %_82 = call i64 @_B_add (i64 %_80, i64 %_81)
  store i64 %_82, i64* %_2
  %_83 = load i64, i64* %_2
  %_84 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_83)
  call void @_Bio__println (i8 addrspace (1)* %_84)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_85 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_86 = extractvalue {i64, i1} %_85, 1
  br i1 %_86, label %L9, label %L8
L7:
  store i64 769, i64* %_70
  br label %L2
L8:
  %_87 = extractvalue {i64, i1} %_85, 0
  store i64 %_87, i64* %_4
  %_88 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_89 = extractvalue {i64, i1} %_88, 1
  br i1 %_89, label %L11, label %L10
L9:
  store i64 1025, i64* %_70
  br label %L2
L10:
  %_90 = extractvalue {i64, i1} %_88, 0
  store i64 %_90, i64* %_5
  %_91 = load i64, i64* %_4
  %_92 = load i64, i64* %_5
  %_93 = call i64 @_B_add (i64 %_91, i64 %_92)
  store i64 %_93, i64* %_6
  %_94 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 11)
  %_95 = extractvalue {i64, i1} %_94, 1
  br i1 %_95, label %L13, label %L12
L11:
  store i64 1025, i64* %_70
  br label %L2
L12:
  %_96 = extractvalue {i64, i1} %_94, 0
  store i64 %_96, i64* %_7
  %_97 = load i64, i64* %_6
  %_98 = load i64, i64* %_7
  %_99 = call i64 @_B_add (i64 %_97, i64 %_98)
  store i64 %_99, i64* %_8
  %_100 = load i64, i64* %_8
  %_101 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_100)
  call void @_Bio__println (i8 addrspace (1)* %_101)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_102 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_103 = extractvalue {i64, i1} %_102, 1
  br i1 %_103, label %L15, label %L14
L13:
  store i64 1025, i64* %_70
  br label %L2
L14:
  %_104 = extractvalue {i64, i1} %_102, 0
  store i64 %_104, i64* %_10
  %_105 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_106 = extractvalue {i64, i1} %_105, 1
  br i1 %_106, label %L17, label %L16
L15:
  store i64 1281, i64* %_70
  br label %L2
L16:
  %_107 = extractvalue {i64, i1} %_105, 0
  store i64 %_107, i64* %_11
  %_108 = load i64, i64* %_10
  %_109 = load i64, i64* %_11
  %_110 = call i64 @_B_add (i64 %_108, i64 %_109)
  store i64 %_110, i64* %_12
  %_111 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_112 = extractvalue {i64, i1} %_111, 1
  br i1 %_112, label %L19, label %L18
L17:
  store i64 1281, i64* %_70
  br label %L2
L18:
  %_113 = extractvalue {i64, i1} %_111, 0
  store i64 %_113, i64* %_13
  %_114 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9)
  %_115 = extractvalue {i64, i1} %_114, 1
  br i1 %_115, label %L21, label %L20
L19:
  store i64 1281, i64* %_70
  br label %L2
L20:
  %_116 = extractvalue {i64, i1} %_114, 0
  store i64 %_116, i64* %_14
  %_117 = load i64, i64* %_13
  %_118 = load i64, i64* %_14
  %_119 = call i64 @_B_add (i64 %_117, i64 %_118)
  store i64 %_119, i64* %_15
  %_120 = load i64, i64* %_12
  %_121 = load i64, i64* %_15
  %_122 = call i64 @_B_add (i64 %_120, i64 %_121)
  store i64 %_122, i64* %_16
  %_123 = load i64, i64* %_16
  %_124 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_123)
  call void @_Bio__println (i8 addrspace (1)* %_124)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_125 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_126 = extractvalue {i64, i1} %_125, 1
  br i1 %_126, label %L23, label %L22
L21:
  store i64 1281, i64* %_70
  br label %L2
L22:
  %_127 = extractvalue {i64, i1} %_125, 0
  store i64 %_127, i64* %_18
  %_128 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_129 = extractvalue {i64, i1} %_128, 1
  br i1 %_129, label %L25, label %L24
L23:
  store i64 1537, i64* %_70
  br label %L2
L24:
  %_130 = extractvalue {i64, i1} %_128, 0
  store i64 %_130, i64* %_19
  %_131 = load i64, i64* %_18
  %_132 = load i64, i64* %_19
  %_133 = call i64 @_B_add (i64 %_131, i64 %_132)
  store i64 %_133, i64* %_20
  %_134 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_135 = extractvalue {i64, i1} %_134, 1
  br i1 %_135, label %L27, label %L26
L25:
  store i64 1537, i64* %_70
  br label %L2
L26:
  %_136 = extractvalue {i64, i1} %_134, 0
  store i64 %_136, i64* %_21
  %_137 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9)
  %_138 = extractvalue {i64, i1} %_137, 1
  br i1 %_138, label %L29, label %L28
L27:
  store i64 1537, i64* %_70
  br label %L2
L28:
  %_139 = extractvalue {i64, i1} %_137, 0
  store i64 %_139, i64* %_22
  %_140 = load i64, i64* %_21
  %_141 = load i64, i64* %_22
  %_142 = call i64 @_B_add (i64 %_140, i64 %_141)
  store i64 %_142, i64* %_23
  %_143 = load i64, i64* %_20
  %_144 = load i64, i64* %_23
  %_145 = call i64 @_B_add (i64 %_143, i64 %_144)
  store i64 %_145, i64* %_24
  %_146 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 12)
  %_147 = extractvalue {i64, i1} %_146, 1
  br i1 %_147, label %L31, label %L30
L29:
  store i64 1537, i64* %_70
  br label %L2
L30:
  %_148 = extractvalue {i64, i1} %_146, 0
  store i64 %_148, i64* %_25
  %_149 = load i64, i64* %_24
  %_150 = load i64, i64* %_25
  %_151 = call i64 @_B_add (i64 %_149, i64 %_150)
  store i64 %_151, i64* %_26
  %_152 = load i64, i64* %_26
  %_153 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_152)
  call void @_Bio__println (i8 addrspace (1)* %_153)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_27
  %_154 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_155 = extractvalue {i64, i1} %_154, 1
  br i1 %_155, label %L33, label %L32
L31:
  store i64 1537, i64* %_70
  br label %L2
L32:
  %_156 = extractvalue {i64, i1} %_154, 0
  store i64 %_156, i64* %_28
  %_157 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_158 = extractvalue {i64, i1} %_157, 1
  br i1 %_158, label %L35, label %L34
L33:
  store i64 1793, i64* %_70
  br label %L2
L34:
  %_159 = extractvalue {i64, i1} %_157, 0
  store i64 %_159, i64* %_29
  %_160 = load i64, i64* %_28
  %_161 = load i64, i64* %_29
  %_162 = call i64 @_B_add (i64 %_160, i64 %_161)
  store i64 %_162, i64* %_30
  %_163 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_164 = extractvalue {i64, i1} %_163, 1
  br i1 %_164, label %L37, label %L36
L35:
  store i64 1793, i64* %_70
  br label %L2
L36:
  %_165 = extractvalue {i64, i1} %_163, 0
  store i64 %_165, i64* %_31
  %_166 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9)
  %_167 = extractvalue {i64, i1} %_166, 1
  br i1 %_167, label %L39, label %L38
L37:
  store i64 1793, i64* %_70
  br label %L2
L38:
  %_168 = extractvalue {i64, i1} %_166, 0
  store i64 %_168, i64* %_32
  %_169 = load i64, i64* %_31
  %_170 = load i64, i64* %_32
  %_171 = call i64 @_B_add (i64 %_169, i64 %_170)
  store i64 %_171, i64* %_33
  %_172 = load i64, i64* %_30
  %_173 = load i64, i64* %_33
  %_174 = call i64 @_B_add (i64 %_172, i64 %_173)
  store i64 %_174, i64* %_34
  %_175 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 4)
  %_176 = extractvalue {i64, i1} %_175, 1
  br i1 %_176, label %L41, label %L40
L39:
  store i64 1793, i64* %_70
  br label %L2
L40:
  %_177 = extractvalue {i64, i1} %_175, 0
  store i64 %_177, i64* %_35
  %_178 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 7)
  %_179 = extractvalue {i64, i1} %_178, 1
  br i1 %_179, label %L43, label %L42
L41:
  store i64 1793, i64* %_70
  br label %L2
L42:
  %_180 = extractvalue {i64, i1} %_178, 0
  store i64 %_180, i64* %_36
  %_181 = load i64, i64* %_35
  %_182 = load i64, i64* %_36
  %_183 = call i64 @_B_add (i64 %_181, i64 %_182)
  store i64 %_183, i64* %_37
  %_184 = load i64, i64* %_34
  %_185 = load i64, i64* %_37
  %_186 = call i64 @_B_add (i64 %_184, i64 %_185)
  store i64 %_186, i64* %_38
  %_187 = load i64, i64* %_38
  %_188 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_187)
  call void @_Bio__println (i8 addrspace (1)* %_188)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_39
  %_189 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_190 = extractvalue {i64, i1} %_189, 1
  br i1 %_190, label %L45, label %L44
L43:
  store i64 1793, i64* %_70
  br label %L2
L44:
  %_191 = extractvalue {i64, i1} %_189, 0
  store i64 %_191, i64* %_40
  %_192 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_193 = extractvalue {i64, i1} %_192, 1
  br i1 %_193, label %L47, label %L46
L45:
  store i64 2049, i64* %_70
  br label %L2
L46:
  %_194 = extractvalue {i64, i1} %_192, 0
  store i64 %_194, i64* %_41
  %_195 = load i64, i64* %_40
  %_196 = load i64, i64* %_41
  %_197 = call i64 @_B_add (i64 %_195, i64 %_196)
  store i64 %_197, i64* %_42
  %_198 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_199 = extractvalue {i64, i1} %_198, 1
  br i1 %_199, label %L49, label %L48
L47:
  store i64 2049, i64* %_70
  br label %L2
L48:
  %_200 = extractvalue {i64, i1} %_198, 0
  store i64 %_200, i64* %_43
  %_201 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9)
  %_202 = extractvalue {i64, i1} %_201, 1
  br i1 %_202, label %L51, label %L50
L49:
  store i64 2049, i64* %_70
  br label %L2
L50:
  %_203 = extractvalue {i64, i1} %_201, 0
  store i64 %_203, i64* %_44
  %_204 = load i64, i64* %_43
  %_205 = load i64, i64* %_44
  %_206 = call i64 @_B_add (i64 %_204, i64 %_205)
  store i64 %_206, i64* %_45
  %_207 = load i64, i64* %_42
  %_208 = load i64, i64* %_45
  %_209 = call i64 @_B_add (i64 %_207, i64 %_208)
  store i64 %_209, i64* %_46
  %_210 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 4)
  %_211 = extractvalue {i64, i1} %_210, 1
  br i1 %_211, label %L53, label %L52
L51:
  store i64 2049, i64* %_70
  br label %L2
L52:
  %_212 = extractvalue {i64, i1} %_210, 0
  store i64 %_212, i64* %_47
  %_213 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 7)
  %_214 = extractvalue {i64, i1} %_213, 1
  br i1 %_214, label %L55, label %L54
L53:
  store i64 2049, i64* %_70
  br label %L2
L54:
  %_215 = extractvalue {i64, i1} %_213, 0
  store i64 %_215, i64* %_48
  %_216 = load i64, i64* %_47
  %_217 = load i64, i64* %_48
  %_218 = call i64 @_B_add (i64 %_216, i64 %_217)
  store i64 %_218, i64* %_49
  %_219 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_220 = extractvalue {i64, i1} %_219, 1
  br i1 %_220, label %L57, label %L56
L55:
  store i64 2049, i64* %_70
  br label %L2
L56:
  %_221 = extractvalue {i64, i1} %_219, 0
  store i64 %_221, i64* %_50
  %_222 = load i64, i64* %_49
  %_223 = load i64, i64* %_50
  %_224 = call i64 @_B_add (i64 %_222, i64 %_223)
  store i64 %_224, i64* %_51
  %_225 = load i64, i64* %_46
  %_226 = load i64, i64* %_51
  %_227 = call i64 @_B_add (i64 %_225, i64 %_226)
  store i64 %_227, i64* %_52
  %_228 = load i64, i64* %_52
  %_229 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_228)
  call void @_Bio__println (i8 addrspace (1)* %_229)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_53
  %_230 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_231 = extractvalue {i64, i1} %_230, 1
  br i1 %_231, label %L59, label %L58
L57:
  store i64 2049, i64* %_70
  br label %L2
L58:
  %_232 = extractvalue {i64, i1} %_230, 0
  store i64 %_232, i64* %_54
  %_233 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_234 = extractvalue {i64, i1} %_233, 1
  br i1 %_234, label %L61, label %L60
L59:
  store i64 2305, i64* %_70
  br label %L2
L60:
  %_235 = extractvalue {i64, i1} %_233, 0
  store i64 %_235, i64* %_55
  %_236 = load i64, i64* %_54
  %_237 = load i64, i64* %_55
  %_238 = call i64 @_B_add (i64 %_236, i64 %_237)
  store i64 %_238, i64* %_56
  %_239 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 5)
  %_240 = extractvalue {i64, i1} %_239, 1
  br i1 %_240, label %L63, label %L62
L61:
  store i64 2305, i64* %_70
  br label %L2
L62:
  %_241 = extractvalue {i64, i1} %_239, 0
  store i64 %_241, i64* %_57
  %_242 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9)
  %_243 = extractvalue {i64, i1} %_242, 1
  br i1 %_243, label %L65, label %L64
L63:
  store i64 2305, i64* %_70
  br label %L2
L64:
  %_244 = extractvalue {i64, i1} %_242, 0
  store i64 %_244, i64* %_58
  %_245 = load i64, i64* %_57
  %_246 = load i64, i64* %_58
  %_247 = call i64 @_B_add (i64 %_245, i64 %_246)
  store i64 %_247, i64* %_59
  %_248 = load i64, i64* %_56
  %_249 = load i64, i64* %_59
  %_250 = call i64 @_B_add (i64 %_248, i64 %_249)
  store i64 %_250, i64* %_60
  %_251 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 4)
  %_252 = extractvalue {i64, i1} %_251, 1
  br i1 %_252, label %L67, label %L66
L65:
  store i64 2305, i64* %_70
  br label %L2
L66:
  %_253 = extractvalue {i64, i1} %_251, 0
  store i64 %_253, i64* %_61
  %_254 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 7)
  %_255 = extractvalue {i64, i1} %_254, 1
  br i1 %_255, label %L69, label %L68
L67:
  store i64 2305, i64* %_70
  br label %L2
L68:
  %_256 = extractvalue {i64, i1} %_254, 0
  store i64 %_256, i64* %_62
  %_257 = load i64, i64* %_61
  %_258 = load i64, i64* %_62
  %_259 = call i64 @_B_add (i64 %_257, i64 %_258)
  store i64 %_259, i64* %_63
  %_260 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 23)
  %_261 = extractvalue {i64, i1} %_260, 1
  br i1 %_261, label %L71, label %L70
L69:
  store i64 2305, i64* %_70
  br label %L2
L70:
  %_262 = extractvalue {i64, i1} %_260, 0
  store i64 %_262, i64* %_64
  %_263 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 50)
  %_264 = extractvalue {i64, i1} %_263, 1
  br i1 %_264, label %L73, label %L72
L71:
  store i64 2305, i64* %_70
  br label %L2
L72:
  %_265 = extractvalue {i64, i1} %_263, 0
  store i64 %_265, i64* %_65
  %_266 = load i64, i64* %_64
  %_267 = load i64, i64* %_65
  %_268 = call i64 @_B_add (i64 %_266, i64 %_267)
  store i64 %_268, i64* %_66
  %_269 = load i64, i64* %_63
  %_270 = load i64, i64* %_66
  %_271 = call i64 @_B_add (i64 %_269, i64 %_270)
  store i64 %_271, i64* %_67
  %_272 = load i64, i64* %_60
  %_273 = load i64, i64* %_67
  %_274 = call i64 @_B_add (i64 %_272, i64 %_273)
  store i64 %_274, i64* %_68
  %_275 = load i64, i64* %_68
  %_276 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_275)
  call void @_Bio__println (i8 addrspace (1)* %_276)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_69
  ret void
L73:
  store i64 2305, i64* %_70
  br label %L2
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_7 = load i64, i64* %x
  %_8 = load i64, i64* %y
  %_9 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 3076)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 3329, i64* %_3
  br label %L2
}
