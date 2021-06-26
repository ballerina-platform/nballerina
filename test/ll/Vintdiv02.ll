@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_33 = alloca i8
  %_34 = load i8*, i8** @_bal_stack_guard
  %_35 = icmp ult i8* %_33, %_34
  br i1 %_35, label %L3, label %L1
L1:
  %_36 = icmp eq i64 2, 0
  br i1 %_36, label %L4, label %L5
L2:
  %_207 = load i64, i64* %_32
  call void @_bal_panic (i64 %_207)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  store i64 2, i64* %_32
  br label %L2
L5:
  %_37 = icmp eq i64 60, -9223372036854775808
  %_38 = icmp eq i64 2, -1
  %_39 = and i1 %_37, %_38
  br i1 %_39, label %L7, label %L6
L6:
  %_40 = sdiv i64 60, 2
  store i64 %_40, i64* %_0
  %_41 = load i64, i64* %_0
  %_42 = call i8* @_bal_alloc (i64 8)
  %_43 = bitcast i8* %_42 to i64*
  store i64 %_41, i64* %_43, align 8
  %_44 = getelementptr i8, i8* %_42, i64 144115188075855872
  call void @_Bio__println (i8* %_44)
  store i8* null, i8** %_1
  %_45 = icmp eq i64 3, 0
  br i1 %_45, label %L8, label %L9
L7:
  store i64 1, i64* %_32
  br label %L2
L8:
  store i64 2, i64* %_32
  br label %L2
L9:
  %_46 = icmp eq i64 120, -9223372036854775808
  %_47 = icmp eq i64 3, -1
  %_48 = and i1 %_46, %_47
  br i1 %_48, label %L11, label %L10
L10:
  %_49 = sdiv i64 120, 3
  store i64 %_49, i64* %_2
  %_50 = load i64, i64* %_2
  %_51 = icmp eq i64 4, 0
  br i1 %_51, label %L12, label %L13
L11:
  store i64 1, i64* %_32
  br label %L2
L12:
  store i64 2, i64* %_32
  br label %L2
L13:
  %_52 = icmp eq i64 %_50, -9223372036854775808
  %_53 = icmp eq i64 4, -1
  %_54 = and i1 %_52, %_53
  br i1 %_54, label %L15, label %L14
L14:
  %_55 = sdiv i64 %_50, 4
  store i64 %_55, i64* %_3
  %_56 = load i64, i64* %_3
  %_57 = call i8* @_bal_alloc (i64 8)
  %_58 = bitcast i8* %_57 to i64*
  store i64 %_56, i64* %_58, align 8
  %_59 = getelementptr i8, i8* %_57, i64 144115188075855872
  call void @_Bio__println (i8* %_59)
  store i8* null, i8** %_4
  %_60 = icmp eq i64 3, 0
  br i1 %_60, label %L16, label %L17
L15:
  store i64 1, i64* %_32
  br label %L2
L16:
  store i64 2, i64* %_32
  br label %L2
L17:
  %_61 = icmp eq i64 120, -9223372036854775808
  %_62 = icmp eq i64 3, -1
  %_63 = and i1 %_61, %_62
  br i1 %_63, label %L19, label %L18
L18:
  %_64 = sdiv i64 120, 3
  store i64 %_64, i64* %_5
  %_65 = icmp eq i64 4, 0
  br i1 %_65, label %L20, label %L21
L19:
  store i64 1, i64* %_32
  br label %L2
L20:
  store i64 2, i64* %_32
  br label %L2
L21:
  %_66 = icmp eq i64 16, -9223372036854775808
  %_67 = icmp eq i64 4, -1
  %_68 = and i1 %_66, %_67
  br i1 %_68, label %L23, label %L22
L22:
  %_69 = sdiv i64 16, 4
  store i64 %_69, i64* %_6
  %_70 = load i64, i64* %_5
  %_71 = load i64, i64* %_6
  %_72 = icmp eq i64 %_71, 0
  br i1 %_72, label %L24, label %L25
L23:
  store i64 1, i64* %_32
  br label %L2
L24:
  store i64 2, i64* %_32
  br label %L2
L25:
  %_73 = icmp eq i64 %_70, -9223372036854775808
  %_74 = icmp eq i64 %_71, -1
  %_75 = and i1 %_73, %_74
  br i1 %_75, label %L27, label %L26
