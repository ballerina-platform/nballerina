declare void @_Bio__println (i64)
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
  %_183 = load i64, i64* %_32
  call void @_bal_panic (i64 %_183)
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
  call void @_Bio__println (i64 %_38)
  store i8* null, i8** %_1
  %_39 = icmp eq i64 3, 0
  br i1 %_39, label %L6, label %L7
L5:
  store i64 1, i64* %_32
  br label %L1
L6:
  store i64 2, i64* %_32
  br label %L1
L7:
  %_40 = icmp eq i64 120, -9223372036854775808
  %_41 = icmp eq i64 3, -1
  %_42 = and i1 %_40, %_41
  br i1 %_42, label %L9, label %L8
L8:
  %_43 = sdiv i64 120, 3
  store i64 %_43, i64* %_2
  %_44 = load i64, i64* %_2
  %_45 = icmp eq i64 4, 0
  br i1 %_45, label %L10, label %L11
L9:
  store i64 1, i64* %_32
  br label %L1
L10:
  store i64 2, i64* %_32
  br label %L1
L11:
  %_46 = icmp eq i64 %_44, -9223372036854775808
  %_47 = icmp eq i64 4, -1
  %_48 = and i1 %_46, %_47
  br i1 %_48, label %L13, label %L12
L12:
  %_49 = sdiv i64 %_44, 4
  store i64 %_49, i64* %_3
  %_50 = load i64, i64* %_3
  call void @_Bio__println (i64 %_50)
  store i8* null, i8** %_4
  %_51 = icmp eq i64 3, 0
  br i1 %_51, label %L14, label %L15
L13:
  store i64 1, i64* %_32
  br label %L1
L14:
  store i64 2, i64* %_32
  br label %L1
L15:
  %_52 = icmp eq i64 120, -9223372036854775808
  %_53 = icmp eq i64 3, -1
  %_54 = and i1 %_52, %_53
  br i1 %_54, label %L17, label %L16
L16:
  %_55 = sdiv i64 120, 3
  store i64 %_55, i64* %_5
  %_56 = icmp eq i64 4, 0
  br i1 %_56, label %L18, label %L19
L17:
  store i64 1, i64* %_32
  br label %L1
L18:
  store i64 2, i64* %_32
  br label %L1
L19:
  %_57 = icmp eq i64 16, -9223372036854775808
  %_58 = icmp eq i64 4, -1
  %_59 = and i1 %_57, %_58
  br i1 %_59, label %L21, label %L20
L20:
  %_60 = sdiv i64 16, 4
  store i64 %_60, i64* %_6
  %_61 = load i64, i64* %_5
  %_62 = load i64, i64* %_6
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %L22, label %L23
L21:
  store i64 1, i64* %_32
  br label %L1
L22:
  store i64 2, i64* %_32
  br label %L1
L23:
  %_64 = icmp eq i64 %_61, -9223372036854775808
  %_65 = icmp eq i64 %_62, -1
  %_66 = and i1 %_64, %_65
  br i1 %_66, label %L25, label %L24
L24:
  %_67 = sdiv i64 %_61, %_62
  store i64 %_67, i64* %_7
  %_68 = load i64, i64* %_7
  call void @_Bio__println (i64 %_68)
  store i8* null, i8** %_8
  %_69 = icmp eq i64 3, 0
  br i1 %_69, label %L26, label %L27
L25:
  store i64 1, i64* %_32
  br label %L1
L26:
  store i64 2, i64* %_32
  br label %L1
L27:
  %_70 = icmp eq i64 120, -9223372036854775808
  %_71 = icmp eq i64 3, -1
  %_72 = and i1 %_70, %_71
  br i1 %_72, label %L29, label %L28
L28:
  %_73 = sdiv i64 120, 3
  store i64 %_73, i64* %_9
  %_74 = icmp eq i64 4, 0
  br i1 %_74, label %L30, label %L31
L29:
  store i64 1, i64* %_32
  br label %L1
L30:
  store i64 2, i64* %_32
  br label %L1
L31:
  %_75 = icmp eq i64 16, -9223372036854775808
  %_76 = icmp eq i64 4, -1
  %_77 = and i1 %_75, %_76
  br i1 %_77, label %L33, label %L32
L32:
  %_78 = sdiv i64 16, 4
  store i64 %_78, i64* %_10
  %_79 = load i64, i64* %_9
  %_80 = load i64, i64* %_10
  %_81 = icmp eq i64 %_80, 0
  br i1 %_81, label %L34, label %L35
L33:
  store i64 1, i64* %_32
  br label %L1
L34:
  store i64 2, i64* %_32
  br label %L1
L35:
  %_82 = icmp eq i64 %_79, -9223372036854775808
  %_83 = icmp eq i64 %_80, -1
  %_84 = and i1 %_82, %_83
  br i1 %_84, label %L37, label %L36
