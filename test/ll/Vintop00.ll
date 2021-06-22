declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
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
  %_38 = icmp eq i64 3, 0
  br i1 %_38, label %L2, label %L3
L1:
  %_192 = load i64, i64* %_37
  call void @_bal_panic (i64 %_192)
  unreachable
L2:
  store i64 2, i64* %_37
  br label %L1
L3:
  %_39 = icmp eq i64 6, -9223372036854775808
  %_40 = icmp eq i64 3, -1
  %_41 = and i1 %_39, %_40
  br i1 %_41, label %L5, label %L4
L4:
  %_42 = sdiv i64 6, 3
  store i64 %_42, i64* %_0
  %_43 = load i64, i64* %_0
  %_44 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 12, i64 %_43)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L7, label %L6
L5:
  store i64 1, i64* %_37
  br label %L1
L6:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_1
  %_47 = load i64, i64* %_1
  %_48 = call i8* @_bal_alloc (i64 8)
  %_49 = bitcast i8* %_48 to i64*
  store i64 %_47, i64* %_49, align 8
  %_50 = getelementptr i8, i8* %_48, i64 144115188075855872
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_2
  %_51 = icmp eq i64 3, 0
  br i1 %_51, label %L8, label %L9
L7:
  store i64 1, i64* %_37
  br label %L1
L8:
  store i64 2, i64* %_37
  br label %L1
L9:
  %_52 = icmp eq i64 30, -9223372036854775808
  %_53 = icmp eq i64 3, -1
  %_54 = and i1 %_52, %_53
  br i1 %_54, label %L11, label %L10
L10:
  %_55 = sdiv i64 30, 3
  store i64 %_55, i64* %_3
  %_56 = load i64, i64* %_3
  %_57 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_56, i64 12)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L13, label %L12
L11:
  store i64 1, i64* %_37
  br label %L1
L12:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_4
  %_60 = load i64, i64* %_4
  %_61 = call i8* @_bal_alloc (i64 8)
  %_62 = bitcast i8* %_61 to i64*
  store i64 %_60, i64* %_62, align 8
  %_63 = getelementptr i8, i8* %_61, i64 144115188075855872
  call void @_Bio__println (i8* %_63)
  store i8* null, i8** %_5
  %_64 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 6, i64 3)
  %_65 = extractvalue {i64, i1} %_64, 1
  br i1 %_65, label %L15, label %L14
L13:
  store i64 1, i64* %_37
  br label %L1
L14:
  %_66 = extractvalue {i64, i1} %_64, 0
  store i64 %_66, i64* %_6
  %_67 = load i64, i64* %_6
  %_68 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_67, i64 2)
  %_69 = extractvalue {i64, i1} %_68, 1
  br i1 %_69, label %L17, label %L16
L15:
  store i64 1, i64* %_37
  br label %L1
L16:
  %_70 = extractvalue {i64, i1} %_68, 0
  store i64 %_70, i64* %_7
  %_71 = load i64, i64* %_7
  %_72 = call i8* @_bal_alloc (i64 8)
  %_73 = bitcast i8* %_72 to i64*
  store i64 %_71, i64* %_73, align 8
  %_74 = getelementptr i8, i8* %_72, i64 144115188075855872
  call void @_Bio__println (i8* %_74)
  store i8* null, i8** %_8
  %_75 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 4, i64 2)
  %_76 = extractvalue {i64, i1} %_75, 1
  br i1 %_76, label %L19, label %L18
L17:
  store i64 1, i64* %_37
  br label %L1
L18:
  %_77 = extractvalue {i64, i1} %_75, 0
  store i64 %_77, i64* %_9
  %_78 = load i64, i64* %_9
  %_79 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 %_78)
  %_80 = extractvalue {i64, i1} %_79, 1
  br i1 %_80, label %L21, label %L20
L19:
  store i64 1, i64* %_37
  br label %L1
L20:
  %_81 = extractvalue {i64, i1} %_79, 0
  store i64 %_81, i64* %_10
  %_82 = load i64, i64* %_10
  %_83 = call i8* @_bal_alloc (i64 8)
  %_84 = bitcast i8* %_83 to i64*
  store i64 %_82, i64* %_84, align 8
  %_85 = getelementptr i8, i8* %_83, i64 144115188075855872
  call void @_Bio__println (i8* %_85)
  store i8* null, i8** %_11
  %_86 = icmp eq i64 3, 0
  br i1 %_86, label %L22, label %L23
L21:
  store i64 1, i64* %_37
  br label %L1
L22:
  store i64 2, i64* %_37
  br label %L1
L23:
  %_87 = icmp eq i64 4, -9223372036854775808
  %_88 = icmp eq i64 3, -1
  %_89 = and i1 %_87, %_88
  br i1 %_89, label %L25, label %L24
L24:
  %_90 = srem i64 4, 3
  store i64 %_90, i64* %_12
  br label %L26
L25:
  store i64 0, i64* %_12
  br label %L26
