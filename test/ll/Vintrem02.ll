declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
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
  %_87 = call i64 @_B_rem (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_87, i64* %_0
  %_88 = load i64, i64* %_0
  %_89 = call i8* @_bal_alloc (i64 8)
  %_90 = bitcast i8* %_89 to i64*
  store i64 %_88, i64* %_90, align 8
  %_91 = getelementptr i8, i8* %_89, i64 144115188075855872
  call void @_Bio__println (i8* %_91)
  store i8* null, i8** %_1
  %_92 = call i64 @_B_rem (i64 1, i64 9223372036854775806)
  store i64 %_92, i64* %_2
  %_93 = load i64, i64* %_2
  %_94 = call i8* @_bal_alloc (i64 8)
  %_95 = bitcast i8* %_94 to i64*
  store i64 %_93, i64* %_95, align 8
  %_96 = getelementptr i8, i8* %_94, i64 144115188075855872
  call void @_Bio__println (i8* %_96)
  store i8* null, i8** %_3
  %_97 = call i64 @_B_rem (i64 0, i64 9223372036854775806)
  store i64 %_97, i64* %_4
  %_98 = load i64, i64* %_4
  %_99 = call i8* @_bal_alloc (i64 8)
  %_100 = bitcast i8* %_99 to i64*
  store i64 %_98, i64* %_100, align 8
  %_101 = getelementptr i8, i8* %_99, i64 144115188075855872
  call void @_Bio__println (i8* %_101)
  store i8* null, i8** %_5
  %_102 = call i64 @_B_rem (i64 -1, i64 9223372036854775806)
  store i64 %_102, i64* %_7
  %_103 = load i64, i64* %_7
  %_104 = call i8* @_bal_alloc (i64 8)
  %_105 = bitcast i8* %_104 to i64*
  store i64 %_103, i64* %_105, align 8
  %_106 = getelementptr i8, i8* %_104, i64 144115188075855872
  call void @_Bio__println (i8* %_106)
  store i8* null, i8** %_8
  %_107 = call i64 @_B_rem (i64 -9223372036854775806, i64 9223372036854775806)
  store i64 %_107, i64* %_10
  %_108 = load i64, i64* %_10
  %_109 = call i8* @_bal_alloc (i64 8)
  %_110 = bitcast i8* %_109 to i64*
  store i64 %_108, i64* %_110, align 8
  %_111 = getelementptr i8, i8* %_109, i64 144115188075855872
  call void @_Bio__println (i8* %_111)
  store i8* null, i8** %_11
  %_112 = call i64 @_B_rem (i64 9223372036854775806, i64 10)
  store i64 %_112, i64* %_12
  %_113 = load i64, i64* %_12
  %_114 = call i8* @_bal_alloc (i64 8)
  %_115 = bitcast i8* %_114 to i64*
  store i64 %_113, i64* %_115, align 8
  %_116 = getelementptr i8, i8* %_114, i64 144115188075855872
  call void @_Bio__println (i8* %_116)
  store i8* null, i8** %_13
  %_117 = call i64 @_B_rem (i64 1, i64 10)
  store i64 %_117, i64* %_14
  %_118 = load i64, i64* %_14
  %_119 = call i8* @_bal_alloc (i64 8)
  %_120 = bitcast i8* %_119 to i64*
  store i64 %_118, i64* %_120, align 8
  %_121 = getelementptr i8, i8* %_119, i64 144115188075855872
  call void @_Bio__println (i8* %_121)
  store i8* null, i8** %_15
  %_122 = call i64 @_B_rem (i64 0, i64 10)
  store i64 %_122, i64* %_16
  %_123 = load i64, i64* %_16
  %_124 = call i8* @_bal_alloc (i64 8)
  %_125 = bitcast i8* %_124 to i64*
  store i64 %_123, i64* %_125, align 8
  %_126 = getelementptr i8, i8* %_124, i64 144115188075855872
  call void @_Bio__println (i8* %_126)
  store i8* null, i8** %_17
  %_127 = call i64 @_B_rem (i64 -1, i64 10)
  store i64 %_127, i64* %_19
  %_128 = load i64, i64* %_19
  %_129 = call i8* @_bal_alloc (i64 8)
  %_130 = bitcast i8* %_129 to i64*
  store i64 %_128, i64* %_130, align 8
  %_131 = getelementptr i8, i8* %_129, i64 144115188075855872
  call void @_Bio__println (i8* %_131)
  store i8* null, i8** %_20
  %_132 = call i64 @_B_rem (i64 -9223372036854775806, i64 10)
  store i64 %_132, i64* %_22
  %_133 = load i64, i64* %_22
  %_134 = call i8* @_bal_alloc (i64 8)
  %_135 = bitcast i8* %_134 to i64*
  store i64 %_133, i64* %_135, align 8
  %_136 = getelementptr i8, i8* %_134, i64 144115188075855872
  call void @_Bio__println (i8* %_136)
  store i8* null, i8** %_23
  %_137 = call i64 @_B_rem (i64 9223372036854775806, i64 1)
  store i64 %_137, i64* %_24
  %_138 = load i64, i64* %_24
  %_139 = call i8* @_bal_alloc (i64 8)
  %_140 = bitcast i8* %_139 to i64*
  store i64 %_138, i64* %_140, align 8
  %_141 = getelementptr i8, i8* %_139, i64 144115188075855872
  call void @_Bio__println (i8* %_141)
  store i8* null, i8** %_25
  %_142 = call i64 @_B_rem (i64 1, i64 1)
  store i64 %_142, i64* %_26
  %_143 = load i64, i64* %_26
  %_144 = call i8* @_bal_alloc (i64 8)
  %_145 = bitcast i8* %_144 to i64*
  store i64 %_143, i64* %_145, align 8
  %_146 = getelementptr i8, i8* %_144, i64 144115188075855872
  call void @_Bio__println (i8* %_146)
  store i8* null, i8** %_27
  %_147 = call i64 @_B_rem (i64 0, i64 1)
  store i64 %_147, i64* %_28
  %_148 = load i64, i64* %_28
  %_149 = call i8* @_bal_alloc (i64 8)
  %_150 = bitcast i8* %_149 to i64*
  store i64 %_148, i64* %_150, align 8
  %_151 = getelementptr i8, i8* %_149, i64 144115188075855872
  call void @_Bio__println (i8* %_151)
  store i8* null, i8** %_29
  %_152 = call i64 @_B_rem (i64 -1, i64 1)
  store i64 %_152, i64* %_31
  %_153 = load i64, i64* %_31
  %_154 = call i8* @_bal_alloc (i64 8)
  %_155 = bitcast i8* %_154 to i64*
  store i64 %_153, i64* %_155, align 8
  %_156 = getelementptr i8, i8* %_154, i64 144115188075855872
  call void @_Bio__println (i8* %_156)
  store i8* null, i8** %_32
  %_157 = call i64 @_B_rem (i64 -9223372036854775806, i64 1)
  store i64 %_157, i64* %_34
  %_158 = load i64, i64* %_34
  %_159 = call i8* @_bal_alloc (i64 8)
  %_160 = bitcast i8* %_159 to i64*
  store i64 %_158, i64* %_160, align 8
  %_161 = getelementptr i8, i8* %_159, i64 144115188075855872
  call void @_Bio__println (i8* %_161)
  store i8* null, i8** %_35
  %_162 = call i64 @_B_rem (i64 9223372036854775806, i64 -1)
  store i64 %_162, i64* %_37
  %_163 = load i64, i64* %_37
  %_164 = call i8* @_bal_alloc (i64 8)
  %_165 = bitcast i8* %_164 to i64*
  store i64 %_163, i64* %_165, align 8
  %_166 = getelementptr i8, i8* %_164, i64 144115188075855872
  call void @_Bio__println (i8* %_166)
  store i8* null, i8** %_38
  %_167 = call i64 @_B_rem (i64 1, i64 -1)
  store i64 %_167, i64* %_40
  %_168 = load i64, i64* %_40
  %_169 = call i8* @_bal_alloc (i64 8)
  %_170 = bitcast i8* %_169 to i64*
  store i64 %_168, i64* %_170, align 8
  %_171 = getelementptr i8, i8* %_169, i64 144115188075855872
  call void @_Bio__println (i8* %_171)
  store i8* null, i8** %_41
  %_172 = call i64 @_B_rem (i64 0, i64 -1)
  store i64 %_172, i64* %_43
  %_173 = load i64, i64* %_43
  %_174 = call i8* @_bal_alloc (i64 8)
  %_175 = bitcast i8* %_174 to i64*
  store i64 %_173, i64* %_175, align 8
  %_176 = getelementptr i8, i8* %_174, i64 144115188075855872
  call void @_Bio__println (i8* %_176)
  store i8* null, i8** %_44
  %_177 = call i64 @_B_rem (i64 -1, i64 -1)
  store i64 %_177, i64* %_47
  %_178 = load i64, i64* %_47
  %_179 = call i8* @_bal_alloc (i64 8)
  %_180 = bitcast i8* %_179 to i64*
  store i64 %_178, i64* %_180, align 8
  %_181 = getelementptr i8, i8* %_179, i64 144115188075855872
  call void @_Bio__println (i8* %_181)
  store i8* null, i8** %_48
  %_182 = call i64 @_B_rem (i64 -9223372036854775806, i64 -1)
  store i64 %_182, i64* %_51
  %_183 = load i64, i64* %_51
  %_184 = call i8* @_bal_alloc (i64 8)
  %_185 = bitcast i8* %_184 to i64*
  store i64 %_183, i64* %_185, align 8
  %_186 = getelementptr i8, i8* %_184, i64 144115188075855872
  call void @_Bio__println (i8* %_186)
  store i8* null, i8** %_52
  %_187 = call i64 @_B_rem (i64 9223372036854775806, i64 -10)
  store i64 %_187, i64* %_54
  %_188 = load i64, i64* %_54
  %_189 = call i8* @_bal_alloc (i64 8)
  %_190 = bitcast i8* %_189 to i64*
  store i64 %_188, i64* %_190, align 8
  %_191 = getelementptr i8, i8* %_189, i64 144115188075855872
  call void @_Bio__println (i8* %_191)
  store i8* null, i8** %_55
  %_192 = call i64 @_B_rem (i64 1, i64 -10)
  store i64 %_192, i64* %_57
  %_193 = load i64, i64* %_57
  %_194 = call i8* @_bal_alloc (i64 8)
  %_195 = bitcast i8* %_194 to i64*
  store i64 %_193, i64* %_195, align 8
  %_196 = getelementptr i8, i8* %_194, i64 144115188075855872
  call void @_Bio__println (i8* %_196)
  store i8* null, i8** %_58
  %_197 = call i64 @_B_rem (i64 0, i64 -10)
  store i64 %_197, i64* %_60
  %_198 = load i64, i64* %_60
  %_199 = call i8* @_bal_alloc (i64 8)
  %_200 = bitcast i8* %_199 to i64*
  store i64 %_198, i64* %_200, align 8
  %_201 = getelementptr i8, i8* %_199, i64 144115188075855872
  call void @_Bio__println (i8* %_201)
  store i8* null, i8** %_61
  %_202 = call i64 @_B_rem (i64 -1, i64 -10)
  store i64 %_202, i64* %_64
  %_203 = load i64, i64* %_64
  %_204 = call i8* @_bal_alloc (i64 8)
  %_205 = bitcast i8* %_204 to i64*
  store i64 %_203, i64* %_205, align 8
  %_206 = getelementptr i8, i8* %_204, i64 144115188075855872
  call void @_Bio__println (i8* %_206)
  store i8* null, i8** %_65
  %_207 = call i64 @_B_rem (i64 -9223372036854775806, i64 -10)
  store i64 %_207, i64* %_68
  %_208 = load i64, i64* %_68
  %_209 = call i8* @_bal_alloc (i64 8)
  %_210 = bitcast i8* %_209 to i64*
  store i64 %_208, i64* %_210, align 8
  %_211 = getelementptr i8, i8* %_209, i64 144115188075855872
  call void @_Bio__println (i8* %_211)
  store i8* null, i8** %_69
  %_212 = call i64 @_B_rem (i64 9223372036854775806, i64 -9223372036854775806)
  store i64 %_212, i64* %_71
  %_213 = load i64, i64* %_71
  %_214 = call i8* @_bal_alloc (i64 8)
  %_215 = bitcast i8* %_214 to i64*
  store i64 %_213, i64* %_215, align 8
  %_216 = getelementptr i8, i8* %_214, i64 144115188075855872
  call void @_Bio__println (i8* %_216)
  store i8* null, i8** %_72
  %_217 = call i64 @_B_rem (i64 1, i64 -9223372036854775806)
  store i64 %_217, i64* %_74
  %_218 = load i64, i64* %_74
  %_219 = call i8* @_bal_alloc (i64 8)
  %_220 = bitcast i8* %_219 to i64*
  store i64 %_218, i64* %_220, align 8
  %_221 = getelementptr i8, i8* %_219, i64 144115188075855872
  call void @_Bio__println (i8* %_221)
  store i8* null, i8** %_75
  %_222 = call i64 @_B_rem (i64 0, i64 -9223372036854775806)
  store i64 %_222, i64* %_77
  %_223 = load i64, i64* %_77
  %_224 = call i8* @_bal_alloc (i64 8)
  %_225 = bitcast i8* %_224 to i64*
  store i64 %_223, i64* %_225, align 8
  %_226 = getelementptr i8, i8* %_224, i64 144115188075855872
  call void @_Bio__println (i8* %_226)
  store i8* null, i8** %_78
  %_227 = call i64 @_B_rem (i64 -1, i64 -9223372036854775806)
  store i64 %_227, i64* %_81
  %_228 = load i64, i64* %_81
  %_229 = call i8* @_bal_alloc (i64 8)
  %_230 = bitcast i8* %_229 to i64*
  store i64 %_228, i64* %_230, align 8
  %_231 = getelementptr i8, i8* %_229, i64 144115188075855872
  call void @_Bio__println (i8* %_231)
  store i8* null, i8** %_82
  %_232 = call i64 @_B_rem (i64 -9223372036854775806, i64 -9223372036854775806)
  store i64 %_232, i64* %_85
  %_233 = load i64, i64* %_85
  %_234 = call i8* @_bal_alloc (i64 8)
  %_235 = bitcast i8* %_234 to i64*
  store i64 %_233, i64* %_235, align 8
  %_236 = getelementptr i8, i8* %_234, i64 144115188075855872
  call void @_Bio__println (i8* %_236)
  store i8* null, i8** %_86
  ret void
}
define internal i64 @_B_rem (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_4 = load i64, i64* %a
  %_5 = load i64, i64* %b
  %_6 = icmp eq i64 %_5, 0
  br i1 %_6, label %L2, label %L3
L1:
  %_12 = load i64, i64* %_3
  call void @_bal_panic (i64 %_12)
  unreachable
L2:
  store i64 2, i64* %_3
  br label %L1
L3:
  %_7 = icmp eq i64 %_4, -9223372036854775808
  %_8 = icmp eq i64 %_5, -1
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %L5, label %L4
L4:
  %_10 = srem i64 %_4, %_5
  store i64 %_10, i64* %_2
  br label %L6
L5:
  store i64 0, i64* %_2
  br label %L6
L6:
  %_11 = load i64, i64* %_2
  ret i64 %_11
}