L36:
  %_85 = sdiv i64 %_79, %_80
  store i64 %_85, i64* %_11
  %_86 = load i64, i64* %_11
  call void @_Bio__println (i64 %_86)
  store i8* null, i8** %_12
  %_87 = icmp eq i64 3, 0
  br i1 %_87, label %L38, label %L39
L37:
  store i64 1, i64* %_32
  br label %L1
L38:
  store i64 2, i64* %_32
  br label %L1
L39:
  %_88 = icmp eq i64 120, -9223372036854775808
  %_89 = icmp eq i64 3, -1
  %_90 = and i1 %_88, %_89
  br i1 %_90, label %L41, label %L40
L40:
  %_91 = sdiv i64 120, 3
  store i64 %_91, i64* %_13
  %_92 = icmp eq i64 4, 0
  br i1 %_92, label %L42, label %L43
L41:
  store i64 1, i64* %_32
  br label %L1
L42:
  store i64 2, i64* %_32
  br label %L1
L43:
  %_93 = icmp eq i64 16, -9223372036854775808
  %_94 = icmp eq i64 4, -1
  %_95 = and i1 %_93, %_94
  br i1 %_95, label %L45, label %L44
L44:
  %_96 = sdiv i64 16, 4
  store i64 %_96, i64* %_14
  %_97 = load i64, i64* %_13
  %_98 = load i64, i64* %_14
  %_99 = icmp eq i64 %_98, 0
  br i1 %_99, label %L46, label %L47
L45:
  store i64 1, i64* %_32
  br label %L1
L46:
  store i64 2, i64* %_32
  br label %L1
L47:
  %_100 = icmp eq i64 %_97, -9223372036854775808
  %_101 = icmp eq i64 %_98, -1
  %_102 = and i1 %_100, %_101
  br i1 %_102, label %L49, label %L48
L48:
  %_103 = sdiv i64 %_97, %_98
  store i64 %_103, i64* %_15
  %_104 = load i64, i64* %_15
  %_105 = icmp eq i64 2, 0
  br i1 %_105, label %L50, label %L51
L49:
  store i64 1, i64* %_32
  br label %L1
L50:
  store i64 2, i64* %_32
  br label %L1
L51:
  %_106 = icmp eq i64 %_104, -9223372036854775808
  %_107 = icmp eq i64 2, -1
  %_108 = and i1 %_106, %_107
  br i1 %_108, label %L53, label %L52
L52:
  %_109 = sdiv i64 %_104, 2
  store i64 %_109, i64* %_16
  %_110 = load i64, i64* %_16
  call void @_Bio__println (i64 %_110)
  store i8* null, i8** %_17
  %_111 = icmp eq i64 3, 0
  br i1 %_111, label %L54, label %L55
L53:
  store i64 1, i64* %_32
  br label %L1
L54:
  store i64 2, i64* %_32
  br label %L1
L55:
  %_112 = icmp eq i64 120, -9223372036854775808
  %_113 = icmp eq i64 3, -1
  %_114 = and i1 %_112, %_113
  br i1 %_114, label %L57, label %L56
L56:
  %_115 = sdiv i64 120, 3
  store i64 %_115, i64* %_18
  %_116 = icmp eq i64 4, 0
  br i1 %_116, label %L58, label %L59
L57:
  store i64 1, i64* %_32
  br label %L1
L58:
  store i64 2, i64* %_32
  br label %L1
L59:
  %_117 = icmp eq i64 16, -9223372036854775808
  %_118 = icmp eq i64 4, -1
  %_119 = and i1 %_117, %_118
  br i1 %_119, label %L61, label %L60
L60:
  %_120 = sdiv i64 16, 4
  store i64 %_120, i64* %_19
  %_121 = load i64, i64* %_18
  %_122 = load i64, i64* %_19
  %_123 = icmp eq i64 %_122, 0
  br i1 %_123, label %L62, label %L63
L61:
  store i64 1, i64* %_32
  br label %L1
L62:
  store i64 2, i64* %_32
  br label %L1
L63:
  %_124 = icmp eq i64 %_121, -9223372036854775808
  %_125 = icmp eq i64 %_122, -1
  %_126 = and i1 %_124, %_125
  br i1 %_126, label %L65, label %L64
L64:
  %_127 = sdiv i64 %_121, %_122
  store i64 %_127, i64* %_20
  %_128 = icmp eq i64 5, 0
  br i1 %_128, label %L66, label %L67
L65:
  store i64 1, i64* %_32
  br label %L1
L66:
  store i64 2, i64* %_32
  br label %L1
L67:
  %_129 = icmp eq i64 10, -9223372036854775808
  %_130 = icmp eq i64 5, -1
  %_131 = and i1 %_129, %_130
  br i1 %_131, label %L69, label %L68
L68:
  %_132 = sdiv i64 10, 5
  store i64 %_132, i64* %_21
  %_133 = load i64, i64* %_20
  %_134 = load i64, i64* %_21
  %_135 = icmp eq i64 %_134, 0
  br i1 %_135, label %L70, label %L71
