declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i8*
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i8*
  %_32 = alloca i64
  %_33 = icmp eq i64 2, 0
  br i1 %_33, label %L2, label %L3
L1:
  %_204 = load i64, i64* %_32
  call void @_bal_panic (i64 %_204)
  unreachable
L2:
  store i64 2, i64* %_32
  br label %L1
L3:
  %_34 = icmp eq i64 60, -9223372036854775808
  %_35 = icmp eq i64 2, -1
  %_36 = and i1 %_34, %_35
  br i1 %_36, label %L5, label %L4
L4:
  %_37 = sdiv i64 60, 2
  store i64 %_37, i64* %_0
  %_38 = load i64, i64* %_0
  %_39 = call i8* @_bal_alloc (i64 8)
  %_40 = bitcast i8* %_39 to i64*
  store i64 %_38, i64* %_40, align 8
  %_41 = getelementptr i8, i8* %_39, i64 144115188075855872
  call void @_Bio__println (i8* %_41)
  store i8* null, i8** %_1
  %_42 = icmp eq i64 3, 0
  br i1 %_42, label %L6, label %L7
L5:
  store i64 1, i64* %_32
  br label %L1
L6:
  store i64 2, i64* %_32
  br label %L1
L7:
  %_43 = icmp eq i64 120, -9223372036854775808
  %_44 = icmp eq i64 3, -1
  %_45 = and i1 %_43, %_44
  br i1 %_45, label %L9, label %L8
L8:
  %_46 = sdiv i64 120, 3
  store i64 %_46, i64* %_2
  %_47 = load i64, i64* %_2
  %_48 = icmp eq i64 4, 0
  br i1 %_48, label %L10, label %L11
L9:
  store i64 1, i64* %_32
  br label %L1
L10:
  store i64 2, i64* %_32
  br label %L1
L11:
  %_49 = icmp eq i64 %_47, -9223372036854775808
  %_50 = icmp eq i64 4, -1
  %_51 = and i1 %_49, %_50
  br i1 %_51, label %L13, label %L12
L12:
  %_52 = sdiv i64 %_47, 4
  store i64 %_52, i64* %_3
  %_53 = load i64, i64* %_3
  %_54 = call i8* @_bal_alloc (i64 8)
  %_55 = bitcast i8* %_54 to i64*
  store i64 %_53, i64* %_55, align 8
  %_56 = getelementptr i8, i8* %_54, i64 144115188075855872
  call void @_Bio__println (i8* %_56)
  store i8* null, i8** %_4
  %_57 = icmp eq i64 3, 0
  br i1 %_57, label %L14, label %L15
L13:
  store i64 1, i64* %_32
  br label %L1
L14:
  store i64 2, i64* %_32
  br label %L1
L15:
  %_58 = icmp eq i64 120, -9223372036854775808
  %_59 = icmp eq i64 3, -1
  %_60 = and i1 %_58, %_59
  br i1 %_60, label %L17, label %L16
L16:
  %_61 = sdiv i64 120, 3
  store i64 %_61, i64* %_5
  %_62 = icmp eq i64 4, 0
  br i1 %_62, label %L18, label %L19
L17:
  store i64 1, i64* %_32
  br label %L1
L18:
  store i64 2, i64* %_32
  br label %L1
L19:
  %_63 = icmp eq i64 16, -9223372036854775808
  %_64 = icmp eq i64 4, -1
  %_65 = and i1 %_63, %_64
  br i1 %_65, label %L21, label %L20
L20:
  %_66 = sdiv i64 16, 4
  store i64 %_66, i64* %_6
  %_67 = load i64, i64* %_5
  %_68 = load i64, i64* %_6
  %_69 = icmp eq i64 %_68, 0
  br i1 %_69, label %L22, label %L23
L21:
  store i64 1, i64* %_32
  br label %L1
L22:
  store i64 2, i64* %_32
  br label %L1
L23:
  %_70 = icmp eq i64 %_67, -9223372036854775808
  %_71 = icmp eq i64 %_68, -1
  %_72 = and i1 %_70, %_71
  br i1 %_72, label %L25, label %L24
