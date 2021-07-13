@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8 addrspace (1)*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i8 addrspace (1)*
  %_32 = alloca i64
  %_33 = alloca i8
  %_34 = load i8*, i8** @_bal_stack_guard
  %_35 = icmp ult i8* %_33, %_34
  br i1 %_35, label %L3, label %L1
L1:
  %_36 = icmp eq i64 2, 0
  br i1 %_36, label %L4, label %L5
L2:
  %_193 = load i64, i64* %_32
  call void @_bal_panic (i64 %_193)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  store i64 1026, i64* %_32
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
  %_42 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_41)
  call void @_Bio__println (i8 addrspace (1)* %_42)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_43 = icmp eq i64 3, 0
  br i1 %_43, label %L8, label %L9
L7:
  store i64 1025, i64* %_32
  br label %L2
L8:
  store i64 1282, i64* %_32
  br label %L2
L9:
  %_44 = icmp eq i64 120, -9223372036854775808
  %_45 = icmp eq i64 3, -1
  %_46 = and i1 %_44, %_45
  br i1 %_46, label %L11, label %L10
L10:
  %_47 = sdiv i64 120, 3
  store i64 %_47, i64* %_2
  %_48 = load i64, i64* %_2
  %_49 = icmp eq i64 4, 0
  br i1 %_49, label %L12, label %L13
L11:
  store i64 1281, i64* %_32
  br label %L2
L12:
  store i64 1282, i64* %_32
  br label %L2
L13:
  %_50 = icmp eq i64 %_48, -9223372036854775808
  %_51 = icmp eq i64 4, -1
  %_52 = and i1 %_50, %_51
  br i1 %_52, label %L15, label %L14
L14:
  %_53 = sdiv i64 %_48, 4
  store i64 %_53, i64* %_3
  %_54 = load i64, i64* %_3
  %_55 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_54)
  call void @_Bio__println (i8 addrspace (1)* %_55)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_56 = icmp eq i64 3, 0
  br i1 %_56, label %L16, label %L17
L15:
  store i64 1281, i64* %_32
  br label %L2
L16:
  store i64 1538, i64* %_32
  br label %L2
L17:
  %_57 = icmp eq i64 120, -9223372036854775808
  %_58 = icmp eq i64 3, -1
  %_59 = and i1 %_57, %_58
  br i1 %_59, label %L19, label %L18
L18:
  %_60 = sdiv i64 120, 3
  store i64 %_60, i64* %_5
  %_61 = icmp eq i64 4, 0
  br i1 %_61, label %L20, label %L21
L19:
  store i64 1537, i64* %_32
  br label %L2
L20:
  store i64 1538, i64* %_32
  br label %L2
L21:
  %_62 = icmp eq i64 16, -9223372036854775808
  %_63 = icmp eq i64 4, -1
  %_64 = and i1 %_62, %_63
  br i1 %_64, label %L23, label %L22
L22:
  %_65 = sdiv i64 16, 4
  store i64 %_65, i64* %_6
  %_66 = load i64, i64* %_5
  %_67 = load i64, i64* %_6
  %_68 = icmp eq i64 %_67, 0
  br i1 %_68, label %L24, label %L25
L23:
  store i64 1537, i64* %_32
  br label %L2
L24:
  store i64 1538, i64* %_32
  br label %L2
L25:
  %_69 = icmp eq i64 %_66, -9223372036854775808
  %_70 = icmp eq i64 %_67, -1
  %_71 = and i1 %_69, %_70
  br i1 %_71, label %L27, label %L26
L26:
  %_72 = sdiv i64 %_66, %_67
  store i64 %_72, i64* %_7
  %_73 = load i64, i64* %_7
  %_74 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_73)
  call void @_Bio__println (i8 addrspace (1)* %_74)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_75 = icmp eq i64 3, 0
  br i1 %_75, label %L28, label %L29
L27:
  store i64 1537, i64* %_32
  br label %L2
L28:
  store i64 1794, i64* %_32
  br label %L2
L29:
  %_76 = icmp eq i64 120, -9223372036854775808
  %_77 = icmp eq i64 3, -1
  %_78 = and i1 %_76, %_77
  br i1 %_78, label %L31, label %L30
L30:
  %_79 = sdiv i64 120, 3
  store i64 %_79, i64* %_9
  %_80 = icmp eq i64 4, 0
  br i1 %_80, label %L32, label %L33
L31:
  store i64 1793, i64* %_32
  br label %L2
L32:
  store i64 1794, i64* %_32
  br label %L2
L33:
  %_81 = icmp eq i64 16, -9223372036854775808
  %_82 = icmp eq i64 4, -1
  %_83 = and i1 %_81, %_82
  br i1 %_83, label %L35, label %L34
L34:
  %_84 = sdiv i64 16, 4
  store i64 %_84, i64* %_10
  %_85 = load i64, i64* %_9
  %_86 = load i64, i64* %_10
  %_87 = icmp eq i64 %_86, 0
  br i1 %_87, label %L36, label %L37
L35:
  store i64 1793, i64* %_32
  br label %L2
L36:
  store i64 1794, i64* %_32
  br label %L2
