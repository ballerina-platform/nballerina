@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i8 addrspace (1)*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i8 addrspace (1)*
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i8 addrspace (1)*
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
  %_38 = alloca i8
  %_39 = load i8*, i8** @_bal_stack_guard
  %_40 = icmp ult i8* %_38, %_39
  br i1 %_40, label %L3, label %L1
L1:
  %_41 = icmp eq i64 3, 0
  br i1 %_41, label %L4, label %L5
L2:
  %_179 = load i64, i64* %_37
  call void @_bal_panic (i64 %_179)
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
  %_51 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_50)
  call void @_Bio__println (i8 addrspace (1)* %_51)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_52 = icmp eq i64 3, 0
  br i1 %_52, label %L10, label %L11
L9:
  store i64 1025, i64* %_37
  br label %L2
L10:
  store i64 1282, i64* %_37
  br label %L2
L11:
  %_53 = icmp eq i64 30, -9223372036854775808
  %_54 = icmp eq i64 3, -1
  %_55 = and i1 %_53, %_54
  br i1 %_55, label %L13, label %L12
L12:
  %_56 = sdiv i64 30, 3
  store i64 %_56, i64* %_3
  %_57 = load i64, i64* %_3
  %_58 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_57, i64 12)
  %_59 = extractvalue {i64, i1} %_58, 1
  br i1 %_59, label %L15, label %L14
L13:
  store i64 1281, i64* %_37
  br label %L2
L14:
  %_60 = extractvalue {i64, i1} %_58, 0
  store i64 %_60, i64* %_4
  %_61 = load i64, i64* %_4
  %_62 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_61)
  call void @_Bio__println (i8 addrspace (1)* %_62)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_63 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 6, i64 3)
  %_64 = extractvalue {i64, i1} %_63, 1
  br i1 %_64, label %L17, label %L16
L15:
  store i64 1281, i64* %_37
  br label %L2
L16:
  %_65 = extractvalue {i64, i1} %_63, 0
  store i64 %_65, i64* %_6
  %_66 = load i64, i64* %_6
  %_67 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_66, i64 2)
  %_68 = extractvalue {i64, i1} %_67, 1
  br i1 %_68, label %L19, label %L18
L17:
  store i64 1537, i64* %_37
  br label %L2
L18:
  %_69 = extractvalue {i64, i1} %_67, 0
  store i64 %_69, i64* %_7
  %_70 = load i64, i64* %_7
  %_71 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_70)
  call void @_Bio__println (i8 addrspace (1)* %_71)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_72 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 4, i64 2)
  %_73 = extractvalue {i64, i1} %_72, 1
  br i1 %_73, label %L21, label %L20
L19:
  store i64 1537, i64* %_37
  br label %L2
L20:
  %_74 = extractvalue {i64, i1} %_72, 0
  store i64 %_74, i64* %_9
  %_75 = load i64, i64* %_9
  %_76 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 %_75)
  %_77 = extractvalue {i64, i1} %_76, 1
  br i1 %_77, label %L23, label %L22
L21:
  store i64 1793, i64* %_37
  br label %L2
L22:
  %_78 = extractvalue {i64, i1} %_76, 0
  store i64 %_78, i64* %_10
  %_79 = load i64, i64* %_10
  %_80 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_79)
  call void @_Bio__println (i8 addrspace (1)* %_80)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_81 = icmp eq i64 3, 0
  br i1 %_81, label %L24, label %L25
L23:
  store i64 1793, i64* %_37
  br label %L2
L24:
  store i64 2050, i64* %_37
  br label %L2
L25:
  %_82 = icmp eq i64 4, -9223372036854775808
  %_83 = icmp eq i64 3, -1
  %_84 = and i1 %_82, %_83
  br i1 %_84, label %L27, label %L26
L26:
  %_85 = srem i64 4, 3
  store i64 %_85, i64* %_12
  br label %L28
L27:
  store i64 0, i64* %_12
  br label %L28
L28:
  %_86 = load i64, i64* %_12
  %_87 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 9, i64 %_86)
  %_88 = extractvalue {i64, i1} %_87, 1
  br i1 %_88, label %L30, label %L29
L29:
  %_89 = extractvalue {i64, i1} %_87, 0
  store i64 %_89, i64* %_13
  %_90 = load i64, i64* %_13
  %_91 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_90)
  call void @_Bio__println (i8 addrspace (1)* %_91)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_92 = icmp eq i64 3, 0
  br i1 %_92, label %L31, label %L32
