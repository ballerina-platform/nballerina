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
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i8*
  %_20 = alloca i64
  %_21 = alloca i8*
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i8*
  %_26 = alloca i64
  %_27 = alloca i64
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
  %_41 = alloca i64
  %_42 = alloca i64
  %_43 = alloca i8*
  %_44 = alloca i64
  %_45 = alloca i8*
  %_46 = alloca i64
  %_47 = alloca i8*
  %_48 = alloca i64
  %_49 = alloca i8*
  %_50 = alloca i64
  %_51 = alloca i8
  %_52 = load i8*, i8** @_bal_stack_guard
  %_53 = icmp ult i8* %_51, %_52
  br i1 %_53, label %L3, label %L1
L1:
  %_54 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_54, i64* %_0
  %_55 = load i64, i64* %_0
  %_56 = call i8* @_bal_alloc (i64 8)
  %_57 = bitcast i8* %_56 to i64*
  store i64 %_55, i64* %_57, align 8
  %_58 = getelementptr i8, i8* %_56, i64 504403158265495552
  call void @_Bio__println (i8* %_58)
  store i8* null, i8** %_1
  %_59 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_59, i64* %_2
  %_60 = load i64, i64* %_2
  %_61 = call i8* @_bal_alloc (i64 8)
  %_62 = bitcast i8* %_61 to i64*
  store i64 %_60, i64* %_62, align 8
  %_63 = getelementptr i8, i8* %_61, i64 504403158265495552
  call void @_Bio__println (i8* %_63)
  store i8* null, i8** %_3
  %_64 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_64, i64* %_4
  %_65 = load i64, i64* %_4
  %_66 = call i8* @_bal_alloc (i64 8)
  %_67 = bitcast i8* %_66 to i64*
  store i64 %_65, i64* %_67, align 8
  %_68 = getelementptr i8, i8* %_66, i64 504403158265495552
  call void @_Bio__println (i8* %_68)
  store i8* null, i8** %_5
  %_69 = call i64 @_B_sub (i64 9223372036854775806, i64 1)
  store i64 %_69, i64* %_6
  %_70 = load i64, i64* %_6
  %_71 = call i8* @_bal_alloc (i64 8)
  %_72 = bitcast i8* %_71 to i64*
  store i64 %_70, i64* %_72, align 8
  %_73 = getelementptr i8, i8* %_71, i64 504403158265495552
  call void @_Bio__println (i8* %_73)
  store i8* null, i8** %_7
  %_74 = call i64 @_B_sub (i64 1, i64 1)
  store i64 %_74, i64* %_8
  %_75 = load i64, i64* %_8
  %_76 = call i8* @_bal_alloc (i64 8)
  %_77 = bitcast i8* %_76 to i64*
  store i64 %_75, i64* %_77, align 8
  %_78 = getelementptr i8, i8* %_76, i64 504403158265495552
  call void @_Bio__println (i8* %_78)
  store i8* null, i8** %_9
  %_79 = call i64 @_B_sub (i64 0, i64 1)
  store i64 %_79, i64* %_10
  %_80 = load i64, i64* %_10
  %_81 = call i8* @_bal_alloc (i64 8)
  %_82 = bitcast i8* %_81 to i64*
  store i64 %_80, i64* %_82, align 8
  %_83 = getelementptr i8, i8* %_81, i64 504403158265495552
  call void @_Bio__println (i8* %_83)
  store i8* null, i8** %_11
  %_84 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_85 = extractvalue {i64, i1} %_84, 1
  br i1 %_85, label %L5, label %L4
L2:
  %_197 = load i64, i64* %_50
  call void @_bal_panic (i64 %_197)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_86 = extractvalue {i64, i1} %_84, 0
  store i64 %_86, i64* %_12
  %_87 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_88 = extractvalue {i64, i1} %_87, 1
  br i1 %_88, label %L7, label %L6
L5:
  store i64 2817, i64* %_50
  br label %L2