L37:
  %_88 = icmp eq i64 %_85, -9223372036854775808
  %_89 = icmp eq i64 %_86, -1
  %_90 = and i1 %_88, %_89
  br i1 %_90, label %L39, label %L38
L38:
  %_91 = sdiv i64 %_85, %_86
  store i64 %_91, i64* %_11
  %_92 = load i64, i64* %_11
  %_93 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_92)
  call void @_Bio__println (i8 addrspace (1)* %_93)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_94 = icmp eq i64 3, 0
  br i1 %_94, label %L40, label %L41
L39:
  store i64 1793, i64* %_32
  br label %L2
L40:
  store i64 2050, i64* %_32
  br label %L2
L41:
  %_95 = icmp eq i64 120, -9223372036854775808
  %_96 = icmp eq i64 3, -1
  %_97 = and i1 %_95, %_96
  br i1 %_97, label %L43, label %L42
L42:
  %_98 = sdiv i64 120, 3
  store i64 %_98, i64* %_13
  %_99 = icmp eq i64 4, 0
  br i1 %_99, label %L44, label %L45
L43:
  store i64 2049, i64* %_32
  br label %L2
L44:
  store i64 2050, i64* %_32
  br label %L2
L45:
  %_100 = icmp eq i64 16, -9223372036854775808
  %_101 = icmp eq i64 4, -1
  %_102 = and i1 %_100, %_101
  br i1 %_102, label %L47, label %L46
L46:
  %_103 = sdiv i64 16, 4
  store i64 %_103, i64* %_14
  %_104 = load i64, i64* %_13
  %_105 = load i64, i64* %_14
  %_106 = icmp eq i64 %_105, 0
  br i1 %_106, label %L48, label %L49
L47:
  store i64 2049, i64* %_32
  br label %L2
L48:
  store i64 2050, i64* %_32
  br label %L2
L49:
  %_107 = icmp eq i64 %_104, -9223372036854775808
  %_108 = icmp eq i64 %_105, -1
  %_109 = and i1 %_107, %_108
  br i1 %_109, label %L51, label %L50
L50:
  %_110 = sdiv i64 %_104, %_105
  store i64 %_110, i64* %_15
  %_111 = load i64, i64* %_15
  %_112 = icmp eq i64 2, 0
  br i1 %_112, label %L52, label %L53
L51:
  store i64 2049, i64* %_32
  br label %L2
L52:
  store i64 2050, i64* %_32
  br label %L2
L53:
  %_113 = icmp eq i64 %_111, -9223372036854775808
  %_114 = icmp eq i64 2, -1
  %_115 = and i1 %_113, %_114
  br i1 %_115, label %L55, label %L54
L54:
  %_116 = sdiv i64 %_111, 2
  store i64 %_116, i64* %_16
  %_117 = load i64, i64* %_16
  %_118 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_117)
  call void @_Bio__println (i8 addrspace (1)* %_118)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_119 = icmp eq i64 3, 0
  br i1 %_119, label %L56, label %L57
L55:
  store i64 2049, i64* %_32
  br label %L2
L56:
  store i64 2306, i64* %_32
  br label %L2
L57:
  %_120 = icmp eq i64 120, -9223372036854775808
  %_121 = icmp eq i64 3, -1
  %_122 = and i1 %_120, %_121
  br i1 %_122, label %L59, label %L58
L58:
  %_123 = sdiv i64 120, 3
  store i64 %_123, i64* %_18
  %_124 = icmp eq i64 4, 0
  br i1 %_124, label %L60, label %L61
L59:
  store i64 2305, i64* %_32
  br label %L2
L60:
  store i64 2306, i64* %_32
  br label %L2
L61:
  %_125 = icmp eq i64 16, -9223372036854775808
  %_126 = icmp eq i64 4, -1
  %_127 = and i1 %_125, %_126
  br i1 %_127, label %L63, label %L62
L62:
  %_128 = sdiv i64 16, 4
  store i64 %_128, i64* %_19
  %_129 = load i64, i64* %_18
  %_130 = load i64, i64* %_19
  %_131 = icmp eq i64 %_130, 0
  br i1 %_131, label %L64, label %L65
L63:
  store i64 2305, i64* %_32
  br label %L2
L64:
  store i64 2306, i64* %_32
  br label %L2
L65:
  %_132 = icmp eq i64 %_129, -9223372036854775808
  %_133 = icmp eq i64 %_130, -1
  %_134 = and i1 %_132, %_133
  br i1 %_134, label %L67, label %L66
L66:
  %_135 = sdiv i64 %_129, %_130
  store i64 %_135, i64* %_20
  %_136 = icmp eq i64 5, 0
  br i1 %_136, label %L68, label %L69
L67:
  store i64 2305, i64* %_32
  br label %L2
L68:
  store i64 2306, i64* %_32
  br label %L2
L69:
  %_137 = icmp eq i64 10, -9223372036854775808
  %_138 = icmp eq i64 5, -1
  %_139 = and i1 %_137, %_138
  br i1 %_139, label %L71, label %L70
