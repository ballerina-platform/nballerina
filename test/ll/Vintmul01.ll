@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i64
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
  %_25 = alloca i64
  %_26 = alloca i8 addrspace (1)*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i8 addrspace (1)*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8 addrspace (1)*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8 addrspace (1)*
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i64
  %_40 = alloca i8 addrspace (1)*
  %_41 = alloca i64
  %_42 = alloca i8
  %_43 = load i8*, i8** @_bal_stack_guard
  %_44 = icmp ult i8* %_42, %_43
  br i1 %_44, label %L3, label %L1
L1:
  %_45 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 1)
  %_46 = extractvalue {i64, i1} %_45, 1
  br i1 %_46, label %L5, label %L4
L2:
  %_194 = load i64, i64* %_41
  call void @_bal_panic (i64 %_194)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_47 = extractvalue {i64, i1} %_45, 0
  store i64 %_47, i64* %_0
  %_48 = load i64, i64* %_0
  %_49 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_50 = bitcast i8 addrspace (1)* %_49 to i64 addrspace (1)*
  store i64 %_48, i64 addrspace (1)* %_50, align 8
  %_51 = getelementptr i8, i8 addrspace (1)* %_49, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_51)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_52 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_53 = extractvalue {i64, i1} %_52, 1
  br i1 %_53, label %L7, label %L6
L5:
  store i64 1025, i64* %_41
  br label %L2
L6:
  %_54 = extractvalue {i64, i1} %_52, 0
  store i64 %_54, i64* %_2
  %_55 = load i64, i64* %_2
  %_56 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_57 = bitcast i8 addrspace (1)* %_56 to i64 addrspace (1)*
  store i64 %_55, i64 addrspace (1)* %_57, align 8
  %_58 = getelementptr i8, i8 addrspace (1)* %_56, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_58)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_59 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_60 = extractvalue {i64, i1} %_59, 1
  br i1 %_60, label %L9, label %L8
L7:
  store i64 1281, i64* %_41
  br label %L2
L8:
  %_61 = extractvalue {i64, i1} %_59, 0
  store i64 %_61, i64* %_4
  %_62 = load i64, i64* %_4
  %_63 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 %_62)
  %_64 = extractvalue {i64, i1} %_63, 1
  br i1 %_64, label %L11, label %L10
L9:
  store i64 1537, i64* %_41
  br label %L2
L10:
  %_65 = extractvalue {i64, i1} %_63, 0
  store i64 %_65, i64* %_5
  %_66 = load i64, i64* %_5
  %_67 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_68 = bitcast i8 addrspace (1)* %_67 to i64 addrspace (1)*
  store i64 %_66, i64 addrspace (1)* %_68, align 8
  %_69 = getelementptr i8, i8 addrspace (1)* %_67, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_69)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_70 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 1)
  %_71 = extractvalue {i64, i1} %_70, 1
  br i1 %_71, label %L13, label %L12
L11:
  store i64 1537, i64* %_41
  br label %L2
L12:
  %_72 = extractvalue {i64, i1} %_70, 0
  store i64 %_72, i64* %_7
  %_73 = load i64, i64* %_7
  %_74 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_75 = bitcast i8 addrspace (1)* %_74 to i64 addrspace (1)*
  store i64 %_73, i64 addrspace (1)* %_75, align 8
  %_76 = getelementptr i8, i8 addrspace (1)* %_74, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_76)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_77 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 0)
  %_78 = extractvalue {i64, i1} %_77, 1
  br i1 %_78, label %L15, label %L14
L13:
  store i64 2049, i64* %_41
  br label %L2
L14:
  %_79 = extractvalue {i64, i1} %_77, 0
  store i64 %_79, i64* %_9
  %_80 = load i64, i64* %_9
  %_81 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_82 = bitcast i8 addrspace (1)* %_81 to i64 addrspace (1)*
  store i64 %_80, i64 addrspace (1)* %_82, align 8
  %_83 = getelementptr i8, i8 addrspace (1)* %_81, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_83)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_84 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_85 = extractvalue {i64, i1} %_84, 1
  br i1 %_85, label %L17, label %L16
L15:
  store i64 2305, i64* %_41
  br label %L2
L16:
  %_86 = extractvalue {i64, i1} %_84, 0
  store i64 %_86, i64* %_11
  %_87 = load i64, i64* %_11
  %_88 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 %_87)
  %_89 = extractvalue {i64, i1} %_88, 1
  br i1 %_89, label %L19, label %L18
L17:
  store i64 2561, i64* %_41
  br label %L2
