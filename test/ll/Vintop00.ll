@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i8*
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i8*
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i8*
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i8*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8*
  %_37 = alloca i64
  %_38 = alloca i8
  %_39 = load i8*, i8** @_bal_stack_guard
  %_40 = icmp ult i8* %_38, %_39
  br i1 %_40, label %L3, label %L1
L1:
  %_41 = icmp eq i64 3, 0
  br i1 %_41, label %L4, label %L5
L2:
  %_203 = load i64, i64* %_37
  call void @_bal_panic (i64 %_203)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  store i64 1026, i64* %_37
  br label %L2
L5:
  %_42 = icmp eq i64 6, -9223372036854775808
  %_43 = icmp eq i64 3, -1
  %_44 = and i1 %_42, %_43
  br i1 %_44, label %L7, label %L6
L6:
  %_45 = sdiv i64 6, 3
  store i64 %_45, i64* %_0
  %_46 = load i64, i64* %_0
  %_47 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 12, i64 %_46)
  %_48 = extractvalue {i64, i1} %_47, 1
  br i1 %_48, label %L9, label %L8
L7:
  store i64 1025, i64* %_37
  br label %L2
L8:
  %_49 = extractvalue {i64, i1} %_47, 0
  store i64 %_49, i64* %_1
  %_50 = load i64, i64* %_1
  %_51 = call i8* @_bal_alloc (i64 8)
  %_52 = bitcast i8* %_51 to i64*
  store i64 %_50, i64* %_52, align 8
  %_53 = getelementptr i8, i8* %_51, i64 504403158265495552
  call void @_Bio__println (i8* %_53)
  store i8* null, i8** %_2
  %_54 = icmp eq i64 3, 0
  br i1 %_54, label %L10, label %L11
L9:
  store i64 1025, i64* %_37
  br label %L2
L10:
  store i64 1282, i64* %_37
  br label %L2
L11:
  %_55 = icmp eq i64 30, -9223372036854775808
  %_56 = icmp eq i64 3, -1
  %_57 = and i1 %_55, %_56
  br i1 %_57, label %L13, label %L12
L12:
  %_58 = sdiv i64 30, 3
  store i64 %_58, i64* %_3
  %_59 = load i64, i64* %_3
  %_60 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_59, i64 12)
  %_61 = extractvalue {i64, i1} %_60, 1
  br i1 %_61, label %L15, label %L14
L13:
  store i64 1281, i64* %_37
  br label %L2
L14:
  %_62 = extractvalue {i64, i1} %_60, 0
  store i64 %_62, i64* %_4
  %_63 = load i64, i64* %_4
  %_64 = call i8* @_bal_alloc (i64 8)
  %_65 = bitcast i8* %_64 to i64*
  store i64 %_63, i64* %_65, align 8
  %_66 = getelementptr i8, i8* %_64, i64 504403158265495552
  call void @_Bio__println (i8* %_66)
  store i8* null, i8** %_5
  %_67 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 6, i64 3)
  %_68 = extractvalue {i64, i1} %_67, 1
  br i1 %_68, label %L17, label %L16
L15:
  store i64 1281, i64* %_37
  br label %L2
L16:
  %_69 = extractvalue {i64, i1} %_67, 0
  store i64 %_69, i64* %_6
  %_70 = load i64, i64* %_6
  %_71 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_70, i64 2)
  %_72 = extractvalue {i64, i1} %_71, 1
  br i1 %_72, label %L19, label %L18
L17:
  store i64 1537, i64* %_37
  br label %L2
L18:
  %_73 = extractvalue {i64, i1} %_71, 0
  store i64 %_73, i64* %_7
  %_74 = load i64, i64* %_7
  %_75 = call i8* @_bal_alloc (i64 8)
  %_76 = bitcast i8* %_75 to i64*
  store i64 %_74, i64* %_76, align 8
  %_77 = getelementptr i8, i8* %_75, i64 504403158265495552
  call void @_Bio__println (i8* %_77)
  store i8* null, i8** %_8
  %_78 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 4, i64 2)
  %_79 = extractvalue {i64, i1} %_78, 1
  br i1 %_79, label %L21, label %L20