L24:
  %_73 = sdiv i64 %_67, %_68
  store i64 %_73, i64* %_7
  %_74 = load i64, i64* %_7
  %_75 = call i8* @_bal_alloc (i64 8)
  %_76 = bitcast i8* %_75 to i64*
  store i64 %_74, i64* %_76, align 8
  %_77 = getelementptr i8, i8* %_75, i64 144115188075855872
  call void @_Bio__println (i8* %_77)
  store i8* null, i8** %_8
  %_78 = icmp eq i64 3, 0
  br i1 %_78, label %L26, label %L27
L25:
  store i64 1, i64* %_32
  br label %L1
L26:
  store i64 2, i64* %_32
  br label %L1
L27:
  %_79 = icmp eq i64 120, -9223372036854775808
  %_80 = icmp eq i64 3, -1
  %_81 = and i1 %_79, %_80
  br i1 %_81, label %L29, label %L28
L28:
  %_82 = sdiv i64 120, 3
  store i64 %_82, i64* %_9
  %_83 = icmp eq i64 4, 0
  br i1 %_83, label %L30, label %L31
L29:
  store i64 1, i64* %_32
  br label %L1
L30:
  store i64 2, i64* %_32
  br label %L1
L31:
  %_84 = icmp eq i64 16, -9223372036854775808
  %_85 = icmp eq i64 4, -1
  %_86 = and i1 %_84, %_85
  br i1 %_86, label %L33, label %L32
L32:
  %_87 = sdiv i64 16, 4
  store i64 %_87, i64* %_10
  %_88 = load i64, i64* %_9
  %_89 = load i64, i64* %_10
  %_90 = icmp eq i64 %_89, 0
  br i1 %_90, label %L34, label %L35
L33:
  store i64 1, i64* %_32
  br label %L1
L34:
  store i64 2, i64* %_32
  br label %L1
L35:
  %_91 = icmp eq i64 %_88, -9223372036854775808
  %_92 = icmp eq i64 %_89, -1
  %_93 = and i1 %_91, %_92
  br i1 %_93, label %L37, label %L36
L36:
  %_94 = sdiv i64 %_88, %_89
  store i64 %_94, i64* %_11
  %_95 = load i64, i64* %_11
  %_96 = call i8* @_bal_alloc (i64 8)
  %_97 = bitcast i8* %_96 to i64*
  store i64 %_95, i64* %_97, align 8
  %_98 = getelementptr i8, i8* %_96, i64 144115188075855872
  call void @_Bio__println (i8* %_98)
  store i8* null, i8** %_12
  %_99 = icmp eq i64 3, 0
  br i1 %_99, label %L38, label %L39
L37:
  store i64 1, i64* %_32
  br label %L1
L38:
  store i64 2, i64* %_32
  br label %L1
L39:
  %_100 = icmp eq i64 120, -9223372036854775808
  %_101 = icmp eq i64 3, -1
  %_102 = and i1 %_100, %_101
  br i1 %_102, label %L41, label %L40
L40:
  %_103 = sdiv i64 120, 3
  store i64 %_103, i64* %_13
  %_104 = icmp eq i64 4, 0
  br i1 %_104, label %L42, label %L43
L41:
  store i64 1, i64* %_32
  br label %L1
L42:
  store i64 2, i64* %_32
  br label %L1
L43:
  %_105 = icmp eq i64 16, -9223372036854775808
  %_106 = icmp eq i64 4, -1
  %_107 = and i1 %_105, %_106
  br i1 %_107, label %L45, label %L44
L44:
  %_108 = sdiv i64 16, 4
  store i64 %_108, i64* %_14
  %_109 = load i64, i64* %_13
  %_110 = load i64, i64* %_14
  %_111 = icmp eq i64 %_110, 0
  br i1 %_111, label %L46, label %L47
L45:
  store i64 1, i64* %_32
  br label %L1
L46:
  store i64 2, i64* %_32
  br label %L1
L47:
  %_112 = icmp eq i64 %_109, -9223372036854775808
  %_113 = icmp eq i64 %_110, -1
  %_114 = and i1 %_112, %_113
  br i1 %_114, label %L49, label %L48
L48:
  %_115 = sdiv i64 %_109, %_110
  store i64 %_115, i64* %_15
  %_116 = load i64, i64* %_15
  %_117 = icmp eq i64 2, 0
  br i1 %_117, label %L50, label %L51
L49:
  store i64 1, i64* %_32
  br label %L1
