declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i64, align 8
  %_10 = alloca i64, align 8
  %_11 = alloca i1, align 8
  %_12 = alloca i64, align 8
  %_13 = alloca i1, align 8
  %_14 = alloca i64, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i64, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i64, align 8
  %_19 = alloca i64, align 8
  %_20 = alloca i1, align 8
  %_21 = alloca i64, align 8
  %_22 = alloca i64, align 8
  %_23 = alloca i1, align 8
  %_24 = alloca i64, align 8
  %_25 = alloca i1, align 8
  %_26 = alloca i64, align 8
  %_27 = alloca i1, align 8
  %_28 = alloca i64, align 8
  %_29 = alloca i1, align 8
  %_30 = alloca i64, align 8
  %_31 = alloca i64, align 8
  %_32 = alloca i1, align 8
  %_33 = alloca i64, align 8
  %_34 = alloca i64, align 8
  %_35 = alloca i1, align 8
  %_36 = alloca i64, align 8
  %_37 = alloca i64, align 8
  %_38 = alloca i1, align 8
  %_39 = alloca i64, align 8
  %_40 = alloca i64, align 8
  %_41 = alloca i1, align 8
  %_42 = alloca i64, align 8
  %_43 = alloca i64, align 8
  %_44 = alloca i1, align 8
  %_45 = alloca i64, align 8
  %_46 = alloca i64, align 8
  %_47 = alloca i64, align 8
  %_48 = alloca i1, align 8
  %_49 = alloca i64, align 8
  %_50 = alloca i64, align 8
  %_51 = alloca i64, align 8
  %_52 = alloca i1, align 8
  %_53 = alloca i64, align 8
  %_54 = alloca i64, align 8
  %_55 = alloca i1, align 8
  %_56 = alloca i64, align 8
  %_57 = alloca i64, align 8
  %_58 = alloca i1, align 8
  %_59 = alloca i64, align 8
  %_60 = alloca i64, align 8
  %_61 = alloca i1, align 8
  %_62 = alloca i64, align 8
  %_63 = alloca i64, align 8
  %_64 = alloca i64, align 8
  %_65 = alloca i1, align 8
  %_66 = alloca i64, align 8
  %_67 = alloca i64, align 8
  %_68 = alloca i64, align 8
  %_69 = alloca i1, align 8
  %_70 = alloca i64, align 8
  %_71 = alloca i64, align 8
  %_72 = alloca i1, align 8
  %_73 = alloca i64, align 8
  %_74 = alloca i64, align 8
  %_75 = alloca i1, align 8
  %_76 = alloca i64, align 8
  %_77 = alloca i64, align 8
  %_78 = alloca i1, align 8
  %_79 = alloca i64, align 8
  %_80 = alloca i64, align 8
  %_81 = alloca i64, align 8
  %_82 = alloca i1, align 8
  %_83 = alloca i64, align 8
  %_84 = alloca i64, align 8
  %_85 = alloca i64, align 8
  %_86 = alloca i1, align 8
  %_87 = alloca i64, align 8
  %_88 = icmp eq i64 9223372036854775806, 0
  br i1 %_88, label %L2, label %L3
L1:
  %_268 = load i64, i64* %_87, align 8
  call void @_bal_panic (i64 %_268)
  unreachable
L2:
  store i64 2, i64* %_87, align 8
  br label %L1
L3:
  %_89 = icmp eq i64 9223372036854775806, -9223372036854775808
  %_90 = icmp eq i64 9223372036854775806, -1
  %_91 = and i1 %_89, %_90
  br i1 %_91, label %L5, label %L4
L4:
  %_92 = srem i64 9223372036854775806, 9223372036854775806
  store i64 %_92, i64* %_0, align 8
  br label %L6
L5:
  store i64 0, i64* %_0, align 8
  br label %L6
L6:
  %_93 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_93)
  store i1 0, i1* %_1, align 8
  %_94 = icmp eq i64 9223372036854775806, 0
  br i1 %_94, label %L7, label %L8
L7:
  store i64 2, i64* %_87, align 8
  br label %L1
L8:
  %_95 = icmp eq i64 1, -9223372036854775808
  %_96 = icmp eq i64 9223372036854775806, -1
  %_97 = and i1 %_95, %_96
  br i1 %_97, label %L10, label %L9
