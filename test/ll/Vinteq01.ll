@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i1
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i1
  %_11 = alloca i8*
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i1
  %_15 = alloca i8*
  %_16 = alloca i1
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i1
  %_20 = alloca i8*
  %_21 = alloca i64
  %_22 = alloca i1
  %_23 = alloca i8*
  %_24 = alloca i1
  %_25 = alloca i8*
  %_26 = alloca i1
  %_27 = alloca i8*
  %_28 = alloca i1
  %_29 = alloca i8*
  %_30 = alloca i64
  %_31 = alloca i1
  %_32 = alloca i8*
  %_33 = alloca i64
  %_34 = alloca i1
  %_35 = alloca i8*
  %_36 = alloca i64
  %_37 = alloca i1
  %_38 = alloca i8*
  %_39 = alloca i64
  %_40 = alloca i1
  %_41 = alloca i8*
  %_42 = alloca i64
  %_43 = alloca i1
  %_44 = alloca i8*
  %_45 = alloca i64
  %_46 = alloca i64
  %_47 = alloca i1
  %_48 = alloca i8*
  %_49 = alloca i64
  %_50 = alloca i64
  %_51 = alloca i1
  %_52 = alloca i8*
  %_53 = alloca i64
  %_54 = alloca i1
  %_55 = alloca i8*
  %_56 = alloca i64
  %_57 = alloca i1
  %_58 = alloca i8*
  %_59 = alloca i64
  %_60 = alloca i1
  %_61 = alloca i8*
  %_62 = alloca i64
  %_63 = alloca i64
  %_64 = alloca i1
  %_65 = alloca i8*
  %_66 = alloca i64
  %_67 = alloca i64
  %_68 = alloca i1
  %_69 = alloca i8*
  %_70 = alloca i64
  %_71 = alloca i8
  %_72 = load i8*, i8** @_bal_stack_guard
  %_73 = icmp ult i8* %_71, %_72
  br i1 %_73, label %L3, label %L1
L1:
  %_74 = call i1 @_B_eq (i64 9223372036854775806, i64 9223372036854775806)
  store i1 %_74, i1* %_0
  %_75 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_75)
  store i8* null, i8** %_1
  %_76 = call i1 @_B_eq (i64 9223372036854775806, i64 1)
  store i1 %_76, i1* %_2
  %_77 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_77)
  store i8* null, i8** %_3
  %_78 = call i1 @_B_eq (i64 9223372036854775806, i64 0)
  store i1 %_78, i1* %_4
  %_79 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_79)
  store i8* null, i8** %_5
  %_80 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_81 = extractvalue {i64, i1} %_80, 1
  br i1 %_81, label %L5, label %L4
L2:
  %_204 = load i64, i64* %_70
  call void @_bal_panic (i64 %_204)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_82 = extractvalue {i64, i1} %_80, 0
  store i64 %_82, i64* %_6
  %_83 = load i64, i64* %_6
  %_84 = call i1 @_B_eq (i64 9223372036854775806, i64 %_83)
  store i1 %_84, i1* %_7
  %_85 = load i1, i1* %_7
  call void @_B_printBoolean (i1 %_85)
  store i8* null, i8** %_8
  %_86 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_87 = extractvalue {i64, i1} %_86, 1
  br i1 %_87, label %L7, label %L6
L5:
  store i64 1793, i64* %_70
  br label %L2
L6:
  %_88 = extractvalue {i64, i1} %_86, 0
  store i64 %_88, i64* %_9
  %_89 = load i64, i64* %_9
  %_90 = call i1 @_B_eq (i64 9223372036854775806, i64 %_89)
  store i1 %_90, i1* %_10
  %_91 = load i1, i1* %_10
  call void @_B_printBoolean (i1 %_91)
  store i8* null, i8** %_11
  %_92 = call i1 @_B_eq (i64 1, i64 9223372036854775806)
  store i1 %_92, i1* %_12
  %_93 = load i1, i1* %_12
  call void @_B_printBoolean (i1 %_93)
  store i8* null, i8** %_13
  %_94 = call i1 @_B_eq (i64 1, i64 1)
  store i1 %_94, i1* %_14
  %_95 = load i1, i1* %_14
  call void @_B_printBoolean (i1 %_95)
  store i8* null, i8** %_15
  %_96 = call i1 @_B_eq (i64 1, i64 0)
  store i1 %_96, i1* %_16
  %_97 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_97)
  store i8* null, i8** %_17
  %_98 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_99 = extractvalue {i64, i1} %_98, 1
  br i1 %_99, label %L9, label %L8
L7:
  store i64 2049, i64* %_70
  br label %L2
L8:
  %_100 = extractvalue {i64, i1} %_98, 0
  store i64 %_100, i64* %_18
  %_101 = load i64, i64* %_18
  %_102 = call i1 @_B_eq (i64 1, i64 %_101)
  store i1 %_102, i1* %_19
  %_103 = load i1, i1* %_19
  call void @_B_printBoolean (i1 %_103)
  store i8* null, i8** %_20
  %_104 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_105 = extractvalue {i64, i1} %_104, 1
  br i1 %_105, label %L11, label %L10