L70:
  %_140 = sdiv i64 10, 5
  store i64 %_140, i64* %_21
  %_141 = load i64, i64* %_20
  %_142 = load i64, i64* %_21
  %_143 = icmp eq i64 %_142, 0
  br i1 %_143, label %L72, label %L73
L71:
  store i64 2305, i64* %_32
  br label %L2
L72:
  store i64 2306, i64* %_32
  br label %L2
L73:
  %_144 = icmp eq i64 %_141, -9223372036854775808
  %_145 = icmp eq i64 %_142, -1
  %_146 = and i1 %_144, %_145
  br i1 %_146, label %L75, label %L74
L74:
  %_147 = sdiv i64 %_141, %_142
  store i64 %_147, i64* %_22
  %_148 = load i64, i64* %_22
  %_149 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_148)
  call void @_Bio__println (i8 addrspace (1)* %_149)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_150 = icmp eq i64 3, 0
  br i1 %_150, label %L76, label %L77
L75:
  store i64 2305, i64* %_32
  br label %L2
L76:
  store i64 2562, i64* %_32
  br label %L2
L77:
  %_151 = icmp eq i64 120, -9223372036854775808
  %_152 = icmp eq i64 3, -1
  %_153 = and i1 %_151, %_152
  br i1 %_153, label %L79, label %L78
L78:
  %_154 = sdiv i64 120, 3
  store i64 %_154, i64* %_24
  %_155 = icmp eq i64 4, 0
  br i1 %_155, label %L80, label %L81
L79:
  store i64 2561, i64* %_32
  br label %L2
L80:
  store i64 2562, i64* %_32
  br label %L2
L81:
  %_156 = icmp eq i64 16, -9223372036854775808
  %_157 = icmp eq i64 4, -1
  %_158 = and i1 %_156, %_157
  br i1 %_158, label %L83, label %L82
L82:
  %_159 = sdiv i64 16, 4
  store i64 %_159, i64* %_25
  %_160 = load i64, i64* %_24
  %_161 = load i64, i64* %_25
  %_162 = icmp eq i64 %_161, 0
  br i1 %_162, label %L84, label %L85
L83:
  store i64 2561, i64* %_32
  br label %L2
L84:
  store i64 2562, i64* %_32
  br label %L2
L85:
  %_163 = icmp eq i64 %_160, -9223372036854775808
  %_164 = icmp eq i64 %_161, -1
  %_165 = and i1 %_163, %_164
  br i1 %_165, label %L87, label %L86
L86:
  %_166 = sdiv i64 %_160, %_161
  store i64 %_166, i64* %_26
  %_167 = icmp eq i64 20, 0
  br i1 %_167, label %L88, label %L89
L87:
  store i64 2561, i64* %_32
  br label %L2
L88:
  store i64 2562, i64* %_32
  br label %L2
L89:
  %_168 = icmp eq i64 400, -9223372036854775808
  %_169 = icmp eq i64 20, -1
  %_170 = and i1 %_168, %_169
  br i1 %_170, label %L91, label %L90
L90:
  %_171 = sdiv i64 400, 20
  store i64 %_171, i64* %_27
  %_172 = icmp eq i64 10, 0
  br i1 %_172, label %L92, label %L93
L91:
  store i64 2561, i64* %_32
  br label %L2
L92:
  store i64 2562, i64* %_32
  br label %L2
L93:
  %_173 = icmp eq i64 100, -9223372036854775808
  %_174 = icmp eq i64 10, -1
  %_175 = and i1 %_173, %_174
  br i1 %_175, label %L95, label %L94
L94:
  %_176 = sdiv i64 100, 10
  store i64 %_176, i64* %_28
  %_177 = load i64, i64* %_27
  %_178 = load i64, i64* %_28
  %_179 = icmp eq i64 %_178, 0
  br i1 %_179, label %L96, label %L97
L95:
  store i64 2561, i64* %_32
  br label %L2
L96:
  store i64 2562, i64* %_32
  br label %L2
L97:
  %_180 = icmp eq i64 %_177, -9223372036854775808
  %_181 = icmp eq i64 %_178, -1
  %_182 = and i1 %_180, %_181
  br i1 %_182, label %L99, label %L98
L98:
  %_183 = sdiv i64 %_177, %_178
  store i64 %_183, i64* %_29
  %_184 = load i64, i64* %_26
  %_185 = load i64, i64* %_29
  %_186 = icmp eq i64 %_185, 0
  br i1 %_186, label %L100, label %L101
L99:
  store i64 2561, i64* %_32
  br label %L2
L100:
  store i64 2562, i64* %_32
  br label %L2
L101:
  %_187 = icmp eq i64 %_184, -9223372036854775808
  %_188 = icmp eq i64 %_185, -1
  %_189 = and i1 %_187, %_188
  br i1 %_189, label %L103, label %L102
L102:
  %_190 = sdiv i64 %_184, %_185
  store i64 %_190, i64* %_30
  %_191 = load i64, i64* %_30
  %_192 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_191)
  call void @_Bio__println (i8 addrspace (1)* %_192)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_31
  ret void
L103:
  store i64 2561, i64* %_32
  br label %L2
}