L9:
  %_98 = srem i64 1, 9223372036854775806
  store i64 %_98, i64* %_2, align 8
  br label %L11
L10:
  store i64 0, i64* %_2, align 8
  br label %L11
L11:
  %_99 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_99)
  store i1 0, i1* %_3, align 8
  %_100 = icmp eq i64 9223372036854775806, 0
  br i1 %_100, label %L12, label %L13
L12:
  store i64 2, i64* %_87, align 8
  br label %L1
L13:
  %_101 = icmp eq i64 0, -9223372036854775808
  %_102 = icmp eq i64 9223372036854775806, -1
  %_103 = and i1 %_101, %_102
  br i1 %_103, label %L15, label %L14
L14:
  %_104 = srem i64 0, 9223372036854775806
  store i64 %_104, i64* %_4, align 8
  br label %L16
L15:
  store i64 0, i64* %_4, align 8
  br label %L16
L16:
  %_105 = load i64, i64* %_4, align 8
  call void @_Bio__println (i64 %_105)
  store i1 0, i1* %_5, align 8
  %_106 = icmp eq i64 9223372036854775806, 0
  br i1 %_106, label %L17, label %L18
L17:
  store i64 2, i64* %_87, align 8
  br label %L1
L18:
  %_107 = icmp eq i64 -1, -9223372036854775808
  %_108 = icmp eq i64 9223372036854775806, -1
  %_109 = and i1 %_107, %_108
  br i1 %_109, label %L20, label %L19
L19:
  %_110 = srem i64 -1, 9223372036854775806
  store i64 %_110, i64* %_7, align 8
  br label %L21
L20:
  store i64 0, i64* %_7, align 8
  br label %L21
L21:
  %_111 = load i64, i64* %_7, align 8
  call void @_Bio__println (i64 %_111)
  store i1 0, i1* %_8, align 8
  %_112 = icmp eq i64 9223372036854775806, 0
  br i1 %_112, label %L22, label %L23
L22:
  store i64 2, i64* %_87, align 8
  br label %L1
L23:
  %_113 = icmp eq i64 -9223372036854775806, -9223372036854775808
  %_114 = icmp eq i64 9223372036854775806, -1
  %_115 = and i1 %_113, %_114
  br i1 %_115, label %L25, label %L24
L24:
  %_116 = srem i64 -9223372036854775806, 9223372036854775806
  store i64 %_116, i64* %_10, align 8
  br label %L26
L25:
  store i64 0, i64* %_10, align 8
  br label %L26
L26:
  %_117 = load i64, i64* %_10, align 8
  call void @_Bio__println (i64 %_117)
  store i1 0, i1* %_11, align 8
  %_118 = icmp eq i64 10, 0
  br i1 %_118, label %L27, label %L28
L27:
  store i64 2, i64* %_87, align 8
  br label %L1
L28:
  %_119 = icmp eq i64 9223372036854775806, -9223372036854775808
  %_120 = icmp eq i64 10, -1
  %_121 = and i1 %_119, %_120
  br i1 %_121, label %L30, label %L29
L29:
  %_122 = srem i64 9223372036854775806, 10
  store i64 %_122, i64* %_12, align 8
  br label %L31
L30:
  store i64 0, i64* %_12, align 8
  br label %L31
L31:
  %_123 = load i64, i64* %_12, align 8
  call void @_Bio__println (i64 %_123)
  store i1 0, i1* %_13, align 8
  %_124 = icmp eq i64 10, 0
  br i1 %_124, label %L32, label %L33
L32:
  store i64 2, i64* %_87, align 8
  br label %L1
L33:
  %_125 = icmp eq i64 1, -9223372036854775808
  %_126 = icmp eq i64 10, -1
  %_127 = and i1 %_125, %_126
  br i1 %_127, label %L35, label %L34
L34:
  %_128 = srem i64 1, 10
  store i64 %_128, i64* %_14, align 8
  br label %L36
L35:
  store i64 0, i64* %_14, align 8
  br label %L36
L36:
  %_129 = load i64, i64* %_14, align 8
  call void @_Bio__println (i64 %_129)
  store i1 0, i1* %_15, align 8
  %_130 = icmp eq i64 10, 0
  br i1 %_130, label %L37, label %L38
L37:
  store i64 2, i64* %_87, align 8
  br label %L1