L9:
  store i64 3329, i64* %_70
  br label %L2
L10:
  %_106 = extractvalue {i64, i1} %_104, 0
  store i64 %_106, i64* %_21
  %_107 = load i64, i64* %_21
  %_108 = call i1 @_B_eq (i64 1, i64 %_107)
  store i1 %_108, i1* %_22
  %_109 = load i1, i1* %_22
  call void @_B_printBoolean (i1 %_109)
  store i8* null, i8** %_23
  %_110 = call i1 @_B_eq (i64 0, i64 9223372036854775806)
  store i1 %_110, i1* %_24
  %_111 = load i1, i1* %_24
  call void @_B_printBoolean (i1 %_111)
  store i8* null, i8** %_25
  %_112 = call i1 @_B_eq (i64 0, i64 1)
  store i1 %_112, i1* %_26
  %_113 = load i1, i1* %_26
  call void @_B_printBoolean (i1 %_113)
  store i8* null, i8** %_27
  %_114 = call i1 @_B_eq (i64 0, i64 0)
  store i1 %_114, i1* %_28
  %_115 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_115)
  store i8* null, i8** %_29
  %_116 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_117 = extractvalue {i64, i1} %_116, 1
  br i1 %_117, label %L13, label %L12
L11:
  store i64 3585, i64* %_70
  br label %L2
L12:
  %_118 = extractvalue {i64, i1} %_116, 0
  store i64 %_118, i64* %_30
  %_119 = load i64, i64* %_30
  %_120 = call i1 @_B_eq (i64 0, i64 %_119)
  store i1 %_120, i1* %_31
  %_121 = load i1, i1* %_31
  call void @_B_printBoolean (i1 %_121)
  store i8* null, i8** %_32
  %_122 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_123 = extractvalue {i64, i1} %_122, 1
  br i1 %_123, label %L15, label %L14
L13:
  store i64 4865, i64* %_70
  br label %L2
L14:
  %_124 = extractvalue {i64, i1} %_122, 0
  store i64 %_124, i64* %_33
  %_125 = load i64, i64* %_33
  %_126 = call i1 @_B_eq (i64 0, i64 %_125)
  store i1 %_126, i1* %_34
  %_127 = load i1, i1* %_34
  call void @_B_printBoolean (i1 %_127)
  store i8* null, i8** %_35
  %_128 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_129 = extractvalue {i64, i1} %_128, 1
  br i1 %_129, label %L17, label %L16
L15:
  store i64 5121, i64* %_70
  br label %L2
L16:
  %_130 = extractvalue {i64, i1} %_128, 0
  store i64 %_130, i64* %_36
  %_131 = load i64, i64* %_36
  %_132 = call i1 @_B_eq (i64 %_131, i64 9223372036854775806)
  store i1 %_132, i1* %_37
  %_133 = load i1, i1* %_37
  call void @_B_printBoolean (i1 %_133)
  store i8* null, i8** %_38
  %_134 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_135 = extractvalue {i64, i1} %_134, 1
  br i1 %_135, label %L19, label %L18
L17:
  store i64 5633, i64* %_70
  br label %L2
L18:
  %_136 = extractvalue {i64, i1} %_134, 0
  store i64 %_136, i64* %_39
  %_137 = load i64, i64* %_39
  %_138 = call i1 @_B_eq (i64 %_137, i64 1)
  store i1 %_138, i1* %_40
  %_139 = load i1, i1* %_40
  call void @_B_printBoolean (i1 %_139)
  store i8* null, i8** %_41
  %_140 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_141 = extractvalue {i64, i1} %_140, 1
  br i1 %_141, label %L21, label %L20
L19:
  store i64 5889, i64* %_70
  br label %L2
L20:
  %_142 = extractvalue {i64, i1} %_140, 0
  store i64 %_142, i64* %_42
  %_143 = load i64, i64* %_42
  %_144 = call i1 @_B_eq (i64 %_143, i64 0)
  store i1 %_144, i1* %_43
  %_145 = load i1, i1* %_43
  call void @_B_printBoolean (i1 %_145)
  store i8* null, i8** %_44
  %_146 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_147 = extractvalue {i64, i1} %_146, 1
  br i1 %_147, label %L23, label %L22
L21:
  store i64 6145, i64* %_70
  br label %L2
L22:
  %_148 = extractvalue {i64, i1} %_146, 0
  store i64 %_148, i64* %_45
  %_149 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_150 = extractvalue {i64, i1} %_149, 1
  br i1 %_150, label %L25, label %L24
L23:
  store i64 6401, i64* %_70
  br label %L2
L24:
  %_151 = extractvalue {i64, i1} %_149, 0
  store i64 %_151, i64* %_46
  %_152 = load i64, i64* %_45
  %_153 = load i64, i64* %_46
  %_154 = call i1 @_B_eq (i64 %_152, i64 %_153)
  store i1 %_154, i1* %_47
  %_155 = load i1, i1* %_47
  call void @_B_printBoolean (i1 %_155)
  store i8* null, i8** %_48
  %_156 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_157 = extractvalue {i64, i1} %_156, 1
  br i1 %_157, label %L27, label %L26