L6:
  %_89 = extractvalue {i64, i1} %_87, 0
  store i64 %_89, i64* %_13
  %_90 = load i64, i64* %_12
  %_91 = load i64, i64* %_13
  %_92 = call i64 @_B_sub (i64 %_90, i64 %_91)
  store i64 %_92, i64* %_14
  %_93 = load i64, i64* %_14
  %_94 = call i8* @_bal_alloc (i64 8)
  %_95 = bitcast i8* %_94 to i64*
  store i64 %_93, i64* %_95, align 8
  %_96 = getelementptr i8, i8* %_94, i64 504403158265495552
  call void @_Bio__println (i8* %_96)
  store i8* null, i8** %_15
  %_97 = call i64 @_B_sub (i64 9223372036854775806, i64 0)
  store i64 %_97, i64* %_16
  %_98 = load i64, i64* %_16
  %_99 = call i8* @_bal_alloc (i64 8)
  %_100 = bitcast i8* %_99 to i64*
  store i64 %_98, i64* %_100, align 8
  %_101 = getelementptr i8, i8* %_99, i64 504403158265495552
  call void @_Bio__println (i8* %_101)
  store i8* null, i8** %_17
  %_102 = call i64 @_B_sub (i64 1, i64 0)
  store i64 %_102, i64* %_18
  %_103 = load i64, i64* %_18
  %_104 = call i8* @_bal_alloc (i64 8)
  %_105 = bitcast i8* %_104 to i64*
  store i64 %_103, i64* %_105, align 8
  %_106 = getelementptr i8, i8* %_104, i64 504403158265495552
  call void @_Bio__println (i8* %_106)
  store i8* null, i8** %_19
  %_107 = call i64 @_B_sub (i64 0, i64 0)
  store i64 %_107, i64* %_20
  %_108 = load i64, i64* %_20
  %_109 = call i8* @_bal_alloc (i64 8)
  %_110 = bitcast i8* %_109 to i64*
  store i64 %_108, i64* %_110, align 8
  %_111 = getelementptr i8, i8* %_109, i64 504403158265495552
  call void @_Bio__println (i8* %_111)
  store i8* null, i8** %_21
  %_112 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_113 = extractvalue {i64, i1} %_112, 1
  br i1 %_113, label %L9, label %L8
L7:
  store i64 2817, i64* %_50
  br label %L2
L8:
  %_114 = extractvalue {i64, i1} %_112, 0
  store i64 %_114, i64* %_22
  %_115 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 0)
  %_116 = extractvalue {i64, i1} %_115, 1
  br i1 %_116, label %L11, label %L10
L9:
  store i64 4097, i64* %_50
  br label %L2
L10:
  %_117 = extractvalue {i64, i1} %_115, 0
  store i64 %_117, i64* %_23
  %_118 = load i64, i64* %_22
  %_119 = load i64, i64* %_23
  %_120 = call i64 @_B_sub (i64 %_118, i64 %_119)
  store i64 %_120, i64* %_24
  %_121 = load i64, i64* %_24
  %_122 = call i8* @_bal_alloc (i64 8)
  %_123 = bitcast i8* %_122 to i64*
  store i64 %_121, i64* %_123, align 8
  %_124 = getelementptr i8, i8* %_122, i64 504403158265495552
  call void @_Bio__println (i8* %_124)
  store i8* null, i8** %_25
  %_125 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_126 = extractvalue {i64, i1} %_125, 1
  br i1 %_126, label %L13, label %L12
L11:
  store i64 4097, i64* %_50
  br label %L2
L12:
  %_127 = extractvalue {i64, i1} %_125, 0
  store i64 %_127, i64* %_26
  %_128 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 0)
  %_129 = extractvalue {i64, i1} %_128, 1
  br i1 %_129, label %L15, label %L14
L13:
  store i64 4353, i64* %_50
  br label %L2
L14:
  %_130 = extractvalue {i64, i1} %_128, 0
  store i64 %_130, i64* %_27
  %_131 = load i64, i64* %_26
  %_132 = load i64, i64* %_27
  %_133 = call i64 @_B_sub (i64 %_131, i64 %_132)
  store i64 %_133, i64* %_28
  %_134 = load i64, i64* %_28
  %_135 = call i8* @_bal_alloc (i64 8)
  %_136 = bitcast i8* %_135 to i64*
  store i64 %_134, i64* %_136, align 8
  %_137 = getelementptr i8, i8* %_135, i64 504403158265495552
  call void @_Bio__println (i8* %_137)
  store i8* null, i8** %_29
  %_138 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_139 = extractvalue {i64, i1} %_138, 1
  br i1 %_139, label %L17, label %L16
L15:
  store i64 4353, i64* %_50
  br label %L2
L16:
  %_140 = extractvalue {i64, i1} %_138, 0
  store i64 %_140, i64* %_30
  %_141 = load i64, i64* %_30
  %_142 = call i64 @_B_sub (i64 9223372036854775806, i64 %_141)
  store i64 %_142, i64* %_31
  %_143 = load i64, i64* %_31
  %_144 = call i8* @_bal_alloc (i64 8)
  %_145 = bitcast i8* %_144 to i64*
  store i64 %_143, i64* %_145, align 8
  %_146 = getelementptr i8, i8* %_144, i64 504403158265495552
  call void @_Bio__println (i8* %_146)
  store i8* null, i8** %_32
  %_147 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_148 = extractvalue {i64, i1} %_147, 1
  br i1 %_148, label %L19, label %L18