L38:
  %_131 = icmp eq i64 0, -9223372036854775808
  %_132 = icmp eq i64 10, -1
  %_133 = and i1 %_131, %_132
  br i1 %_133, label %L40, label %L39
L39:
  %_134 = srem i64 0, 10
  store i64 %_134, i64* %_16, align 8
  br label %L41
L40:
  store i64 0, i64* %_16, align 8
  br label %L41
L41:
  %_135 = load i64, i64* %_16, align 8
  call void @_Bio__println (i64 %_135)
  store i1 0, i1* %_17, align 8
  %_136 = icmp eq i64 10, 0
  br i1 %_136, label %L42, label %L43
L42:
  store i64 2, i64* %_87, align 8
  br label %L1
L43:
  %_137 = icmp eq i64 -1, -9223372036854775808
  %_138 = icmp eq i64 10, -1
  %_139 = and i1 %_137, %_138
  br i1 %_139, label %L45, label %L44
L44:
  %_140 = srem i64 -1, 10
  store i64 %_140, i64* %_19, align 8
  br label %L46
L45:
  store i64 0, i64* %_19, align 8
  br label %L46
L46:
  %_141 = load i64, i64* %_19, align 8
  call void @_Bio__println (i64 %_141)
  store i1 0, i1* %_20, align 8
  %_142 = icmp eq i64 10, 0
  br i1 %_142, label %L47, label %L48
L47:
  store i64 2, i64* %_87, align 8
  br label %L1
L48:
  %_143 = icmp eq i64 -9223372036854775806, -9223372036854775808
  %_144 = icmp eq i64 10, -1
  %_145 = and i1 %_143, %_144
  br i1 %_145, label %L50, label %L49
L49:
  %_146 = srem i64 -9223372036854775806, 10
  store i64 %_146, i64* %_22, align 8
  br label %L51
L50:
  store i64 0, i64* %_22, align 8
  br label %L51
L51:
  %_147 = load i64, i64* %_22, align 8
  call void @_Bio__println (i64 %_147)
  store i1 0, i1* %_23, align 8
  %_148 = icmp eq i64 1, 0
  br i1 %_148, label %L52, label %L53
L52:
  store i64 2, i64* %_87, align 8
  br label %L1
L53:
  %_149 = icmp eq i64 9223372036854775806, -9223372036854775808
  %_150 = icmp eq i64 1, -1
  %_151 = and i1 %_149, %_150
  br i1 %_151, label %L55, label %L54
L54:
  %_152 = srem i64 9223372036854775806, 1
  store i64 %_152, i64* %_24, align 8
  br label %L56
L55:
  store i64 0, i64* %_24, align 8
  br label %L56
L56:
  %_153 = load i64, i64* %_24, align 8
  call void @_Bio__println (i64 %_153)
  store i1 0, i1* %_25, align 8
  %_154 = icmp eq i64 1, 0
  br i1 %_154, label %L57, label %L58
L57:
  store i64 2, i64* %_87, align 8
  br label %L1
L58:
  %_155 = icmp eq i64 1, -9223372036854775808
  %_156 = icmp eq i64 1, -1
  %_157 = and i1 %_155, %_156
  br i1 %_157, label %L60, label %L59
L59:
  %_158 = srem i64 1, 1
  store i64 %_158, i64* %_26, align 8
  br label %L61
L60:
  store i64 0, i64* %_26, align 8
  br label %L61
L61:
  %_159 = load i64, i64* %_26, align 8
  call void @_Bio__println (i64 %_159)
  store i1 0, i1* %_27, align 8
  %_160 = icmp eq i64 1, 0
  br i1 %_160, label %L62, label %L63
L62:
  store i64 2, i64* %_87, align 8
  br label %L1
L63:
  %_161 = icmp eq i64 0, -9223372036854775808
  %_162 = icmp eq i64 1, -1
  %_163 = and i1 %_161, %_162
  br i1 %_163, label %L65, label %L64
L64:
  %_164 = srem i64 0, 1
  store i64 %_164, i64* %_28, align 8
  br label %L66
L65:
  store i64 0, i64* %_28, align 8
  br label %L66
L66:
  %_165 = load i64, i64* %_28, align 8
  call void @_Bio__println (i64 %_165)
  store i1 0, i1* %_29, align 8
  %_166 = icmp eq i64 1, 0
  br i1 %_166, label %L67, label %L68
