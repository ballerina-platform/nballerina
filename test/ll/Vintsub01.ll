@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i64
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i64
  %_16 = alloca i8 addrspace (1)*
  %_17 = alloca i64
  %_18 = alloca i8 addrspace (1)*
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
  %_29 = alloca i8 addrspace (1)*
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i8 addrspace (1)*
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i8 addrspace (1)*
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i8 addrspace (1)*
  %_40 = alloca i64
  %_41 = alloca i8 addrspace (1)*
  %_42 = alloca i64
  %_43 = alloca i8 addrspace (1)*
  %_44 = alloca i64
  %_45 = alloca i8 addrspace (1)*
  %_46 = alloca i64
  %_47 = alloca i8
  %_48 = load i8*, i8** @_bal_stack_guard
  %_49 = icmp ult i8* %_47, %_48
  br i1 %_49, label %L3, label %L1
L1:
  %_50 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 9223372036854775806)
  %_51 = extractvalue {i64, i1} %_50, 1
  br i1 %_51, label %L5, label %L4
L2:
  %_177 = load i64, i64* %_46
  call void @_bal_panic (i64 %_177)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_52 = extractvalue {i64, i1} %_50, 0
  store i64 %_52, i64* %_0
  %_53 = load i64, i64* %_0
  %_54 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_53)
  call void @_Bio__println (i8 addrspace (1)* %_54)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_55 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_56 = extractvalue {i64, i1} %_55, 1
  br i1 %_56, label %L7, label %L6
L5:
  store i64 769, i64* %_46
  br label %L2
L6:
  %_57 = extractvalue {i64, i1} %_55, 0
  store i64 %_57, i64* %_2
  %_58 = load i64, i64* %_2
  %_59 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_58)
  call void @_Bio__println (i8 addrspace (1)* %_59)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_60 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_61 = extractvalue {i64, i1} %_60, 1
  br i1 %_61, label %L9, label %L8
L7:
  store i64 1025, i64* %_46
  br label %L2
L8:
  %_62 = extractvalue {i64, i1} %_60, 0
  store i64 %_62, i64* %_4
  %_63 = load i64, i64* %_4
  %_64 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_63)
  call void @_Bio__println (i8 addrspace (1)* %_64)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_65 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 1)
  %_66 = extractvalue {i64, i1} %_65, 1
  br i1 %_66, label %L11, label %L10
L9:
  store i64 1281, i64* %_46
  br label %L2
L10:
  %_67 = extractvalue {i64, i1} %_65, 0
  store i64 %_67, i64* %_6
  %_68 = load i64, i64* %_6
  %_69 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_68)
  call void @_Bio__println (i8 addrspace (1)* %_69)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  %_70 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 1)
  %_71 = extractvalue {i64, i1} %_70, 1
  br i1 %_71, label %L13, label %L12
L11:
  store i64 1793, i64* %_46
  br label %L2
L12:
  %_72 = extractvalue {i64, i1} %_70, 0
  store i64 %_72, i64* %_8
  %_73 = load i64, i64* %_8
  %_74 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_73)
  call void @_Bio__println (i8 addrspace (1)* %_74)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_75 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_76 = extractvalue {i64, i1} %_75, 1
  br i1 %_76, label %L15, label %L14
L13:
  store i64 2049, i64* %_46
  br label %L2
L14:
  %_77 = extractvalue {i64, i1} %_75, 0
  store i64 %_77, i64* %_10
  %_78 = load i64, i64* %_10
  %_79 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_78)
  call void @_Bio__println (i8 addrspace (1)* %_79)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_80 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_81 = extractvalue {i64, i1} %_80, 1
  br i1 %_81, label %L17, label %L16
L15:
  store i64 2305, i64* %_46
  br label %L2
L16:
  %_82 = extractvalue {i64, i1} %_80, 0
  store i64 %_82, i64* %_12
  %_83 = load i64, i64* %_12
  %_84 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_83, i64 1)
  %_85 = extractvalue {i64, i1} %_84, 1
  br i1 %_85, label %L19, label %L18
L17:
  store i64 2561, i64* %_46
  br label %L2