L69:
  store i64 1, i64* %_32
  br label %L1
L70:
  store i64 2, i64* %_32
  br label %L1
L71:
  %_136 = icmp eq i64 %_133, -9223372036854775808
  %_137 = icmp eq i64 %_134, -1
  %_138 = and i1 %_136, %_137
  br i1 %_138, label %L73, label %L72
L72:
  %_139 = sdiv i64 %_133, %_134
  store i64 %_139, i64* %_22
  %_140 = load i64, i64* %_22
  call void @_Bio__println (i64 %_140)
  store i8* null, i8** %_23
  %_141 = icmp eq i64 3, 0
  br i1 %_141, label %L74, label %L75
L73:
  store i64 1, i64* %_32
  br label %L1
L74:
  store i64 2, i64* %_32
  br label %L1
L75:
  %_142 = icmp eq i64 120, -9223372036854775808
  %_143 = icmp eq i64 3, -1
  %_144 = and i1 %_142, %_143
  br i1 %_144, label %L77, label %L76
L76:
  %_145 = sdiv i64 120, 3
  store i64 %_145, i64* %_24
  %_146 = icmp eq i64 4, 0
  br i1 %_146, label %L78, label %L79
L77:
  store i64 1, i64* %_32
  br label %L1
L78:
  store i64 2, i64* %_32
  br label %L1
L79:
  %_147 = icmp eq i64 16, -9223372036854775808
  %_148 = icmp eq i64 4, -1
  %_149 = and i1 %_147, %_148
  br i1 %_149, label %L81, label %L80
L80:
  %_150 = sdiv i64 16, 4
  store i64 %_150, i64* %_25
  %_151 = load i64, i64* %_24
  %_152 = load i64, i64* %_25
  %_153 = icmp eq i64 %_152, 0
  br i1 %_153, label %L82, label %L83
L81:
  store i64 1, i64* %_32
  br label %L1
L82:
  store i64 2, i64* %_32
  br label %L1
L83:
  %_154 = icmp eq i64 %_151, -9223372036854775808
  %_155 = icmp eq i64 %_152, -1
  %_156 = and i1 %_154, %_155
  br i1 %_156, label %L85, label %L84
L84:
  %_157 = sdiv i64 %_151, %_152
  store i64 %_157, i64* %_26
  %_158 = icmp eq i64 20, 0
  br i1 %_158, label %L86, label %L87
L85:
  store i64 1, i64* %_32
  br label %L1
L86:
  store i64 2, i64* %_32
  br label %L1
L87:
  %_159 = icmp eq i64 400, -9223372036854775808
  %_160 = icmp eq i64 20, -1
  %_161 = and i1 %_159, %_160
  br i1 %_161, label %L89, label %L88
L88:
  %_162 = sdiv i64 400, 20
  store i64 %_162, i64* %_27
  %_163 = icmp eq i64 10, 0
  br i1 %_163, label %L90, label %L91
L89:
  store i64 1, i64* %_32
  br label %L1
L90:
  store i64 2, i64* %_32
  br label %L1
L91:
  %_164 = icmp eq i64 100, -9223372036854775808
  %_165 = icmp eq i64 10, -1
  %_166 = and i1 %_164, %_165
  br i1 %_166, label %L93, label %L92
L92:
  %_167 = sdiv i64 100, 10
  store i64 %_167, i64* %_28
  %_168 = load i64, i64* %_27
  %_169 = load i64, i64* %_28
  %_170 = icmp eq i64 %_169, 0
  br i1 %_170, label %L94, label %L95
L93:
  store i64 1, i64* %_32
  br label %L1
L94:
  store i64 2, i64* %_32
  br label %L1
L95:
  %_171 = icmp eq i64 %_168, -9223372036854775808
  %_172 = icmp eq i64 %_169, -1
  %_173 = and i1 %_171, %_172
  br i1 %_173, label %L97, label %L96
L96:
  %_174 = sdiv i64 %_168, %_169
  store i64 %_174, i64* %_29
  %_175 = load i64, i64* %_26
  %_176 = load i64, i64* %_29
  %_177 = icmp eq i64 %_176, 0
  br i1 %_177, label %L98, label %L99
L97:
  store i64 1, i64* %_32
  br label %L1
L98:
  store i64 2, i64* %_32
  br label %L1
L99:
  %_178 = icmp eq i64 %_175, -9223372036854775808
  %_179 = icmp eq i64 %_176, -1
  %_180 = and i1 %_178, %_179
  br i1 %_180, label %L101, label %L100
L100:
  %_181 = sdiv i64 %_175, %_176
  store i64 %_181, i64* %_30
  %_182 = load i64, i64* %_30
  call void @_Bio__println (i64 %_182)
  store i8* null, i8** %_31
  ret void
L101:
  store i64 1, i64* %_32
  br label %L1
}