L18:
  %_90 = extractvalue {i64, i1} %_88, 0
  store i64 %_90, i64* %_12
  %_91 = load i64, i64* %_12
  %_92 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_93 = bitcast i8 addrspace (1)* %_92 to i64 addrspace (1)*
  store i64 %_91, i64 addrspace (1)* %_93, align 8
  %_94 = getelementptr i8, i8 addrspace (1)* %_92, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_94)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  %_95 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 1)
  %_96 = extractvalue {i64, i1} %_95, 1
  br i1 %_96, label %L21, label %L20
L19:
  store i64 2561, i64* %_41
  br label %L2
L20:
  %_97 = extractvalue {i64, i1} %_95, 0
  store i64 %_97, i64* %_14
  %_98 = load i64, i64* %_14
  %_99 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_100 = bitcast i8 addrspace (1)* %_99 to i64 addrspace (1)*
  store i64 %_98, i64 addrspace (1)* %_100, align 8
  %_101 = getelementptr i8, i8 addrspace (1)* %_99, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_101)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  %_102 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 0)
  %_103 = extractvalue {i64, i1} %_102, 1
  br i1 %_103, label %L23, label %L22
L21:
  store i64 3073, i64* %_41
  br label %L2
L22:
  %_104 = extractvalue {i64, i1} %_102, 0
  store i64 %_104, i64* %_16
  %_105 = load i64, i64* %_16
  %_106 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_107 = bitcast i8 addrspace (1)* %_106 to i64 addrspace (1)*
  store i64 %_105, i64 addrspace (1)* %_107, align 8
  %_108 = getelementptr i8, i8 addrspace (1)* %_106, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_108)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_109 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_110 = extractvalue {i64, i1} %_109, 1
  br i1 %_110, label %L25, label %L24
L23:
  store i64 3329, i64* %_41
  br label %L2
L24:
  %_111 = extractvalue {i64, i1} %_109, 0
  store i64 %_111, i64* %_18
  %_112 = load i64, i64* %_18
  %_113 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 %_112)
  %_114 = extractvalue {i64, i1} %_113, 1
  br i1 %_114, label %L27, label %L26
L25:
  store i64 3585, i64* %_41
  br label %L2
L26:
  %_115 = extractvalue {i64, i1} %_113, 0
  store i64 %_115, i64* %_19
  %_116 = load i64, i64* %_19
  %_117 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_118 = bitcast i8 addrspace (1)* %_117 to i64 addrspace (1)*
  store i64 %_116, i64 addrspace (1)* %_118, align 8
  %_119 = getelementptr i8, i8 addrspace (1)* %_117, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_119)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_120 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_121 = extractvalue {i64, i1} %_120, 1
  br i1 %_121, label %L29, label %L28
L27:
  store i64 3585, i64* %_41
  br label %L2
L28:
  %_122 = extractvalue {i64, i1} %_120, 0
  store i64 %_122, i64* %_21
  %_123 = load i64, i64* %_21
  %_124 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_123, i64 1)
  %_125 = extractvalue {i64, i1} %_124, 1
  br i1 %_125, label %L31, label %L30
L29:
  store i64 4097, i64* %_41
  br label %L2
L30:
  %_126 = extractvalue {i64, i1} %_124, 0
  store i64 %_126, i64* %_22
  %_127 = load i64, i64* %_22
  %_128 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_129 = bitcast i8 addrspace (1)* %_128 to i64 addrspace (1)*
  store i64 %_127, i64 addrspace (1)* %_129, align 8
  %_130 = getelementptr i8, i8 addrspace (1)* %_128, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_130)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_131 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_132 = extractvalue {i64, i1} %_131, 1
  br i1 %_132, label %L33, label %L32
L31:
  store i64 4097, i64* %_41
  br label %L2
L32:
  %_133 = extractvalue {i64, i1} %_131, 0
  store i64 %_133, i64* %_24
  %_134 = load i64, i64* %_24
  %_135 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_134, i64 0)
  %_136 = extractvalue {i64, i1} %_135, 1
  br i1 %_136, label %L35, label %L34
L33:
  store i64 4353, i64* %_41
  br label %L2
L34:
  %_137 = extractvalue {i64, i1} %_135, 0
  store i64 %_137, i64* %_25
  %_138 = load i64, i64* %_25
  %_139 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_140 = bitcast i8 addrspace (1)* %_139 to i64 addrspace (1)*
  store i64 %_138, i64 addrspace (1)* %_140, align 8
  %_141 = getelementptr i8, i8 addrspace (1)* %_139, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_141)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  %_142 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_143 = extractvalue {i64, i1} %_142, 1
  br i1 %_143, label %L37, label %L36