L30:
  store i64 2049, i64* %_37
  br label %L2
L31:
  store i64 2306, i64* %_37
  br label %L2
L32:
  %_93 = icmp eq i64 4, -9223372036854775808
  %_94 = icmp eq i64 3, -1
  %_95 = and i1 %_93, %_94
  br i1 %_95, label %L34, label %L33
L33:
  %_96 = srem i64 4, 3
  store i64 %_96, i64* %_15
  br label %L35
L34:
  store i64 0, i64* %_15
  br label %L35
L35:
  %_97 = load i64, i64* %_15
  %_98 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_97, i64 9)
  %_99 = extractvalue {i64, i1} %_98, 1
  br i1 %_99, label %L37, label %L36
L36:
  %_100 = extractvalue {i64, i1} %_98, 0
  store i64 %_100, i64* %_16
  %_101 = load i64, i64* %_16
  %_102 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_101)
  call void @_Bio__println (i8 addrspace (1)* %_102)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_103 = icmp eq i64 11, 0
  br i1 %_103, label %L38, label %L39
L37:
  store i64 2305, i64* %_37
  br label %L2
L38:
  store i64 2562, i64* %_37
  br label %L2
L39:
  %_104 = icmp eq i64 18, -9223372036854775808
  %_105 = icmp eq i64 11, -1
  %_106 = and i1 %_104, %_105
  br i1 %_106, label %L41, label %L40
L40:
  %_107 = srem i64 18, 11
  store i64 %_107, i64* %_18
  br label %L42
L41:
  store i64 0, i64* %_18
  br label %L42
L42:
  %_108 = load i64, i64* %_18
  %_109 = icmp eq i64 3, 0
  br i1 %_109, label %L43, label %L44
L43:
  store i64 2562, i64* %_37
  br label %L2
L44:
  %_110 = icmp eq i64 %_108, -9223372036854775808
  %_111 = icmp eq i64 3, -1
  %_112 = and i1 %_110, %_111
  br i1 %_112, label %L46, label %L45
L45:
  %_113 = srem i64 %_108, 3
  store i64 %_113, i64* %_19
  br label %L47
L46:
  store i64 0, i64* %_19
  br label %L47
L47:
  %_114 = load i64, i64* %_19
  %_115 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_114)
  call void @_Bio__println (i8 addrspace (1)* %_115)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_116 = icmp eq i64 18, 0
  br i1 %_116, label %L48, label %L49
L48:
  store i64 2818, i64* %_37
  br label %L2
L49:
  %_117 = icmp eq i64 30, -9223372036854775808
  %_118 = icmp eq i64 18, -1
  %_119 = and i1 %_117, %_118
  br i1 %_119, label %L51, label %L50
L50:
  %_120 = srem i64 30, 18
  store i64 %_120, i64* %_21
  br label %L52
L51:
  store i64 0, i64* %_21
  br label %L52
L52:
  %_121 = load i64, i64* %_21
  %_122 = icmp eq i64 11, 0
  br i1 %_122, label %L53, label %L54
L53:
  store i64 2818, i64* %_37
  br label %L2
L54:
  %_123 = icmp eq i64 %_121, -9223372036854775808
  %_124 = icmp eq i64 11, -1
  %_125 = and i1 %_123, %_124
  br i1 %_125, label %L56, label %L55
L55:
  %_126 = srem i64 %_121, 11
  store i64 %_126, i64* %_22
  br label %L57
L56:
  store i64 0, i64* %_22
  br label %L57
L57:
  %_127 = load i64, i64* %_22
  %_128 = icmp eq i64 5, 0
  br i1 %_128, label %L58, label %L59
L58:
  store i64 2818, i64* %_37
  br label %L2
L59:
  %_129 = icmp eq i64 %_127, -9223372036854775808
  %_130 = icmp eq i64 5, -1
  %_131 = and i1 %_129, %_130
  br i1 %_131, label %L61, label %L60
L60:
  %_132 = srem i64 %_127, 5
  store i64 %_132, i64* %_23
  br label %L62
L61:
  store i64 0, i64* %_23
  br label %L62