L18:
  %_86 = extractvalue {i64, i1} %_84, 0
  store i64 %_86, i64* %_13
  %_87 = load i64, i64* %_13
  %_88 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_87)
  call void @_Bio__println (i8 addrspace (1)* %_88)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_89 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_90 = extractvalue {i64, i1} %_89, 1
  br i1 %_90, label %L21, label %L20
L19:
  store i64 2561, i64* %_46
  br label %L2
L20:
  %_91 = extractvalue {i64, i1} %_89, 0
  store i64 %_91, i64* %_15
  %_92 = load i64, i64* %_15
  %_93 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_92)
  call void @_Bio__println (i8 addrspace (1)* %_93)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_16
  %_94 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 0)
  %_95 = extractvalue {i64, i1} %_94, 1
  br i1 %_95, label %L23, label %L22
L21:
  store i64 3073, i64* %_46
  br label %L2
L22:
  %_96 = extractvalue {i64, i1} %_94, 0
  store i64 %_96, i64* %_17
  %_97 = load i64, i64* %_17
  %_98 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_97)
  call void @_Bio__println (i8 addrspace (1)* %_98)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_18
  %_99 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 0)
  %_100 = extractvalue {i64, i1} %_99, 1
  br i1 %_100, label %L25, label %L24
L23:
  store i64 3329, i64* %_46
  br label %L2
L24:
  %_101 = extractvalue {i64, i1} %_99, 0
  store i64 %_101, i64* %_19
  %_102 = load i64, i64* %_19
  %_103 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_102)
  call void @_Bio__println (i8 addrspace (1)* %_103)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_104 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_105 = extractvalue {i64, i1} %_104, 1
  br i1 %_105, label %L27, label %L26
L25:
  store i64 3585, i64* %_46
  br label %L2
L26:
  %_106 = extractvalue {i64, i1} %_104, 0
  store i64 %_106, i64* %_21
  %_107 = load i64, i64* %_21
  %_108 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_107, i64 0)
  %_109 = extractvalue {i64, i1} %_108, 1
  br i1 %_109, label %L29, label %L28
L27:
  store i64 3841, i64* %_46
  br label %L2
L28:
  %_110 = extractvalue {i64, i1} %_108, 0
  store i64 %_110, i64* %_22
  %_111 = load i64, i64* %_22
  %_112 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_111)
  call void @_Bio__println (i8 addrspace (1)* %_112)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_113 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_114 = extractvalue {i64, i1} %_113, 1
  br i1 %_114, label %L31, label %L30
L29:
  store i64 3841, i64* %_46
  br label %L2
L30:
  %_115 = extractvalue {i64, i1} %_113, 0
  store i64 %_115, i64* %_24
  %_116 = load i64, i64* %_24
  %_117 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_116, i64 0)
  %_118 = extractvalue {i64, i1} %_117, 1
  br i1 %_118, label %L33, label %L32
L31:
  store i64 4097, i64* %_46
  br label %L2
L32:
  %_119 = extractvalue {i64, i1} %_117, 0
  store i64 %_119, i64* %_25
  %_120 = load i64, i64* %_25
  %_121 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_120)
  call void @_Bio__println (i8 addrspace (1)* %_121)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  %_122 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_123 = extractvalue {i64, i1} %_122, 1
  br i1 %_123, label %L35, label %L34
L33:
  store i64 4097, i64* %_46
  br label %L2
L34:
  %_124 = extractvalue {i64, i1} %_122, 0
  store i64 %_124, i64* %_27
  %_125 = load i64, i64* %_27
  %_126 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 %_125)
  %_127 = extractvalue {i64, i1} %_126, 1
  br i1 %_127, label %L37, label %L36
L35:
  store i64 4609, i64* %_46
  br label %L2
L36:
  %_128 = extractvalue {i64, i1} %_126, 0
  store i64 %_128, i64* %_28
  %_129 = load i64, i64* %_28
  %_130 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_129)
  call void @_Bio__println (i8 addrspace (1)* %_130)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_29
  %_131 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_132 = extractvalue {i64, i1} %_131, 1
  br i1 %_132, label %L39, label %L38