L35:
  store i64 4353, i64* %_41
  br label %L2
L36:
  %_144 = extractvalue {i64, i1} %_142, 0
  store i64 %_144, i64* %_27
  %_145 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_146 = extractvalue {i64, i1} %_145, 1
  br i1 %_146, label %L39, label %L38
L37:
  store i64 4609, i64* %_41
  br label %L2
L38:
  %_147 = extractvalue {i64, i1} %_145, 0
  store i64 %_147, i64* %_28
  %_148 = load i64, i64* %_27
  %_149 = load i64, i64* %_28
  %_150 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_148, i64 %_149)
  %_151 = extractvalue {i64, i1} %_150, 1
  br i1 %_151, label %L41, label %L40
L39:
  store i64 4609, i64* %_41
  br label %L2
L40:
  %_152 = extractvalue {i64, i1} %_150, 0
  store i64 %_152, i64* %_29
  %_153 = load i64, i64* %_29
  %_154 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_155 = bitcast i8 addrspace (1)* %_154 to i64 addrspace (1)*
  store i64 %_153, i64 addrspace (1)* %_155, align 8
  %_156 = getelementptr i8, i8 addrspace (1)* %_154, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_156)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_30
  %_157 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_158 = extractvalue {i64, i1} %_157, 1
  br i1 %_158, label %L43, label %L42
L41:
  store i64 4609, i64* %_41
  br label %L2
L42:
  %_159 = extractvalue {i64, i1} %_157, 0
  store i64 %_159, i64* %_31
  %_160 = load i64, i64* %_31
  %_161 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_160, i64 1)
  %_162 = extractvalue {i64, i1} %_161, 1
  br i1 %_162, label %L45, label %L44
L43:
  store i64 5121, i64* %_41
  br label %L2
L44:
  %_163 = extractvalue {i64, i1} %_161, 0
  store i64 %_163, i64* %_32
  %_164 = load i64, i64* %_32
  %_165 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_166 = bitcast i8 addrspace (1)* %_165 to i64 addrspace (1)*
  store i64 %_164, i64 addrspace (1)* %_166, align 8
  %_167 = getelementptr i8, i8 addrspace (1)* %_165, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_167)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_33
  %_168 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_169 = extractvalue {i64, i1} %_168, 1
  br i1 %_169, label %L47, label %L46
L45:
  store i64 5121, i64* %_41
  br label %L2
L46:
  %_170 = extractvalue {i64, i1} %_168, 0
  store i64 %_170, i64* %_34
  %_171 = load i64, i64* %_34
  %_172 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_171, i64 0)
  %_173 = extractvalue {i64, i1} %_172, 1
  br i1 %_173, label %L49, label %L48
L47:
  store i64 5377, i64* %_41
  br label %L2
L48:
  %_174 = extractvalue {i64, i1} %_172, 0
  store i64 %_174, i64* %_35
  %_175 = load i64, i64* %_35
  %_176 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_177 = bitcast i8 addrspace (1)* %_176 to i64 addrspace (1)*
  store i64 %_175, i64 addrspace (1)* %_177, align 8
  %_178 = getelementptr i8, i8 addrspace (1)* %_176, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_178)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_36
  %_179 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_180 = extractvalue {i64, i1} %_179, 1
  br i1 %_180, label %L51, label %L50
L49:
  store i64 5377, i64* %_41
  br label %L2
L50:
  %_181 = extractvalue {i64, i1} %_179, 0
  store i64 %_181, i64* %_37
  %_182 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_183 = extractvalue {i64, i1} %_182, 1
  br i1 %_183, label %L53, label %L52
L51:
  store i64 5633, i64* %_41
  br label %L2
L52:
  %_184 = extractvalue {i64, i1} %_182, 0
  store i64 %_184, i64* %_38
  %_185 = load i64, i64* %_37
  %_186 = load i64, i64* %_38
  %_187 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_185, i64 %_186)
  %_188 = extractvalue {i64, i1} %_187, 1
  br i1 %_188, label %L55, label %L54
L53:
  store i64 5633, i64* %_41
  br label %L2
L54:
  %_189 = extractvalue {i64, i1} %_187, 0
  store i64 %_189, i64* %_39
  %_190 = load i64, i64* %_39
  %_191 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_192 = bitcast i8 addrspace (1)* %_191 to i64 addrspace (1)*
  store i64 %_190, i64 addrspace (1)* %_192, align 8
  %_193 = getelementptr i8, i8 addrspace (1)* %_191, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_193)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_40
  ret void
L55:
  store i64 5633, i64* %_41
  br label %L2
}