L62:
  %_133 = load i64, i64* %_23
  %_134 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_133)
  call void @_Bio__println (i8 addrspace (1)* %_134)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_24
  %_135 = icmp eq i64 12, 0
  br i1 %_135, label %L63, label %L64
L63:
  store i64 3074, i64* %_37
  br label %L2
L64:
  %_136 = icmp eq i64 18, -9223372036854775808
  %_137 = icmp eq i64 12, -1
  %_138 = and i1 %_136, %_137
  br i1 %_138, label %L66, label %L65
L65:
  %_139 = srem i64 18, 12
  store i64 %_139, i64* %_25
  br label %L67
L66:
  store i64 0, i64* %_25
  br label %L67
L67:
  %_140 = load i64, i64* %_25
  %_141 = icmp eq i64 3, 0
  br i1 %_141, label %L68, label %L69
L68:
  store i64 3074, i64* %_37
  br label %L2
L69:
  %_142 = icmp eq i64 %_140, -9223372036854775808
  %_143 = icmp eq i64 3, -1
  %_144 = and i1 %_142, %_143
  br i1 %_144, label %L71, label %L70
L70:
  %_145 = sdiv i64 %_140, 3
  store i64 %_145, i64* %_26
  %_146 = load i64, i64* %_26
  %_147 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_146)
  call void @_Bio__println (i8 addrspace (1)* %_147)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_27
  %_148 = icmp eq i64 8, 0
  br i1 %_148, label %L72, label %L73
L71:
  store i64 3073, i64* %_37
  br label %L2
L72:
  store i64 3330, i64* %_37
  br label %L2
L73:
  %_149 = icmp eq i64 16, -9223372036854775808
  %_150 = icmp eq i64 8, -1
  %_151 = and i1 %_149, %_150
  br i1 %_151, label %L75, label %L74
L74:
  %_152 = sdiv i64 16, 8
  store i64 %_152, i64* %_28
  %_153 = load i64, i64* %_28
  %_154 = icmp eq i64 6, 0
  br i1 %_154, label %L76, label %L77
L75:
  store i64 3329, i64* %_37
  br label %L2
L76:
  store i64 3330, i64* %_37
  br label %L2
L77:
  %_155 = icmp eq i64 %_153, -9223372036854775808
  %_156 = icmp eq i64 6, -1
  %_157 = and i1 %_155, %_156
  br i1 %_157, label %L79, label %L78
L78:
  %_158 = srem i64 %_153, 6
  store i64 %_158, i64* %_29
  br label %L80
L79:
  store i64 0, i64* %_29
  br label %L80
L80:
  %_159 = load i64, i64* %_29
  %_160 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_159)
  call void @_Bio__println (i8 addrspace (1)* %_160)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_30
  %_161 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_162 = extractvalue {i64, i1} %_161, 1
  br i1 %_162, label %L82, label %L81
L81:
  %_163 = extractvalue {i64, i1} %_161, 0
  store i64 %_163, i64* %_31
  %_164 = load i64, i64* %_31
  %_165 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 4, i64 %_164)
  %_166 = extractvalue {i64, i1} %_165, 1
  br i1 %_166, label %L84, label %L83
L82:
  store i64 3585, i64* %_37
  br label %L2
L83:
  %_167 = extractvalue {i64, i1} %_165, 0
  store i64 %_167, i64* %_32
  %_168 = load i64, i64* %_32
  %_169 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_168)
  call void @_Bio__println (i8 addrspace (1)* %_169)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_33
  %_170 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 3)
  %_171 = extractvalue {i64, i1} %_170, 1
  br i1 %_171, label %L86, label %L85
L84:
  store i64 3585, i64* %_37
  br label %L2
L85:
  %_172 = extractvalue {i64, i1} %_170, 0
  store i64 %_172, i64* %_34
  %_173 = load i64, i64* %_34
  %_174 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_173, i64 4)
  %_175 = extractvalue {i64, i1} %_174, 1
  br i1 %_175, label %L88, label %L87
L86:
  store i64 3841, i64* %_37
  br label %L2
L87:
  %_176 = extractvalue {i64, i1} %_174, 0
  store i64 %_176, i64* %_35
  %_177 = load i64, i64* %_35
  %_178 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_177)
  call void @_Bio__println (i8 addrspace (1)* %_178)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_36
  ret void
L88:
  store i64 3841, i64* %_37
  br label %L2
}