L19:
  store i64 1537, i64* %_37
  br label %L2
L20:
  %_80 = extractvalue {i64, i1} %_78, 0
  store i64 %_80, i64* %_9
  %_81 = load i64, i64* %_9
  %_82 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 %_81)
  %_83 = extractvalue {i64, i1} %_82, 1
  br i1 %_83, label %L23, label %L22
L21:
  store i64 1793, i64* %_37
  br label %L2
L22:
  %_84 = extractvalue {i64, i1} %_82, 0
  store i64 %_84, i64* %_10
  %_85 = load i64, i64* %_10
  %_86 = call i8* @_bal_alloc (i64 8)
  %_87 = bitcast i8* %_86 to i64*
  store i64 %_85, i64* %_87, align 8
  %_88 = getelementptr i8, i8* %_86, i64 504403158265495552
  call void @_Bio__println (i8* %_88)
  store i8* null, i8** %_11
  %_89 = icmp eq i64 3, 0
  br i1 %_89, label %L24, label %L25
L23:
  store i64 1793, i64* %_37
  br label %L2
L24:
  store i64 2050, i64* %_37
  br label %L2
L25:
  %_90 = icmp eq i64 4, -9223372036854775808
  %_91 = icmp eq i64 3, -1
  %_92 = and i1 %_90, %_91
  br i1 %_92, label %L27, label %L26
L26:
  %_93 = srem i64 4, 3
  store i64 %_93, i64* %_12
  br label %L28
L27:
  store i64 0, i64* %_12
  br label %L28
L28:
  %_94 = load i64, i64* %_12
  %_95 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 9, i64 %_94)
  %_96 = extractvalue {i64, i1} %_95, 1
  br i1 %_96, label %L30, label %L29
L29:
  %_97 = extractvalue {i64, i1} %_95, 0
  store i64 %_97, i64* %_13
  %_98 = load i64, i64* %_13
  %_99 = call i8* @_bal_alloc (i64 8)
  %_100 = bitcast i8* %_99 to i64*
  store i64 %_98, i64* %_100, align 8
  %_101 = getelementptr i8, i8* %_99, i64 504403158265495552
  call void @_Bio__println (i8* %_101)
  store i8* null, i8** %_14
  %_102 = icmp eq i64 3, 0
  br i1 %_102, label %L31, label %L32
L30:
  store i64 2049, i64* %_37
  br label %L2
L31:
  store i64 2306, i64* %_37
  br label %L2
L32:
  %_103 = icmp eq i64 4, -9223372036854775808
  %_104 = icmp eq i64 3, -1
  %_105 = and i1 %_103, %_104
  br i1 %_105, label %L34, label %L33
L33:
  %_106 = srem i64 4, 3
  store i64 %_106, i64* %_15
  br label %L35
L34:
  store i64 0, i64* %_15
  br label %L35
L35:
  %_107 = load i64, i64* %_15
  %_108 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_107, i64 9)
  %_109 = extractvalue {i64, i1} %_108, 1
  br i1 %_109, label %L37, label %L36
L36:
  %_110 = extractvalue {i64, i1} %_108, 0
  store i64 %_110, i64* %_16
  %_111 = load i64, i64* %_16
  %_112 = call i8* @_bal_alloc (i64 8)
  %_113 = bitcast i8* %_112 to i64*
  store i64 %_111, i64* %_113, align 8
  %_114 = getelementptr i8, i8* %_112, i64 504403158265495552
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_17
  %_115 = icmp eq i64 11, 0
  br i1 %_115, label %L38, label %L39
L37:
  store i64 2305, i64* %_37
  br label %L2
L38:
  store i64 2562, i64* %_37
  br label %L2
L39:
  %_116 = icmp eq i64 18, -9223372036854775808
  %_117 = icmp eq i64 11, -1
  %_118 = and i1 %_116, %_117
  br i1 %_118, label %L41, label %L40
L40:
  %_119 = srem i64 18, 11
  store i64 %_119, i64* %_18
  br label %L42
L41:
  store i64 0, i64* %_18
  br label %L42
