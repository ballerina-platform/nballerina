declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
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
  %_156 = load i64, i64* %_37
  call void @_bal_panic (i64 %_156)
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
  call void @_Bio__println (i64 %_47)
  store i8* null, i8** %_2
  %_48 = icmp eq i64 3, 0
  br i1 %_48, label %L8, label %L9
L7:
  store i64 1, i64* %_37
  br label %L1
L8:
  store i64 2, i64* %_37
  br label %L1
L9:
  %_49 = icmp eq i64 30, -9223372036854775808
  %_50 = icmp eq i64 3, -1
  %_51 = and i1 %_49, %_50
  br i1 %_51, label %L11, label %L10
L10:
  %_52 = sdiv i64 30, 3
  store i64 %_52, i64* %_3
  %_53 = load i64, i64* %_3
  %_54 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_53, i64 12)
  %_55 = extractvalue {i64, i1} %_54, 1
  br i1 %_55, label %L13, label %L12
L11:
  store i64 1, i64* %_37
  br label %L1
L12:
  %_56 = extractvalue {i64, i1} %_54, 0
  store i64 %_56, i64* %_4
  %_57 = load i64, i64* %_4
  call void @_Bio__println (i64 %_57)
  store i8* null, i8** %_5
  %_58 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 6, i64 3)
  %_59 = extractvalue {i64, i1} %_58, 1
  br i1 %_59, label %L15, label %L14
L13:
  store i64 1, i64* %_37
  br label %L1
L14:
  %_60 = extractvalue {i64, i1} %_58, 0
  store i64 %_60, i64* %_6
  %_61 = load i64, i64* %_6
  %_62 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_61, i64 2)
  %_63 = extractvalue {i64, i1} %_62, 1
  br i1 %_63, label %L17, label %L16
L15:
  store i64 1, i64* %_37
  br label %L1
L16:
  %_64 = extractvalue {i64, i1} %_62, 0
  store i64 %_64, i64* %_7
  %_65 = load i64, i64* %_7
  call void @_Bio__println (i64 %_65)
  store i8* null, i8** %_8
  %_66 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 4, i64 2)
  %_67 = extractvalue {i64, i1} %_66, 1
  br i1 %_67, label %L19, label %L18
L17:
  store i64 1, i64* %_37
  br label %L1
L18:
  %_68 = extractvalue {i64, i1} %_66, 0
  store i64 %_68, i64* %_9
  %_69 = load i64, i64* %_9
  %_70 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 8, i64 %_69)
  %_71 = extractvalue {i64, i1} %_70, 1
  br i1 %_71, label %L21, label %L20
L19:
  store i64 1, i64* %_37
  br label %L1
L20:
  %_72 = extractvalue {i64, i1} %_70, 0
  store i64 %_72, i64* %_10
  %_73 = load i64, i64* %_10
  call void @_Bio__println (i64 %_73)
  store i8* null, i8** %_11
  %_74 = icmp eq i64 3, 0
  br i1 %_74, label %L22, label %L23
L21:
  store i64 1, i64* %_37
  br label %L1
L22:
  store i64 2, i64* %_37
  br label %L1
L23:
  %_75 = icmp eq i64 4, -9223372036854775808
  %_76 = icmp eq i64 3, -1
  %_77 = and i1 %_75, %_76
  br i1 %_77, label %L25, label %L24
L24:
  %_78 = srem i64 4, 3
  store i64 %_78, i64* %_12
  br label %L26
L25:
  store i64 0, i64* %_12
  br label %L26
L26:
  %_79 = load i64, i64* %_12
  %_80 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 9, i64 %_79)
  %_81 = extractvalue {i64, i1} %_80, 1
  br i1 %_81, label %L28, label %L27
L27:
  %_82 = extractvalue {i64, i1} %_80, 0
  store i64 %_82, i64* %_13
  %_83 = load i64, i64* %_13
  call void @_Bio__println (i64 %_83)
  store i8* null, i8** %_14
  %_84 = icmp eq i64 3, 0
  br i1 %_84, label %L29, label %L30