L50:
  store i64 2, i64* %_32
  br label %L1
L51:
  %_118 = icmp eq i64 %_116, -9223372036854775808
  %_119 = icmp eq i64 2, -1
  %_120 = and i1 %_118, %_119
  br i1 %_120, label %L53, label %L52
L52:
  %_121 = sdiv i64 %_116, 2
  store i64 %_121, i64* %_16
  %_122 = load i64, i64* %_16
  %_123 = call i8* @_bal_alloc (i64 8)
  %_124 = bitcast i8* %_123 to i64*
  store i64 %_122, i64* %_124, align 8
  %_125 = getelementptr i8, i8* %_123, i64 144115188075855872
  call void @_Bio__println (i8* %_125)
  store i8* null, i8** %_17
  %_126 = icmp eq i64 3, 0
  br i1 %_126, label %L54, label %L55
L53:
  store i64 1, i64* %_32
  br label %L1
L54:
  store i64 2, i64* %_32
  br label %L1
L55:
  %_127 = icmp eq i64 120, -9223372036854775808
  %_128 = icmp eq i64 3, -1
  %_129 = and i1 %_127, %_128
  br i1 %_129, label %L57, label %L56
L56:
  %_130 = sdiv i64 120, 3
  store i64 %_130, i64* %_18
  %_131 = icmp eq i64 4, 0
  br i1 %_131, label %L58, label %L59
L57:
  store i64 1, i64* %_32
  br label %L1
L58:
  store i64 2, i64* %_32
  br label %L1
L59:
  %_132 = icmp eq i64 16, -9223372036854775808
  %_133 = icmp eq i64 4, -1
  %_134 = and i1 %_132, %_133
  br i1 %_134, label %L61, label %L60
L60:
  %_135 = sdiv i64 16, 4
  store i64 %_135, i64* %_19
  %_136 = load i64, i64* %_18
  %_137 = load i64, i64* %_19
  %_138 = icmp eq i64 %_137, 0
  br i1 %_138, label %L62, label %L63
L61:
  store i64 1, i64* %_32
  br label %L1
L62:
  store i64 2, i64* %_32
  br label %L1
L63:
  %_139 = icmp eq i64 %_136, -9223372036854775808
  %_140 = icmp eq i64 %_137, -1
  %_141 = and i1 %_139, %_140
  br i1 %_141, label %L65, label %L64
L64:
  %_142 = sdiv i64 %_136, %_137
  store i64 %_142, i64* %_20
  %_143 = icmp eq i64 5, 0
  br i1 %_143, label %L66, label %L67
L65:
  store i64 1, i64* %_32
  br label %L1
L66:
  store i64 2, i64* %_32
  br label %L1
L67:
  %_144 = icmp eq i64 10, -9223372036854775808
  %_145 = icmp eq i64 5, -1
  %_146 = and i1 %_144, %_145
  br i1 %_146, label %L69, label %L68
L68:
  %_147 = sdiv i64 10, 5
  store i64 %_147, i64* %_21
  %_148 = load i64, i64* %_20
  %_149 = load i64, i64* %_21
  %_150 = icmp eq i64 %_149, 0
  br i1 %_150, label %L70, label %L71
L69:
  store i64 1, i64* %_32
  br label %L1
L70:
  store i64 2, i64* %_32
  br label %L1
L71:
  %_151 = icmp eq i64 %_148, -9223372036854775808
  %_152 = icmp eq i64 %_149, -1
  %_153 = and i1 %_151, %_152
  br i1 %_153, label %L73, label %L72
L72:
  %_154 = sdiv i64 %_148, %_149
  store i64 %_154, i64* %_22
  %_155 = load i64, i64* %_22
  %_156 = call i8* @_bal_alloc (i64 8)
  %_157 = bitcast i8* %_156 to i64*
  store i64 %_155, i64* %_157, align 8
  %_158 = getelementptr i8, i8* %_156, i64 144115188075855872
  call void @_Bio__println (i8* %_158)
  store i8* null, i8** %_23
  %_159 = icmp eq i64 3, 0
  br i1 %_159, label %L74, label %L75
L73:
  store i64 1, i64* %_32
  br label %L1
L74:
  store i64 2, i64* %_32
  br label %L1