L25:
  store i64 6401, i64* %_70
  br label %L2
L26:
  %_158 = extractvalue {i64, i1} %_156, 0
  store i64 %_158, i64* %_49
  %_159 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_160 = extractvalue {i64, i1} %_159, 1
  br i1 %_160, label %L29, label %L28
L27:
  store i64 6657, i64* %_70
  br label %L2
L28:
  %_161 = extractvalue {i64, i1} %_159, 0
  store i64 %_161, i64* %_50
  %_162 = load i64, i64* %_49
  %_163 = load i64, i64* %_50
  %_164 = call i1 @_B_eq (i64 %_162, i64 %_163)
  store i1 %_164, i1* %_51
  %_165 = load i1, i1* %_51
  call void @_B_printBoolean (i1 %_165)
  store i8* null, i8** %_52
  %_166 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_167 = extractvalue {i64, i1} %_166, 1
  br i1 %_167, label %L31, label %L30
L29:
  store i64 6657, i64* %_70
  br label %L2
L30:
  %_168 = extractvalue {i64, i1} %_166, 0
  store i64 %_168, i64* %_53
  %_169 = load i64, i64* %_53
  %_170 = call i1 @_B_eq (i64 %_169, i64 9223372036854775806)
  store i1 %_170, i1* %_54
  %_171 = load i1, i1* %_54
  call void @_B_printBoolean (i1 %_171)
  store i8* null, i8** %_55
  %_172 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_173 = extractvalue {i64, i1} %_172, 1
  br i1 %_173, label %L33, label %L32
L31:
  store i64 7169, i64* %_70
  br label %L2
L32:
  %_174 = extractvalue {i64, i1} %_172, 0
  store i64 %_174, i64* %_56
  %_175 = load i64, i64* %_56
  %_176 = call i1 @_B_eq (i64 %_175, i64 1)
  store i1 %_176, i1* %_57
  %_177 = load i1, i1* %_57
  call void @_B_printBoolean (i1 %_177)
  store i8* null, i8** %_58
  %_178 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_179 = extractvalue {i64, i1} %_178, 1
  br i1 %_179, label %L35, label %L34
L33:
  store i64 7425, i64* %_70
  br label %L2
L34:
  %_180 = extractvalue {i64, i1} %_178, 0
  store i64 %_180, i64* %_59
  %_181 = load i64, i64* %_59
  %_182 = call i1 @_B_eq (i64 %_181, i64 0)
  store i1 %_182, i1* %_60
  %_183 = load i1, i1* %_60
  call void @_B_printBoolean (i1 %_183)
  store i8* null, i8** %_61
  %_184 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_185 = extractvalue {i64, i1} %_184, 1
  br i1 %_185, label %L37, label %L36
L35:
  store i64 7681, i64* %_70
  br label %L2
L36:
  %_186 = extractvalue {i64, i1} %_184, 0
  store i64 %_186, i64* %_62
  %_187 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_188 = extractvalue {i64, i1} %_187, 1
  br i1 %_188, label %L39, label %L38
L37:
  store i64 7937, i64* %_70
  br label %L2
L38:
  %_189 = extractvalue {i64, i1} %_187, 0
  store i64 %_189, i64* %_63
  %_190 = load i64, i64* %_62
  %_191 = load i64, i64* %_63
  %_192 = call i1 @_B_eq (i64 %_190, i64 %_191)
  store i1 %_192, i1* %_64
  %_193 = load i1, i1* %_64
  call void @_B_printBoolean (i1 %_193)
  store i8* null, i8** %_65
  %_194 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_195 = extractvalue {i64, i1} %_194, 1
  br i1 %_195, label %L41, label %L40
L39:
  store i64 7937, i64* %_70
  br label %L2
L40:
  %_196 = extractvalue {i64, i1} %_194, 0
  store i64 %_196, i64* %_66
  %_197 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_198 = extractvalue {i64, i1} %_197, 1
  br i1 %_198, label %L43, label %L42
L41:
  store i64 8193, i64* %_70
  br label %L2
L42:
  %_199 = extractvalue {i64, i1} %_197, 0
  store i64 %_199, i64* %_67
  %_200 = load i64, i64* %_66
  %_201 = load i64, i64* %_67
  %_202 = call i1 @_B_eq (i64 %_200, i64 %_201)
  store i1 %_202, i1* %_68
  %_203 = load i1, i1* %_68
  call void @_B_printBoolean (i1 %_203)
  store i8* null, i8** %_69
  ret void
L43:
  store i64 8193, i64* %_70
  br label %L2
}
define internal i1 @_B_eq (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_6 = load i64, i64* %a
  %_7 = load i64, i64* %b
  %_8 = icmp eq i64 %_6, %_7
  store i1 %_8, i1* %_2
  %_9 = load i1, i1* %_2
  ret i1 %_9
L2:
  call void @_bal_panic (i64 8964)
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
  call void @_bal_panic (i64 9988)
  unreachable
}