L26:
  %_91 = load i64, i64* %_12
  %_92 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 9, i64 %_91)
  %_93 = extractvalue {i64, i1} %_92, 1
  br i1 %_93, label %L28, label %L27
L27:
  %_94 = extractvalue {i64, i1} %_92, 0
  store i64 %_94, i64* %_13
  %_95 = load i64, i64* %_13
  %_96 = call i8* @_bal_alloc (i64 8)
  %_97 = bitcast i8* %_96 to i64*
  store i64 %_95, i64* %_97, align 8
  %_98 = getelementptr i8, i8* %_96, i64 144115188075855872
  call void @_Bio__println (i8* %_98)
  store i8* null, i8** %_14
  %_99 = icmp eq i64 3, 0
  br i1 %_99, label %L29, label %L30
L28:
  store i64 1, i64* %_37
  br label %L1
L29:
  store i64 2, i64* %_37
  br label %L1
L30:
  %_100 = icmp eq i64 4, -9223372036854775808
  %_101 = icmp eq i64 3, -1
  %_102 = and i1 %_100, %_101
  br i1 %_102, label %L32, label %L31
L31:
  %_103 = srem i64 4, 3
  store i64 %_103, i64* %_15
  br label %L33
L32:
  store i64 0, i64* %_15
  br label %L33
L33:
  %_104 = load i64, i64* %_15
  %_105 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_104, i64 9)
  %_106 = extractvalue {i64, i1} %_105, 1
  br i1 %_106, label %L35, label %L34
L34:
  %_107 = extractvalue {i64, i1} %_105, 0
  store i64 %_107, i64* %_16
  %_108 = load i64, i64* %_16
  %_109 = call i8* @_bal_alloc (i64 8)
  %_110 = bitcast i8* %_109 to i64*
  store i64 %_108, i64* %_110, align 8
  %_111 = getelementptr i8, i8* %_109, i64 144115188075855872
  call void @_Bio__println (i8* %_111)
  store i8* null, i8** %_17
  %_112 = icmp eq i64 11, 0
  br i1 %_112, label %L36, label %L37
L35:
  store i64 1, i64* %_37
  br label %L1
L36:
  store i64 2, i64* %_37
  br label %L1
L37:
  %_113 = icmp eq i64 18, -9223372036854775808
  %_114 = icmp eq i64 11, -1
  %_115 = and i1 %_113, %_114
  br i1 %_115, label %L39, label %L38
L38:
  %_116 = srem i64 18, 11
  store i64 %_116, i64* %_18
  br label %L40
L39:
  store i64 0, i64* %_18
  br label %L40
L40:
  %_117 = load i64, i64* %_18
  %_118 = icmp eq i64 3, 0
  br i1 %_118, label %L41, label %L42
L41:
  store i64 2, i64* %_37
  br label %L1
L42:
  %_119 = icmp eq i64 %_117, -9223372036854775808
  %_120 = icmp eq i64 3, -1
  %_121 = and i1 %_119, %_120
  br i1 %_121, label %L44, label %L43
L43:
  %_122 = srem i64 %_117, 3
  store i64 %_122, i64* %_19
  br label %L45
L44:
  store i64 0, i64* %_19
  br label %L45
L45:
  %_123 = load i64, i64* %_19
  %_124 = call i8* @_bal_alloc (i64 8)
  %_125 = bitcast i8* %_124 to i64*
  store i64 %_123, i64* %_125, align 8
  %_126 = getelementptr i8, i8* %_124, i64 144115188075855872
  call void @_Bio__println (i8* %_126)
  store i8* null, i8** %_20
  %_127 = icmp eq i64 18, 0
  br i1 %_127, label %L46, label %L47
L46:
  store i64 2, i64* %_37
  br label %L1
L47:
  %_128 = icmp eq i64 30, -9223372036854775808
  %_129 = icmp eq i64 18, -1
  %_130 = and i1 %_128, %_129
  br i1 %_130, label %L49, label %L48
L48:
  %_131 = srem i64 30, 18
  store i64 %_131, i64* %_21
  br label %L50
L49:
  store i64 0, i64* %_21
  br label %L50
L50:
  %_132 = load i64, i64* %_21
  %_133 = icmp eq i64 11, 0
  br i1 %_133, label %L51, label %L52
L51:
  store i64 2, i64* %_37
  br label %L1
L52:
  %_134 = icmp eq i64 %_132, -9223372036854775808
  %_135 = icmp eq i64 11, -1
  %_136 = and i1 %_134, %_135
  br i1 %_136, label %L54, label %L53
L53:
  %_137 = srem i64 %_132, 11
  store i64 %_137, i64* %_22
  br label %L55
L54:
  store i64 0, i64* %_22
  br label %L55
L55:
  %_138 = load i64, i64* %_22
  %_139 = icmp eq i64 5, 0
  br i1 %_139, label %L56, label %L57
L56:
  store i64 2, i64* %_37
  br label %L1
L57:
  %_140 = icmp eq i64 %_138, -9223372036854775808
  %_141 = icmp eq i64 5, -1
  %_142 = and i1 %_140, %_141
  br i1 %_142, label %L59, label %L58