L28:
  store i64 1, i64* %_37
  br label %L1
L29:
  store i64 2, i64* %_37
  br label %L1
L30:
  %_85 = icmp eq i64 4, -9223372036854775808
  %_86 = icmp eq i64 3, -1
  %_87 = and i1 %_85, %_86
  br i1 %_87, label %L32, label %L31
L31:
  %_88 = srem i64 4, 3
  store i64 %_88, i64* %_15
  br label %L33
L32:
  store i64 0, i64* %_15
  br label %L33
L33:
  %_89 = load i64, i64* %_15
  %_90 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_89, i64 9)
  %_91 = extractvalue {i64, i1} %_90, 1
  br i1 %_91, label %L35, label %L34
L34:
  %_92 = extractvalue {i64, i1} %_90, 0
  store i64 %_92, i64* %_16
  %_93 = load i64, i64* %_16
  call void @_Bio__println (i64 %_93)
  store i8* null, i8** %_17
  %_94 = icmp eq i64 11, 0
  br i1 %_94, label %L36, label %L37
L35:
  store i64 1, i64* %_37
  br label %L1
L36:
  store i64 2, i64* %_37
  br label %L1
L37:
  %_95 = icmp eq i64 18, -9223372036854775808
  %_96 = icmp eq i64 11, -1
  %_97 = and i1 %_95, %_96
  br i1 %_97, label %L39, label %L38
L38:
  %_98 = srem i64 18, 11
  store i64 %_98, i64* %_18
  br label %L40
L39:
  store i64 0, i64* %_18
  br label %L40
L40:
  %_99 = load i64, i64* %_18
  %_100 = icmp eq i64 3, 0
  br i1 %_100, label %L41, label %L42
L41:
  store i64 2, i64* %_37
  br label %L1
L42:
  %_101 = icmp eq i64 %_99, -9223372036854775808
  %_102 = icmp eq i64 3, -1
  %_103 = and i1 %_101, %_102
  br i1 %_103, label %L44, label %L43
L43:
  %_104 = srem i64 %_99, 3
  store i64 %_104, i64* %_19
  br label %L45
L44:
  store i64 0, i64* %_19
  br label %L45
L45:
  %_105 = load i64, i64* %_19
  call void @_Bio__println (i64 %_105)
  store i8* null, i8** %_20
  %_106 = icmp eq i64 18, 0
  br i1 %_106, label %L46, label %L47
L46:
  store i64 2, i64* %_37
  br label %L1
L47:
  %_107 = icmp eq i64 30, -9223372036854775808
  %_108 = icmp eq i64 18, -1
  %_109 = and i1 %_107, %_108
  br i1 %_109, label %L49, label %L48
L48:
  %_110 = srem i64 30, 18
  store i64 %_110, i64* %_21
  br label %L50
L49:
  store i64 0, i64* %_21
  br label %L50
L50:
  %_111 = load i64, i64* %_21
  %_112 = icmp eq i64 11, 0
  br i1 %_112, label %L51, label %L52
L51:
  store i64 2, i64* %_37
  br label %L1
L52:
  %_113 = icmp eq i64 %_111, -9223372036854775808
  %_114 = icmp eq i64 11, -1
  %_115 = and i1 %_113, %_114
  br i1 %_115, label %L54, label %L53
L53:
  %_116 = srem i64 %_111, 11
  store i64 %_116, i64* %_22
  br label %L55
L54:
  store i64 0, i64* %_22
  br label %L55
L55:
  %_117 = load i64, i64* %_22
  %_118 = icmp eq i64 5, 0
  br i1 %_118, label %L56, label %L57
L56:
  store i64 2, i64* %_37
  br label %L1