L26:
  %_76 = sdiv i64 %_70, %_71
  store i64 %_76, i64* %_7
  %_77 = load i64, i64* %_7
  %_78 = call i8* @_bal_alloc (i64 8)
  %_79 = bitcast i8* %_78 to i64*
  store i64 %_77, i64* %_79, align 8
  %_80 = getelementptr i8, i8* %_78, i64 144115188075855872
  call void @_Bio__println (i8* %_80)
  store i8* null, i8** %_8
  %_81 = icmp eq i64 3, 0
  br i1 %_81, label %L28, label %L29
L27:
  store i64 1, i64* %_32
  br label %L2
L28:
  store i64 2, i64* %_32
  br label %L2
L29:
  %_82 = icmp eq i64 120, -9223372036854775808
  %_83 = icmp eq i64 3, -1
  %_84 = and i1 %_82, %_83
  br i1 %_84, label %L31, label %L30
L30:
  %_85 = sdiv i64 120, 3
  store i64 %_85, i64* %_9
  %_86 = icmp eq i64 4, 0
  br i1 %_86, label %L32, label %L33
L31:
  store i64 1, i64* %_32
  br label %L2
L32:
  store i64 2, i64* %_32
  br label %L2
L33:
  %_87 = icmp eq i64 16, -9223372036854775808
  %_88 = icmp eq i64 4, -1
  %_89 = and i1 %_87, %_88
  br i1 %_89, label %L35, label %L34
L34:
  %_90 = sdiv i64 16, 4
  store i64 %_90, i64* %_10
  %_91 = load i64, i64* %_9
  %_92 = load i64, i64* %_10
  %_93 = icmp eq i64 %_92, 0
  br i1 %_93, label %L36, label %L37
L35:
  store i64 1, i64* %_32
  br label %L2
L36:
  store i64 2, i64* %_32
  br label %L2
L37:
  %_94 = icmp eq i64 %_91, -9223372036854775808
  %_95 = icmp eq i64 %_92, -1
  %_96 = and i1 %_94, %_95
  br i1 %_96, label %L39, label %L38
L38:
  %_97 = sdiv i64 %_91, %_92
  store i64 %_97, i64* %_11
  %_98 = load i64, i64* %_11
  %_99 = call i8* @_bal_alloc (i64 8)
  %_100 = bitcast i8* %_99 to i64*
  store i64 %_98, i64* %_100, align 8
  %_101 = getelementptr i8, i8* %_99, i64 144115188075855872
  call void @_Bio__println (i8* %_101)
  store i8* null, i8** %_12
  %_102 = icmp eq i64 3, 0
  br i1 %_102, label %L40, label %L41
L39:
  store i64 1, i64* %_32
  br label %L2
L40:
  store i64 2, i64* %_32
  br label %L2
L41:
  %_103 = icmp eq i64 120, -9223372036854775808
  %_104 = icmp eq i64 3, -1
  %_105 = and i1 %_103, %_104
  br i1 %_105, label %L43, label %L42
L42:
  %_106 = sdiv i64 120, 3
  store i64 %_106, i64* %_13
  %_107 = icmp eq i64 4, 0
  br i1 %_107, label %L44, label %L45
L43:
  store i64 1, i64* %_32
  br label %L2
L44:
  store i64 2, i64* %_32
  br label %L2
L45:
  %_108 = icmp eq i64 16, -9223372036854775808
  %_109 = icmp eq i64 4, -1
  %_110 = and i1 %_108, %_109
  br i1 %_110, label %L47, label %L46
L46:
  %_111 = sdiv i64 16, 4
  store i64 %_111, i64* %_14
  %_112 = load i64, i64* %_13
  %_113 = load i64, i64* %_14
  %_114 = icmp eq i64 %_113, 0
  br i1 %_114, label %L48, label %L49
L47:
  store i64 1, i64* %_32
  br label %L2
L48:
  store i64 2, i64* %_32
  br label %L2
L49:
  %_115 = icmp eq i64 %_112, -9223372036854775808
  %_116 = icmp eq i64 %_113, -1
  %_117 = and i1 %_115, %_116
  br i1 %_117, label %L51, label %L50
L50:
  %_118 = sdiv i64 %_112, %_113
  store i64 %_118, i64* %_15
  %_119 = load i64, i64* %_15
  %_120 = icmp eq i64 2, 0
  br i1 %_120, label %L52, label %L53