L67:
  store i64 2, i64* %_87, align 8
  br label %L1
L68:
  %_167 = icmp eq i64 -1, -9223372036854775808
  %_168 = icmp eq i64 1, -1
  %_169 = and i1 %_167, %_168
  br i1 %_169, label %L70, label %L69
L69:
  %_170 = srem i64 -1, 1
  store i64 %_170, i64* %_31, align 8
  br label %L71
L70:
  store i64 0, i64* %_31, align 8
  br label %L71
L71:
  %_171 = load i64, i64* %_31, align 8
  call void @_Bio__println (i64 %_171)
  store i1 0, i1* %_32, align 8
  %_172 = icmp eq i64 1, 0
  br i1 %_172, label %L72, label %L73
L72:
  store i64 2, i64* %_87, align 8
  br label %L1
L73:
  %_173 = icmp eq i64 -9223372036854775806, -9223372036854775808
  %_174 = icmp eq i64 1, -1
  %_175 = and i1 %_173, %_174
  br i1 %_175, label %L75, label %L74
L74:
  %_176 = srem i64 -9223372036854775806, 1
  store i64 %_176, i64* %_34, align 8
  br label %L76
L75:
  store i64 0, i64* %_34, align 8
  br label %L76
L76:
  %_177 = load i64, i64* %_34, align 8
  call void @_Bio__println (i64 %_177)
  store i1 0, i1* %_35, align 8
  %_178 = icmp eq i64 -1, 0
  br i1 %_178, label %L77, label %L78
L77:
  store i64 2, i64* %_87, align 8
  br label %L1
L78:
  %_179 = icmp eq i64 9223372036854775806, -9223372036854775808
  %_180 = icmp eq i64 -1, -1
  %_181 = and i1 %_179, %_180
  br i1 %_181, label %L80, label %L79
L79:
  %_182 = srem i64 9223372036854775806, -1
  store i64 %_182, i64* %_37, align 8
  br label %L81
L80:
  store i64 0, i64* %_37, align 8
  br label %L81
L81:
  %_183 = load i64, i64* %_37, align 8
  call void @_Bio__println (i64 %_183)
  store i1 0, i1* %_38, align 8
  %_184 = icmp eq i64 -1, 0
  br i1 %_184, label %L82, label %L83
L82:
  store i64 2, i64* %_87, align 8
  br label %L1
L83:
  %_185 = icmp eq i64 1, -9223372036854775808
  %_186 = icmp eq i64 -1, -1
  %_187 = and i1 %_185, %_186
  br i1 %_187, label %L85, label %L84
L84:
  %_188 = srem i64 1, -1
  store i64 %_188, i64* %_40, align 8
  br label %L86
L85:
  store i64 0, i64* %_40, align 8
  br label %L86
L86:
  %_189 = load i64, i64* %_40, align 8
  call void @_Bio__println (i64 %_189)
  store i1 0, i1* %_41, align 8
  %_190 = icmp eq i64 -1, 0
  br i1 %_190, label %L87, label %L88
L87:
  store i64 2, i64* %_87, align 8
  br label %L1
L88:
  %_191 = icmp eq i64 0, -9223372036854775808
  %_192 = icmp eq i64 -1, -1
  %_193 = and i1 %_191, %_192
  br i1 %_193, label %L90, label %L89
L89:
  %_194 = srem i64 0, -1
  store i64 %_194, i64* %_43, align 8
  br label %L91
L90:
  store i64 0, i64* %_43, align 8
  br label %L91
L91:
  %_195 = load i64, i64* %_43, align 8
  call void @_Bio__println (i64 %_195)
  store i1 0, i1* %_44, align 8
  %_196 = icmp eq i64 -1, 0
  br i1 %_196, label %L92, label %L93
L92:
  store i64 2, i64* %_87, align 8
  br label %L1
L93:
  %_197 = icmp eq i64 -1, -9223372036854775808
  %_198 = icmp eq i64 -1, -1
  %_199 = and i1 %_197, %_198
  br i1 %_199, label %L95, label %L94
L94:
  %_200 = srem i64 -1, -1
  store i64 %_200, i64* %_47, align 8
  br label %L96
L95:
  store i64 0, i64* %_47, align 8
  br label %L96