L57:
  %_119 = icmp eq i64 %_117, -9223372036854775808
  %_120 = icmp eq i64 5, -1
  %_121 = and i1 %_119, %_120
  br i1 %_121, label %L59, label %L58
L58:
  %_122 = srem i64 %_117, 5
  store i64 %_122, i64* %_23
  br label %L60
L59:
  store i64 0, i64* %_23
  br label %L60
L60:
  %_123 = load i64, i64* %_23
  call void @_Bio__println (i64 %_123)
  store i8* null, i8** %_24
  %_124 = icmp eq i64 12, 0
  br i1 %_124, label %L61, label %L62
L61:
  store i64 2, i64* %_37
  br label %L1
L62:
  %_125 = icmp eq i64 18, -9223372036854775808
  %_126 = icmp eq i64 12, -1
  %_127 = and i1 %_125, %_126
  br i1 %_127, label %L64, label %L63
L63:
  %_128 = srem i64 18, 12
  store i64 %_128, i64* %_25
  br label %L65
L64:
  store i64 0, i64* %_25
  br label %L65
L65:
  %_129 = load i64, i64* %_25
  %_130 = icmp eq i64 3, 0
  br i1 %_130, label %L66, label %L67
L66:
  store i64 2, i64* %_37
  br label %L1
L67:
  %_131 = icmp eq i64 %_129, -9223372036854775808
  %_132 = icmp eq i64 3, -1
  %_133 = and i1 %_131, %_132
  br i1 %_133, label %L69, label %L68
L68:
  %_134 = sdiv i64 %_129, 3
  store i64 %_134, i64* %_26
  %_135 = load i64, i64* %_26
  call void @_Bio__println (i64 %_135)
  store i8* null, i8** %_27
  %_136 = icmp eq i64 8, 0
  br i1 %_136, label %L70, label %L71
L69:
  store i64 1, i64* %_37
  br label %L1
L70:
  store i64 2, i64* %_37
  br label %L1
L71:
  %_137 = icmp eq i64 16, -9223372036854775808
  %_138 = icmp eq i64 8, -1
  %_139 = and i1 %_137, %_138
  br i1 %_139, label %L73, label %L72
L72:
  %_140 = sdiv i64 16, 8
  store i64 %_140, i64* %_28
  %_141 = load i64, i64* %_28
  %_142 = icmp eq i64 6, 0
  br i1 %_142, label %L74, label %L75
L73:
  store i64 1, i64* %_37
  br label %L1
L74:
  store i64 2, i64* %_37
  br label %L1
L75:
  %_143 = icmp eq i64 %_141, -9223372036854775808
  %_144 = icmp eq i64 6, -1
  %_145 = and i1 %_143, %_144
  br i1 %_145, label %L77, label %L76
L76:
  %_146 = srem i64 %_141, 6
  store i64 %_146, i64* %_29
  br label %L78
L77:
  store i64 0, i64* %_29
  br label %L78
L78:
  %_147 = load i64, i64* %_29
  call void @_Bio__println (i64 %_147)
  store i8* null, i8** %_30
  %_148 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 4, i64 -3)
  %_149 = extractvalue {i64, i1} %_148, 1
  br i1 %_149, label %L80, label %L79
L79:
  %_150 = extractvalue {i64, i1} %_148, 0
  store i64 %_150, i64* %_32
  %_151 = load i64, i64* %_32
  call void @_Bio__println (i64 %_151)
  store i8* null, i8** %_33
  %_152 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -3, i64 4)
  %_153 = extractvalue {i64, i1} %_152, 1
  br i1 %_153, label %L82, label %L81
L80:
  store i64 1, i64* %_37
  br label %L1
L81:
  %_154 = extractvalue {i64, i1} %_152, 0
  store i64 %_154, i64* %_35
  %_155 = load i64, i64* %_35
  call void @_Bio__println (i64 %_155)
  store i8* null, i8** %_36
  ret void
L82:
  store i64 1, i64* %_37
  br label %L1
}