L51:
  store i64 1, i64* %_32
  br label %L2
L52:
  store i64 2, i64* %_32
  br label %L2
L53:
  %_121 = icmp eq i64 %_119, -9223372036854775808
  %_122 = icmp eq i64 2, -1
  %_123 = and i1 %_121, %_122
  br i1 %_123, label %L55, label %L54
L54:
  %_124 = sdiv i64 %_119, 2
  store i64 %_124, i64* %_16
  %_125 = load i64, i64* %_16
  %_126 = call i8* @_bal_alloc (i64 8)
  %_127 = bitcast i8* %_126 to i64*
  store i64 %_125, i64* %_127, align 8
  %_128 = getelementptr i8, i8* %_126, i64 144115188075855872
  call void @_Bio__println (i8* %_128)
  store i8* null, i8** %_17
  %_129 = icmp eq i64 3, 0
  br i1 %_129, label %L56, label %L57
L55:
  store i64 1, i64* %_32
  br label %L2
L56:
  store i64 2, i64* %_32
  br label %L2
L57:
  %_130 = icmp eq i64 120, -9223372036854775808
  %_131 = icmp eq i64 3, -1
  %_132 = and i1 %_130, %_131
  br i1 %_132, label %L59, label %L58
L58:
  %_133 = sdiv i64 120, 3
  store i64 %_133, i64* %_18
  %_134 = icmp eq i64 4, 0
  br i1 %_134, label %L60, label %L61
L59:
  store i64 1, i64* %_32
  br label %L2
L60:
  store i64 2, i64* %_32
  br label %L2
L61:
  %_135 = icmp eq i64 16, -9223372036854775808
  %_136 = icmp eq i64 4, -1
  %_137 = and i1 %_135, %_136
  br i1 %_137, label %L63, label %L62
L62:
  %_138 = sdiv i64 16, 4
  store i64 %_138, i64* %_19
  %_139 = load i64, i64* %_18
  %_140 = load i64, i64* %_19
  %_141 = icmp eq i64 %_140, 0
  br i1 %_141, label %L64, label %L65
L63:
  store i64 1, i64* %_32
  br label %L2
L64:
  store i64 2, i64* %_32
  br label %L2
L65:
  %_142 = icmp eq i64 %_139, -9223372036854775808
  %_143 = icmp eq i64 %_140, -1
  %_144 = and i1 %_142, %_143
  br i1 %_144, label %L67, label %L66
L66:
  %_145 = sdiv i64 %_139, %_140
  store i64 %_145, i64* %_20
  %_146 = icmp eq i64 5, 0
  br i1 %_146, label %L68, label %L69
L67:
  store i64 1, i64* %_32
  br label %L2
L68:
  store i64 2, i64* %_32
  br label %L2
L69:
  %_147 = icmp eq i64 10, -9223372036854775808
  %_148 = icmp eq i64 5, -1
  %_149 = and i1 %_147, %_148
  br i1 %_149, label %L71, label %L70
L70:
  %_150 = sdiv i64 10, 5
  store i64 %_150, i64* %_21
  %_151 = load i64, i64* %_20
  %_152 = load i64, i64* %_21
  %_153 = icmp eq i64 %_152, 0
  br i1 %_153, label %L72, label %L73
L71:
  store i64 1, i64* %_32
  br label %L2
L72:
  store i64 2, i64* %_32
  br label %L2
L73:
  %_154 = icmp eq i64 %_151, -9223372036854775808
  %_155 = icmp eq i64 %_152, -1
  %_156 = and i1 %_154, %_155
  br i1 %_156, label %L75, label %L74
L74:
  %_157 = sdiv i64 %_151, %_152
  store i64 %_157, i64* %_22
  %_158 = load i64, i64* %_22
  %_159 = call i8* @_bal_alloc (i64 8)
  %_160 = bitcast i8* %_159 to i64*
  store i64 %_158, i64* %_160, align 8
  %_161 = getelementptr i8, i8* %_159, i64 144115188075855872
  call void @_Bio__println (i8* %_161)
  store i8* null, i8** %_23
  %_162 = icmp eq i64 3, 0
  br i1 %_162, label %L76, label %L77
L75:
  store i64 1, i64* %_32
  br label %L2