L17:
  store i64 4865, i64* %_50
  br label %L2
L18:
  %_149 = extractvalue {i64, i1} %_147, 0
  store i64 %_149, i64* %_33
  %_150 = load i64, i64* %_33
  %_151 = call i64 @_B_sub (i64 1, i64 %_150)
  store i64 %_151, i64* %_34
  %_152 = load i64, i64* %_34
  %_153 = call i8* @_bal_alloc (i64 8)
  %_154 = bitcast i8* %_153 to i64*
  store i64 %_152, i64* %_154, align 8
  %_155 = getelementptr i8, i8* %_153, i64 504403158265495552
  call void @_Bio__println (i8* %_155)
  store i8* null, i8** %_35
  %_156 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_157 = extractvalue {i64, i1} %_156, 1
  br i1 %_157, label %L21, label %L20
L19:
  store i64 5121, i64* %_50
  br label %L2
L20:
  %_158 = extractvalue {i64, i1} %_156, 0
  store i64 %_158, i64* %_36
  %_159 = load i64, i64* %_36
  %_160 = call i64 @_B_sub (i64 0, i64 %_159)
  store i64 %_160, i64* %_37
  %_161 = load i64, i64* %_37
  %_162 = call i8* @_bal_alloc (i64 8)
  %_163 = bitcast i8* %_162 to i64*
  store i64 %_161, i64* %_163, align 8
  %_164 = getelementptr i8, i8* %_162, i64 504403158265495552
  call void @_Bio__println (i8* %_164)
  store i8* null, i8** %_38
  %_165 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_166 = extractvalue {i64, i1} %_165, 1
  br i1 %_166, label %L23, label %L22
L21:
  store i64 5377, i64* %_50
  br label %L2
L22:
  %_167 = extractvalue {i64, i1} %_165, 0
  store i64 %_167, i64* %_39
  %_168 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_169 = extractvalue {i64, i1} %_168, 1
  br i1 %_169, label %L25, label %L24
L23:
  store i64 5633, i64* %_50
  br label %L2
L24:
  %_170 = extractvalue {i64, i1} %_168, 0
  store i64 %_170, i64* %_40
  %_171 = load i64, i64* %_40
  %_172 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_171)
  %_173 = extractvalue {i64, i1} %_172, 1
  br i1 %_173, label %L27, label %L26
L25:
  store i64 5633, i64* %_50
  br label %L2
L26:
  %_174 = extractvalue {i64, i1} %_172, 0
  store i64 %_174, i64* %_41
  %_175 = load i64, i64* %_39
  %_176 = load i64, i64* %_41
  %_177 = call i64 @_B_sub (i64 %_175, i64 %_176)
  store i64 %_177, i64* %_42
  %_178 = load i64, i64* %_42
  %_179 = call i8* @_bal_alloc (i64 8)
  %_180 = bitcast i8* %_179 to i64*
  store i64 %_178, i64* %_180, align 8
  %_181 = getelementptr i8, i8* %_179, i64 504403158265495552
  call void @_Bio__println (i8* %_181)
  store i8* null, i8** %_43
  %_182 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_182, i64* %_44
  %_183 = load i64, i64* %_44
  %_184 = call i8* @_bal_alloc (i64 8)
  %_185 = bitcast i8* %_184 to i64*
  store i64 %_183, i64* %_185, align 8
  %_186 = getelementptr i8, i8* %_184, i64 504403158265495552
  call void @_Bio__println (i8* %_186)
  store i8* null, i8** %_45
  %_187 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_187, i64* %_46
  %_188 = load i64, i64* %_46
  %_189 = call i8* @_bal_alloc (i64 8)
  %_190 = bitcast i8* %_189 to i64*
  store i64 %_188, i64* %_190, align 8
  %_191 = getelementptr i8, i8* %_189, i64 504403158265495552
  call void @_Bio__println (i8* %_191)
  store i8* null, i8** %_47
  %_192 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_192, i64* %_48
  %_193 = load i64, i64* %_48
  %_194 = call i8* @_bal_alloc (i64 8)
  %_195 = bitcast i8* %_194 to i64*
  store i64 %_193, i64* %_195, align 8
  %_196 = getelementptr i8, i8* %_194, i64 504403158265495552
  call void @_Bio__println (i8* %_196)
  store i8* null, i8** %_49
  ret void
L27:
  store i64 5633, i64* %_50
  br label %L2
}
define internal i64 @_B_sub (i64 %_0, i64 %_1) {
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
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 7428)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 7681, i64* %_3
  br label %L2
}