L96:
  %_201 = load i64, i64* %_47, align 8
  call void @_Bio__println (i64 %_201)
  store i1 0, i1* %_48, align 8
  %_202 = icmp eq i64 -1, 0
  br i1 %_202, label %L97, label %L98
L97:
  store i64 2, i64* %_87, align 8
  br label %L1
L98:
  %_203 = icmp eq i64 -9223372036854775806, -9223372036854775808
  %_204 = icmp eq i64 -1, -1
  %_205 = and i1 %_203, %_204
  br i1 %_205, label %L100, label %L99
L99:
  %_206 = srem i64 -9223372036854775806, -1
  store i64 %_206, i64* %_51, align 8
  br label %L101
L100:
  store i64 0, i64* %_51, align 8
  br label %L101
L101:
  %_207 = load i64, i64* %_51, align 8
  call void @_Bio__println (i64 %_207)
  store i1 0, i1* %_52, align 8
  %_208 = icmp eq i64 -10, 0
  br i1 %_208, label %L102, label %L103
L102:
  store i64 2, i64* %_87, align 8
  br label %L1
L103:
  %_209 = icmp eq i64 9223372036854775806, -9223372036854775808
  %_210 = icmp eq i64 -10, -1
  %_211 = and i1 %_209, %_210
  br i1 %_211, label %L105, label %L104
L104:
  %_212 = srem i64 9223372036854775806, -10
  store i64 %_212, i64* %_54, align 8
  br label %L106
L105:
  store i64 0, i64* %_54, align 8
  br label %L106
L106:
  %_213 = load i64, i64* %_54, align 8
  call void @_Bio__println (i64 %_213)
  store i1 0, i1* %_55, align 8
  %_214 = icmp eq i64 -10, 0
  br i1 %_214, label %L107, label %L108
L107:
  store i64 2, i64* %_87, align 8
  br label %L1
L108:
  %_215 = icmp eq i64 1, -9223372036854775808
  %_216 = icmp eq i64 -10, -1
  %_217 = and i1 %_215, %_216
  br i1 %_217, label %L110, label %L109
L109:
  %_218 = srem i64 1, -10
  store i64 %_218, i64* %_57, align 8
  br label %L111
L110:
  store i64 0, i64* %_57, align 8
  br label %L111
L111:
  %_219 = load i64, i64* %_57, align 8
  call void @_Bio__println (i64 %_219)
  store i1 0, i1* %_58, align 8
  %_220 = icmp eq i64 -10, 0
  br i1 %_220, label %L112, label %L113
L112:
  store i64 2, i64* %_87, align 8
  br label %L1
L113:
  %_221 = icmp eq i64 0, -9223372036854775808
  %_222 = icmp eq i64 -10, -1
  %_223 = and i1 %_221, %_222
  br i1 %_223, label %L115, label %L114
L114:
  %_224 = srem i64 0, -10
  store i64 %_224, i64* %_60, align 8
  br label %L116
L115:
  store i64 0, i64* %_60, align 8
  br label %L116
L116:
  %_225 = load i64, i64* %_60, align 8
  call void @_Bio__println (i64 %_225)
  store i1 0, i1* %_61, align 8
  %_226 = icmp eq i64 -10, 0
  br i1 %_226, label %L117, label %L118
L117:
  store i64 2, i64* %_87, align 8
  br label %L1
L118:
  %_227 = icmp eq i64 -1, -9223372036854775808
  %_228 = icmp eq i64 -10, -1
  %_229 = and i1 %_227, %_228
  br i1 %_229, label %L120, label %L119
L119:
  %_230 = srem i64 -1, -10
  store i64 %_230, i64* %_64, align 8
  br label %L121
L120:
  store i64 0, i64* %_64, align 8
  br label %L121
L121:
  %_231 = load i64, i64* %_64, align 8
  call void @_Bio__println (i64 %_231)
  store i1 0, i1* %_65, align 8
  %_232 = icmp eq i64 -10, 0
  br i1 %_232, label %L122, label %L123
L122:
  store i64 2, i64* %_87, align 8
  br label %L1
L123:
  %_233 = icmp eq i64 -9223372036854775806, -9223372036854775808
  %_234 = icmp eq i64 -10, -1
  %_235 = and i1 %_233, %_234
  br i1 %_235, label %L125, label %L124