L76:
  store i64 2, i64* %_32
  br label %L2
L77:
  %_163 = icmp eq i64 120, -9223372036854775808
  %_164 = icmp eq i64 3, -1
  %_165 = and i1 %_163, %_164
  br i1 %_165, label %L79, label %L78
L78:
  %_166 = sdiv i64 120, 3
  store i64 %_166, i64* %_24
  %_167 = icmp eq i64 4, 0
  br i1 %_167, label %L80, label %L81
L79:
  store i64 1, i64* %_32
  br label %L2
L80:
  store i64 2, i64* %_32
  br label %L2
L81:
  %_168 = icmp eq i64 16, -9223372036854775808
  %_169 = icmp eq i64 4, -1
  %_170 = and i1 %_168, %_169
  br i1 %_170, label %L83, label %L82
L82:
  %_171 = sdiv i64 16, 4
  store i64 %_171, i64* %_25
  %_172 = load i64, i64* %_24
  %_173 = load i64, i64* %_25
  %_174 = icmp eq i64 %_173, 0
  br i1 %_174, label %L84, label %L85
L83:
  store i64 1, i64* %_32
  br label %L2
L84:
  store i64 2, i64* %_32
  br label %L2
L85:
  %_175 = icmp eq i64 %_172, -9223372036854775808
  %_176 = icmp eq i64 %_173, -1
  %_177 = and i1 %_175, %_176
  br i1 %_177, label %L87, label %L86
L86:
  %_178 = sdiv i64 %_172, %_173
  store i64 %_178, i64* %_26
  %_179 = icmp eq i64 20, 0
  br i1 %_179, label %L88, label %L89
L87:
  store i64 1, i64* %_32
  br label %L2
L88:
  store i64 2, i64* %_32
  br label %L2
L89:
  %_180 = icmp eq i64 400, -9223372036854775808
  %_181 = icmp eq i64 20, -1
  %_182 = and i1 %_180, %_181
  br i1 %_182, label %L91, label %L90
L90:
  %_183 = sdiv i64 400, 20
  store i64 %_183, i64* %_27
  %_184 = icmp eq i64 10, 0
  br i1 %_184, label %L92, label %L93
L91:
  store i64 1, i64* %_32
  br label %L2
L92:
  store i64 2, i64* %_32
  br label %L2
L93:
  %_185 = icmp eq i64 100, -9223372036854775808
  %_186 = icmp eq i64 10, -1
  %_187 = and i1 %_185, %_186
  br i1 %_187, label %L95, label %L94
L94:
  %_188 = sdiv i64 100, 10
  store i64 %_188, i64* %_28
  %_189 = load i64, i64* %_27
  %_190 = load i64, i64* %_28
  %_191 = icmp eq i64 %_190, 0
  br i1 %_191, label %L96, label %L97
L95:
  store i64 1, i64* %_32
  br label %L2
L96:
  store i64 2, i64* %_32
  br label %L2
L97:
  %_192 = icmp eq i64 %_189, -9223372036854775808
  %_193 = icmp eq i64 %_190, -1
  %_194 = and i1 %_192, %_193
  br i1 %_194, label %L99, label %L98
L98:
  %_195 = sdiv i64 %_189, %_190
  store i64 %_195, i64* %_29
  %_196 = load i64, i64* %_26
  %_197 = load i64, i64* %_29
  %_198 = icmp eq i64 %_197, 0
  br i1 %_198, label %L100, label %L101
L99:
  store i64 1, i64* %_32
  br label %L2
L100:
  store i64 2, i64* %_32
  br label %L2
L101:
  %_199 = icmp eq i64 %_196, -9223372036854775808
  %_200 = icmp eq i64 %_197, -1
  %_201 = and i1 %_199, %_200
  br i1 %_201, label %L103, label %L102
L102:
  %_202 = sdiv i64 %_196, %_197
  store i64 %_202, i64* %_30
  %_203 = load i64, i64* %_30
  %_204 = call i8* @_bal_alloc (i64 8)
  %_205 = bitcast i8* %_204 to i64*
  store i64 %_203, i64* %_205, align 8
  %_206 = getelementptr i8, i8* %_204, i64 144115188075855872
  call void @_Bio__println (i8* %_206)
  store i8* null, i8** %_31
  ret void
L103:
  store i64 1, i64* %_32
  br label %L2
}