L58:
  %_143 = srem i64 %_138, 5
  store i64 %_143, i64* %_23
  br label %L60
L59:
  store i64 0, i64* %_23
  br label %L60
L60:
  %_144 = load i64, i64* %_23
  %_145 = call i8* @_bal_alloc (i64 8)
  %_146 = bitcast i8* %_145 to i64*
  store i64 %_144, i64* %_146, align 8
  %_147 = getelementptr i8, i8* %_145, i64 144115188075855872
  call void @_Bio__println (i8* %_147)
  store i8* null, i8** %_24
  %_148 = icmp eq i64 12, 0
  br i1 %_148, label %L61, label %L62
L61:
  store i64 2, i64* %_37
  br label %L1
L62:
  %_149 = icmp eq i64 18, -9223372036854775808
  %_150 = icmp eq i64 12, -1
  %_151 = and i1 %_149, %_150
  br i1 %_151, label %L64, label %L63
L63:
  %_152 = srem i64 18, 12
  store i64 %_152, i64* %_25
  br label %L65
L64:
  store i64 0, i64* %_25
  br label %L65
L65:
  %_153 = load i64, i64* %_25
  %_154 = icmp eq i64 3, 0
  br i1 %_154, label %L66, label %L67
L66:
  store i64 2, i64* %_37
  br label %L1
L67:
  %_155 = icmp eq i64 %_153, -9223372036854775808
  %_156 = icmp eq i64 3, -1
  %_157 = and i1 %_155, %_156
  br i1 %_157, label %L69, label %L68
L68:
  %_158 = sdiv i64 %_153, 3
  store i64 %_158, i64* %_26
  %_159 = load i64, i64* %_26
  %_160 = call i8* @_bal_alloc (i64 8)
  %_161 = bitcast i8* %_160 to i64*
  store i64 %_159, i64* %_161, align 8
  %_162 = getelementptr i8, i8* %_160, i64 144115188075855872
  call void @_Bio__println (i8* %_162)
  store i8* null, i8** %_27
  %_163 = icmp eq i64 8, 0
  br i1 %_163, label %L70, label %L71
L69:
  store i64 1, i64* %_37
  br label %L1
L70:
  store i64 2, i64* %_37
  br label %L1
L71:
  %_164 = icmp eq i64 16, -9223372036854775808
  %_165 = icmp eq i64 8, -1
  %_166 = and i1 %_164, %_165
  br i1 %_166, label %L73, label %L72
L72:
  %_167 = sdiv i64 16, 8
  store i64 %_167, i64* %_28
  %_168 = load i64, i64* %_28
  %_169 = icmp eq i64 6, 0
  br i1 %_169, label %L74, label %L75
L73:
  store i64 1, i64* %_37
  br label %L1
L74:
  store i64 2, i64* %_37
  br label %L1
L75:
  %_170 = icmp eq i64 %_168, -9223372036854775808
  %_171 = icmp eq i64 6, -1
  %_172 = and i1 %_170, %_171
  br i1 %_172, label %L77, label %L76
L76:
  %_173 = srem i64 %_168, 6
  store i64 %_173, i64* %_29
  br label %L78
L77:
  store i64 0, i64* %_29
  br label %L78
L78:
  %_174 = load i64, i64* %_29
  %_175 = call i8* @_bal_alloc (i64 8)
  %_176 = bitcast i8* %_175 to i64*
  store i64 %_174, i64* %_176, align 8
  %_177 = getelementptr i8, i8* %_175, i64 144115188075855872
  call void @_Bio__println (i8* %_177)
  store i8* null, i8** %_30
  %_178 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 4, i64 -3)
  %_179 = extractvalue {i64, i1} %_178, 1
  br i1 %_179, label %L80, label %L79
L79:
  %_180 = extractvalue {i64, i1} %_178, 0
  store i64 %_180, i64* %_32
  %_181 = load i64, i64* %_32
  %_182 = call i8* @_bal_alloc (i64 8)
  %_183 = bitcast i8* %_182 to i64*
  store i64 %_181, i64* %_183, align 8
  %_184 = getelementptr i8, i8* %_182, i64 144115188075855872
  call void @_Bio__println (i8* %_184)
  store i8* null, i8** %_33
  %_185 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -3, i64 4)
  %_186 = extractvalue {i64, i1} %_185, 1
  br i1 %_186, label %L82, label %L81
L80:
  store i64 1, i64* %_37
  br label %L1
L81:
  %_187 = extractvalue {i64, i1} %_185, 0
  store i64 %_187, i64* %_35
  %_188 = load i64, i64* %_35
  %_189 = call i8* @_bal_alloc (i64 8)
  %_190 = bitcast i8* %_189 to i64*
  store i64 %_188, i64* %_190, align 8
  %_191 = getelementptr i8, i8* %_189, i64 144115188075855872
  call void @_Bio__println (i8* %_191)
  store i8* null, i8** %_36
  ret void
L82:
  store i64 1, i64* %_37
  br label %L1
}