L75:
  %_160 = icmp eq i64 120, -9223372036854775808
  %_161 = icmp eq i64 3, -1
  %_162 = and i1 %_160, %_161
  br i1 %_162, label %L77, label %L76
L76:
  %_163 = sdiv i64 120, 3
  store i64 %_163, i64* %_24
  %_164 = icmp eq i64 4, 0
  br i1 %_164, label %L78, label %L79
L77:
  store i64 1, i64* %_32
  br label %L1
L78:
  store i64 2, i64* %_32
  br label %L1
L79:
  %_165 = icmp eq i64 16, -9223372036854775808
  %_166 = icmp eq i64 4, -1
  %_167 = and i1 %_165, %_166
  br i1 %_167, label %L81, label %L80
L80:
  %_168 = sdiv i64 16, 4
  store i64 %_168, i64* %_25
  %_169 = load i64, i64* %_24
  %_170 = load i64, i64* %_25
  %_171 = icmp eq i64 %_170, 0
  br i1 %_171, label %L82, label %L83
L81:
  store i64 1, i64* %_32
  br label %L1
L82:
  store i64 2, i64* %_32
  br label %L1
L83:
  %_172 = icmp eq i64 %_169, -9223372036854775808
  %_173 = icmp eq i64 %_170, -1
  %_174 = and i1 %_172, %_173
  br i1 %_174, label %L85, label %L84
L84:
  %_175 = sdiv i64 %_169, %_170
  store i64 %_175, i64* %_26
  %_176 = icmp eq i64 20, 0
  br i1 %_176, label %L86, label %L87
L85:
  store i64 1, i64* %_32
  br label %L1
L86:
  store i64 2, i64* %_32
  br label %L1
L87:
  %_177 = icmp eq i64 400, -9223372036854775808
  %_178 = icmp eq i64 20, -1
  %_179 = and i1 %_177, %_178
  br i1 %_179, label %L89, label %L88
L88:
  %_180 = sdiv i64 400, 20
  store i64 %_180, i64* %_27
  %_181 = icmp eq i64 10, 0
  br i1 %_181, label %L90, label %L91
L89:
  store i64 1, i64* %_32
  br label %L1
L90:
  store i64 2, i64* %_32
  br label %L1
L91:
  %_182 = icmp eq i64 100, -9223372036854775808
  %_183 = icmp eq i64 10, -1
  %_184 = and i1 %_182, %_183
  br i1 %_184, label %L93, label %L92
L92:
  %_185 = sdiv i64 100, 10
  store i64 %_185, i64* %_28
  %_186 = load i64, i64* %_27
  %_187 = load i64, i64* %_28
  %_188 = icmp eq i64 %_187, 0
  br i1 %_188, label %L94, label %L95
L93:
  store i64 1, i64* %_32
  br label %L1
L94:
  store i64 2, i64* %_32
  br label %L1
L95:
  %_189 = icmp eq i64 %_186, -9223372036854775808
  %_190 = icmp eq i64 %_187, -1
  %_191 = and i1 %_189, %_190
  br i1 %_191, label %L97, label %L96
L96:
  %_192 = sdiv i64 %_186, %_187
  store i64 %_192, i64* %_29
  %_193 = load i64, i64* %_26
  %_194 = load i64, i64* %_29
  %_195 = icmp eq i64 %_194, 0
  br i1 %_195, label %L98, label %L99
L97:
  store i64 1, i64* %_32
  br label %L1
L98:
  store i64 2, i64* %_32
  br label %L1
L99:
  %_196 = icmp eq i64 %_193, -9223372036854775808
  %_197 = icmp eq i64 %_194, -1
  %_198 = and i1 %_196, %_197
  br i1 %_198, label %L101, label %L100
L100:
  %_199 = sdiv i64 %_193, %_194
  store i64 %_199, i64* %_30
  %_200 = load i64, i64* %_30
  %_201 = call i8* @_bal_alloc (i64 8)
  %_202 = bitcast i8* %_201 to i64*
  store i64 %_200, i64* %_202, align 8
  %_203 = getelementptr i8, i8* %_201, i64 144115188075855872
  call void @_Bio__println (i8* %_203)
  store i8* null, i8** %_31
  ret void
L101:
  store i64 1, i64* %_32
  br label %L1
}