L42:
  %_120 = load i64, i64* %_18
  %_121 = icmp eq i64 3, 0
  br i1 %_121, label %L43, label %L44
L43:
  store i64 2562, i64* %_37
  br label %L2
L44:
  %_122 = icmp eq i64 %_120, -9223372036854775808
  %_123 = icmp eq i64 3, -1
  %_124 = and i1 %_122, %_123
  br i1 %_124, label %L46, label %L45
L45:
  %_125 = srem i64 %_120, 3
  store i64 %_125, i64* %_19
  br label %L47
L46:
  store i64 0, i64* %_19
  br label %L47
L47:
  %_126 = load i64, i64* %_19
  %_127 = call i8* @_bal_alloc (i64 8)
  %_128 = bitcast i8* %_127 to i64*
  store i64 %_126, i64* %_128, align 8
  %_129 = getelementptr i8, i8* %_127, i64 504403158265495552
  call void @_Bio__println (i8* %_129)
  store i8* null, i8** %_20
  %_130 = icmp eq i64 18, 0
  br i1 %_130, label %L48, label %L49
L48:
  store i64 2818, i64* %_37
  br label %L2
L49:
  %_131 = icmp eq i64 30, -9223372036854775808
  %_132 = icmp eq i64 18, -1
  %_133 = and i1 %_131, %_132
  br i1 %_133, label %L51, label %L50
L50:
  %_134 = srem i64 30, 18
  store i64 %_134, i64* %_21
  br label %L52
L51:
  store i64 0, i64* %_21
  br label %L52
L52:
  %_135 = load i64, i64* %_21
  %_136 = icmp eq i64 11, 0
  br i1 %_136, label %L53, label %L54
L53:
  store i64 2818, i64* %_37
  br label %L2
L54:
  %_137 = icmp eq i64 %_135, -9223372036854775808
  %_138 = icmp eq i64 11, -1
  %_139 = and i1 %_137, %_138
  br i1 %_139, label %L56, label %L55
L55:
  %_140 = srem i64 %_135, 11
  store i64 %_140, i64* %_22
  br label %L57
L56:
  store i64 0, i64* %_22
  br label %L57
L57:
  %_141 = load i64, i64* %_22
  %_142 = icmp eq i64 5, 0
  br i1 %_142, label %L58, label %L59
L58:
  store i64 2818, i64* %_37
  br label %L2
L59:
  %_143 = icmp eq i64 %_141, -9223372036854775808
  %_144 = icmp eq i64 5, -1
  %_145 = and i1 %_143, %_144
  br i1 %_145, label %L61, label %L60
L60:
  %_146 = srem i64 %_141, 5
  store i64 %_146, i64* %_23
  br label %L62
L61:
  store i64 0, i64* %_23
  br label %L62
L62:
  %_147 = load i64, i64* %_23
  %_148 = call i8* @_bal_alloc (i64 8)
  %_149 = bitcast i8* %_148 to i64*
  store i64 %_147, i64* %_149, align 8
  %_150 = getelementptr i8, i8* %_148, i64 504403158265495552
  call void @_Bio__println (i8* %_150)
  store i8* null, i8** %_24
  %_151 = icmp eq i64 12, 0
  br i1 %_151, label %L63, label %L64
L63:
  store i64 3074, i64* %_37
  br label %L2
L64:
  %_152 = icmp eq i64 18, -9223372036854775808
  %_153 = icmp eq i64 12, -1
  %_154 = and i1 %_152, %_153
  br i1 %_154, label %L66, label %L65
L65:
  %_155 = srem i64 18, 12
  store i64 %_155, i64* %_25
  br label %L67
L66:
  store i64 0, i64* %_25
  br label %L67
L67:
  %_156 = load i64, i64* %_25
  %_157 = icmp eq i64 3, 0
  br i1 %_157, label %L68, label %L69
L68:
  store i64 3074, i64* %_37
  br label %L2
L69:
  %_158 = icmp eq i64 %_156, -9223372036854775808
  %_159 = icmp eq i64 3, -1
  %_160 = and i1 %_158, %_159
  br i1 %_160, label %L71, label %L70