L37:
  store i64 4609, i64* %_46
  br label %L2
L38:
  %_133 = extractvalue {i64, i1} %_131, 0
  store i64 %_133, i64* %_30
  %_134 = load i64, i64* %_30
  %_135 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 %_134)
  %_136 = extractvalue {i64, i1} %_135, 1
  br i1 %_136, label %L41, label %L40
L39:
  store i64 4865, i64* %_46
  br label %L2
L40:
  %_137 = extractvalue {i64, i1} %_135, 0
  store i64 %_137, i64* %_31
  %_138 = load i64, i64* %_31
  %_139 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_138)
  call void @_Bio__println (i8 addrspace (1)* %_139)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_32
  %_140 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_141 = extractvalue {i64, i1} %_140, 1
  br i1 %_141, label %L43, label %L42
L41:
  store i64 4865, i64* %_46
  br label %L2
L42:
  %_142 = extractvalue {i64, i1} %_140, 0
  store i64 %_142, i64* %_33
  %_143 = load i64, i64* %_33
  %_144 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_143)
  %_145 = extractvalue {i64, i1} %_144, 1
  br i1 %_145, label %L45, label %L44
L43:
  store i64 5121, i64* %_46
  br label %L2
L44:
  %_146 = extractvalue {i64, i1} %_144, 0
  store i64 %_146, i64* %_34
  %_147 = load i64, i64* %_34
  %_148 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_147)
  call void @_Bio__println (i8 addrspace (1)* %_148)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_35
  %_149 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_150 = extractvalue {i64, i1} %_149, 1
  br i1 %_150, label %L47, label %L46
L45:
  store i64 5121, i64* %_46
  br label %L2
L46:
  %_151 = extractvalue {i64, i1} %_149, 0
  store i64 %_151, i64* %_36
  %_152 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_153 = extractvalue {i64, i1} %_152, 1
  br i1 %_153, label %L49, label %L48
L47:
  store i64 5377, i64* %_46
  br label %L2
L48:
  %_154 = extractvalue {i64, i1} %_152, 0
  store i64 %_154, i64* %_37
  %_155 = load i64, i64* %_36
  %_156 = load i64, i64* %_37
  %_157 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_155, i64 %_156)
  %_158 = extractvalue {i64, i1} %_157, 1
  br i1 %_158, label %L51, label %L50
L49:
  store i64 5377, i64* %_46
  br label %L2
L50:
  %_159 = extractvalue {i64, i1} %_157, 0
  store i64 %_159, i64* %_38
  %_160 = load i64, i64* %_38
  %_161 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_160)
  call void @_Bio__println (i8 addrspace (1)* %_161)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_39
  %_162 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 9223372036854775806)
  %_163 = extractvalue {i64, i1} %_162, 1
  br i1 %_163, label %L53, label %L52
L51:
  store i64 5377, i64* %_46
  br label %L2
L52:
  %_164 = extractvalue {i64, i1} %_162, 0
  store i64 %_164, i64* %_40
  %_165 = load i64, i64* %_40
  %_166 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_165)
  call void @_Bio__println (i8 addrspace (1)* %_166)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_41
  %_167 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_168 = extractvalue {i64, i1} %_167, 1
  br i1 %_168, label %L55, label %L54
L53:
  store i64 5889, i64* %_46
  br label %L2
L54:
  %_169 = extractvalue {i64, i1} %_167, 0
  store i64 %_169, i64* %_42
  %_170 = load i64, i64* %_42
  %_171 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_170)
  call void @_Bio__println (i8 addrspace (1)* %_171)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_43
  %_172 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_173 = extractvalue {i64, i1} %_172, 1
  br i1 %_173, label %L57, label %L56
L55:
  store i64 6145, i64* %_46
  br label %L2
L56:
  %_174 = extractvalue {i64, i1} %_172, 0
  store i64 %_174, i64* %_44
  %_175 = load i64, i64* %_44
  %_176 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_175)
  call void @_Bio__println (i8 addrspace (1)* %_176)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_45
  ret void
L57:
  store i64 6401, i64* %_46
  br label %L2
}