L124:
  %_236 = srem i64 -9223372036854775806, -10
  store i64 %_236, i64* %_68, align 8
  br label %L126
L125:
  store i64 0, i64* %_68, align 8
  br label %L126
L126:
  %_237 = load i64, i64* %_68, align 8
  call void @_Bio__println (i64 %_237)
  store i1 0, i1* %_69, align 8
  %_238 = icmp eq i64 -9223372036854775806, 0
  br i1 %_238, label %L127, label %L128
L127:
  store i64 2, i64* %_87, align 8
  br label %L1
L128:
  %_239 = icmp eq i64 9223372036854775806, -9223372036854775808
  %_240 = icmp eq i64 -9223372036854775806, -1
  %_241 = and i1 %_239, %_240
  br i1 %_241, label %L130, label %L129
L129:
  %_242 = srem i64 9223372036854775806, -9223372036854775806
  store i64 %_242, i64* %_71, align 8
  br label %L131
L130:
  store i64 0, i64* %_71, align 8
  br label %L131
L131:
  %_243 = load i64, i64* %_71, align 8
  call void @_Bio__println (i64 %_243)
  store i1 0, i1* %_72, align 8
  %_244 = icmp eq i64 -9223372036854775806, 0
  br i1 %_244, label %L132, label %L133
L132:
  store i64 2, i64* %_87, align 8
  br label %L1
L133:
  %_245 = icmp eq i64 1, -9223372036854775808
  %_246 = icmp eq i64 -9223372036854775806, -1
  %_247 = and i1 %_245, %_246
  br i1 %_247, label %L135, label %L134
L134:
  %_248 = srem i64 1, -9223372036854775806
  store i64 %_248, i64* %_74, align 8
  br label %L136
L135:
  store i64 0, i64* %_74, align 8
  br label %L136
L136:
  %_249 = load i64, i64* %_74, align 8
  call void @_Bio__println (i64 %_249)
  store i1 0, i1* %_75, align 8
  %_250 = icmp eq i64 -9223372036854775806, 0
  br i1 %_250, label %L137, label %L138
L137:
  store i64 2, i64* %_87, align 8
  br label %L1
L138:
  %_251 = icmp eq i64 0, -9223372036854775808
  %_252 = icmp eq i64 -9223372036854775806, -1
  %_253 = and i1 %_251, %_252
  br i1 %_253, label %L140, label %L139
L139:
  %_254 = srem i64 0, -9223372036854775806
  store i64 %_254, i64* %_77, align 8
  br label %L141
L140:
  store i64 0, i64* %_77, align 8
  br label %L141
L141:
  %_255 = load i64, i64* %_77, align 8
  call void @_Bio__println (i64 %_255)
  store i1 0, i1* %_78, align 8
  %_256 = icmp eq i64 -9223372036854775806, 0
  br i1 %_256, label %L142, label %L143
L142:
  store i64 2, i64* %_87, align 8
  br label %L1
L143:
  %_257 = icmp eq i64 -1, -9223372036854775808
  %_258 = icmp eq i64 -9223372036854775806, -1
  %_259 = and i1 %_257, %_258
  br i1 %_259, label %L145, label %L144
L144:
  %_260 = srem i64 -1, -9223372036854775806
  store i64 %_260, i64* %_81, align 8
  br label %L146
L145:
  store i64 0, i64* %_81, align 8
  br label %L146
L146:
  %_261 = load i64, i64* %_81, align 8
  call void @_Bio__println (i64 %_261)
  store i1 0, i1* %_82, align 8
  %_262 = icmp eq i64 -9223372036854775806, 0
  br i1 %_262, label %L147, label %L148
L147:
  store i64 2, i64* %_87, align 8
  br label %L1
L148:
  %_263 = icmp eq i64 -9223372036854775806, -9223372036854775808
  %_264 = icmp eq i64 -9223372036854775806, -1
  %_265 = and i1 %_263, %_264
  br i1 %_265, label %L150, label %L149
L149:
  %_266 = srem i64 -9223372036854775806, -9223372036854775806
  store i64 %_266, i64* %_85, align 8
  br label %L151
L150:
  store i64 0, i64* %_85, align 8
  br label %L151
L151:
  %_267 = load i64, i64* %_85, align 8
  call void @_Bio__println (i64 %_267)
  store i1 0, i1* %_86, align 8
  ret void
}