L70:
  %_161 = sdiv i64 %_156, 3
  store i64 %_161, i64* %_26
  %_162 = load i64, i64* %_26
  %_163 = call i8* @_bal_alloc (i64 8)
  %_164 = bitcast i8* %_163 to i64*
  store i64 %_162, i64* %_164, align 8
  %_165 = getelementptr i8, i8* %_163, i64 504403158265495552
  call void @_Bio__println (i8* %_165)
  store i8* null, i8** %_27
  %_166 = icmp eq i64 8, 0
  br i1 %_166, label %L72, label %L73
L71:
  store i64 3073, i64* %_37
  br label %L2
L72:
  store i64 3330, i64* %_37
  br label %L2
L73:
  %_167 = icmp eq i64 16, -9223372036854775808
  %_168 = icmp eq i64 8, -1
  %_169 = and i1 %_167, %_168
  br i1 %_169, label %L75, label %L74
L74:
  %_170 = sdiv i64 16, 8
  store i64 %_170, i64* %_28
  %_171 = load i64, i64* %_28
  %_172 = icmp eq i64 6, 0
  br i1 %_172, label %L76, label %L77
L75:
  store i64 3329, i64* %_37
  br label %L2
L76:
  store i64 3330, i64* %_37
  br label %L2
L77:
  %_173 = icmp eq i64 %_171, -9223372036854775808
  %_174 = icmp eq i64 6, -1
  %_175 = and i1 %_173, %_174
  br i1 %_175, label %L79, label %L78
L78:
  %_176 = srem i64 %_171, 6
  store i64 %_176, i64* %_29
  br label %L80
L79:
  store i64 0, i64* %_29
  br label %L80
L80:
  %_177 = load i64, i64* %_29
  %_178 = call i8* @_bal_alloc (i64 8)
  %_179 = bitcast i8* %_178 to i64*
  store i64 %_177, i64* %_179, align 8
  %_180 = getelementptr i8, i8* %_178, i64 504403158265495552
  call void @_Bio__println (i8* %_180)
  store i8* null, i8** %_30
  %_181 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_182 = extractvalue {i64, i1} %_181, 1
  br i1 %_182, label %L82, label %L81
L81:
  %_183 = extractvalue {i64, i1} %_181, 0
  store i64 %_183, i64* %_31
  %_184 = load i64, i64* %_31
  %_185 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 4, i64 %_184)
  %_186 = extractvalue {i64, i1} %_185, 1
  br i1 %_186, label %L84, label %L83
L82:
  store i64 3585, i64* %_37
  br label %L2
L83:
  %_187 = extractvalue {i64, i1} %_185, 0
  store i64 %_187, i64* %_32
  %_188 = load i64, i64* %_32
  %_189 = call i8* @_bal_alloc (i64 8)
  %_190 = bitcast i8* %_189 to i64*
  store i64 %_188, i64* %_190, align 8
  %_191 = getelementptr i8, i8* %_189, i64 504403158265495552
  call void @_Bio__println (i8* %_191)
  store i8* null, i8** %_33
  %_192 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_193 = extractvalue {i64, i1} %_192, 1
  br i1 %_193, label %L86, label %L85
L84:
  store i64 3585, i64* %_37
  br label %L2
L85:
  %_194 = extractvalue {i64, i1} %_192, 0
  store i64 %_194, i64* %_34
  %_195 = load i64, i64* %_34
  %_196 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_195, i64 4)
  %_197 = extractvalue {i64, i1} %_196, 1
  br i1 %_197, label %L88, label %L87
L86:
  store i64 3841, i64* %_37
  br label %L2
L87:
  %_198 = extractvalue {i64, i1} %_196, 0
  store i64 %_198, i64* %_35
  %_199 = load i64, i64* %_35
  %_200 = call i8* @_bal_alloc (i64 8)
  %_201 = bitcast i8* %_200 to i64*
  store i64 %_199, i64* %_201, align 8
  %_202 = getelementptr i8, i8* %_200, i64 504403158265495552
  call void @_Bio__println (i8* %_202)
  store i8* null, i8** %_36
  ret void
L88:
  store i64 3841, i64* %_37
  br label %L2
}
