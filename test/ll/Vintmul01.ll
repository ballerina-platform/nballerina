@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i64
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
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
  %_29 = alloca i64
  %_30 = alloca i8 addrspace (1)*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8 addrspace (1)*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8 addrspace (1)*
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i64
  %_40 = alloca i8 addrspace (1)*
  %_41 = alloca i64
  %_42 = alloca i8
  %_43 = load i8*, i8** @_bal_stack_guard
  %_44 = icmp ult i8* %_42, %_43
  br i1 %_44, label %L3, label %L1
L1:
  %_45 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 1)
  %_46 = extractvalue {i64, i1} %_45, 1
  br i1 %_46, label %L5, label %L4
L2:
  %_164 = load i64, i64* %_41
  call void @_bal_panic (i64 %_164)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_47 = extractvalue {i64, i1} %_45, 0
  store i64 %_47, i64* %_0
  %_48 = load i64, i64* %_0
  %_49 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_48)
  call void @_Bio__println (i8 addrspace (1)* %_49)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_50 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_51 = extractvalue {i64, i1} %_50, 1
  br i1 %_51, label %L7, label %L6
L5:
  store i64 1025, i64* %_41
  br label %L2
L6:
  %_52 = extractvalue {i64, i1} %_50, 0
  store i64 %_52, i64* %_2
  %_53 = load i64, i64* %_2
  %_54 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_53)
  call void @_Bio__println (i8 addrspace (1)* %_54)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_55 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_56 = extractvalue {i64, i1} %_55, 1
  br i1 %_56, label %L9, label %L8
L7:
  store i64 1281, i64* %_41
  br label %L2
L8:
  %_57 = extractvalue {i64, i1} %_55, 0
  store i64 %_57, i64* %_4
  %_58 = load i64, i64* %_4
  %_59 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 %_58)
  %_60 = extractvalue {i64, i1} %_59, 1
  br i1 %_60, label %L11, label %L10
L9:
  store i64 1537, i64* %_41
  br label %L2
L10:
  %_61 = extractvalue {i64, i1} %_59, 0
  store i64 %_61, i64* %_5
  %_62 = load i64, i64* %_5
  %_63 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_62)
  call void @_Bio__println (i8 addrspace (1)* %_63)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_64 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 1)
  %_65 = extractvalue {i64, i1} %_64, 1
  br i1 %_65, label %L13, label %L12
L11:
  store i64 1537, i64* %_41
  br label %L2
L12:
  %_66 = extractvalue {i64, i1} %_64, 0
  store i64 %_66, i64* %_7
  %_67 = load i64, i64* %_7
  %_68 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_67)
  call void @_Bio__println (i8 addrspace (1)* %_68)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_69 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 0)
  %_70 = extractvalue {i64, i1} %_69, 1
  br i1 %_70, label %L15, label %L14
L13:
  store i64 2049, i64* %_41
  br label %L2
L14:
  %_71 = extractvalue {i64, i1} %_69, 0
  store i64 %_71, i64* %_9
  %_72 = load i64, i64* %_9
  %_73 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_72)
  call void @_Bio__println (i8 addrspace (1)* %_73)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_74 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_75 = extractvalue {i64, i1} %_74, 1
  br i1 %_75, label %L17, label %L16
L15:
  store i64 2305, i64* %_41
  br label %L2
L16:
  %_76 = extractvalue {i64, i1} %_74, 0
  store i64 %_76, i64* %_11
  %_77 = load i64, i64* %_11
  %_78 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 %_77)
  %_79 = extractvalue {i64, i1} %_78, 1
  br i1 %_79, label %L19, label %L18
L17:
  store i64 2561, i64* %_41
  br label %L2
L18:
  %_80 = extractvalue {i64, i1} %_78, 0
  store i64 %_80, i64* %_12
  %_81 = load i64, i64* %_12
  %_82 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_81)
  call void @_Bio__println (i8 addrspace (1)* %_82)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  %_83 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 1)
  %_84 = extractvalue {i64, i1} %_83, 1
  br i1 %_84, label %L21, label %L20
L19:
  store i64 2561, i64* %_41
  br label %L2
L20:
  %_85 = extractvalue {i64, i1} %_83, 0
  store i64 %_85, i64* %_14
  %_86 = load i64, i64* %_14
  %_87 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_86)
  call void @_Bio__println (i8 addrspace (1)* %_87)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  %_88 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 0)
  %_89 = extractvalue {i64, i1} %_88, 1
  br i1 %_89, label %L23, label %L22
L21:
  store i64 3073, i64* %_41
  br label %L2
L22:
  %_90 = extractvalue {i64, i1} %_88, 0
  store i64 %_90, i64* %_16
  %_91 = load i64, i64* %_16
  %_92 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_91)
  call void @_Bio__println (i8 addrspace (1)* %_92)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_93 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_94 = extractvalue {i64, i1} %_93, 1
  br i1 %_94, label %L25, label %L24
L23:
  store i64 3329, i64* %_41
  br label %L2
L24:
  %_95 = extractvalue {i64, i1} %_93, 0
  store i64 %_95, i64* %_18
  %_96 = load i64, i64* %_18
  %_97 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 %_96)
  %_98 = extractvalue {i64, i1} %_97, 1
  br i1 %_98, label %L27, label %L26
L25:
  store i64 3585, i64* %_41
  br label %L2
L26:
  %_99 = extractvalue {i64, i1} %_97, 0
  store i64 %_99, i64* %_19
  %_100 = load i64, i64* %_19
  %_101 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_100)
  call void @_Bio__println (i8 addrspace (1)* %_101)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_102 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_103 = extractvalue {i64, i1} %_102, 1
  br i1 %_103, label %L29, label %L28
L27:
  store i64 3585, i64* %_41
  br label %L2
L28:
  %_104 = extractvalue {i64, i1} %_102, 0
  store i64 %_104, i64* %_21
  %_105 = load i64, i64* %_21
  %_106 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_105, i64 1)
  %_107 = extractvalue {i64, i1} %_106, 1
  br i1 %_107, label %L31, label %L30
L29:
  store i64 4097, i64* %_41
  br label %L2
L30:
  %_108 = extractvalue {i64, i1} %_106, 0
  store i64 %_108, i64* %_22
  %_109 = load i64, i64* %_22
  %_110 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_109)
  call void @_Bio__println (i8 addrspace (1)* %_110)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_111 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_112 = extractvalue {i64, i1} %_111, 1
  br i1 %_112, label %L33, label %L32
L31:
  store i64 4097, i64* %_41
  br label %L2
L32:
  %_113 = extractvalue {i64, i1} %_111, 0
  store i64 %_113, i64* %_24
  %_114 = load i64, i64* %_24
  %_115 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_114, i64 0)
  %_116 = extractvalue {i64, i1} %_115, 1
  br i1 %_116, label %L35, label %L34
L33:
  store i64 4353, i64* %_41
  br label %L2
L34:
  %_117 = extractvalue {i64, i1} %_115, 0
  store i64 %_117, i64* %_25
  %_118 = load i64, i64* %_25
  %_119 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_118)
  call void @_Bio__println (i8 addrspace (1)* %_119)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  %_120 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_121 = extractvalue {i64, i1} %_120, 1
  br i1 %_121, label %L37, label %L36
L35:
  store i64 4353, i64* %_41
  br label %L2
L36:
  %_122 = extractvalue {i64, i1} %_120, 0
  store i64 %_122, i64* %_27
  %_123 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_124 = extractvalue {i64, i1} %_123, 1
  br i1 %_124, label %L39, label %L38
L37:
  store i64 4609, i64* %_41
  br label %L2
L38:
  %_125 = extractvalue {i64, i1} %_123, 0
  store i64 %_125, i64* %_28
  %_126 = load i64, i64* %_27
  %_127 = load i64, i64* %_28
  %_128 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_126, i64 %_127)
  %_129 = extractvalue {i64, i1} %_128, 1
  br i1 %_129, label %L41, label %L40
L39:
  store i64 4609, i64* %_41
  br label %L2
L40:
  %_130 = extractvalue {i64, i1} %_128, 0
  store i64 %_130, i64* %_29
  %_131 = load i64, i64* %_29
  %_132 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_131)
  call void @_Bio__println (i8 addrspace (1)* %_132)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_30
  %_133 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_134 = extractvalue {i64, i1} %_133, 1
  br i1 %_134, label %L43, label %L42
L41:
  store i64 4609, i64* %_41
  br label %L2
L42:
  %_135 = extractvalue {i64, i1} %_133, 0
  store i64 %_135, i64* %_31
  %_136 = load i64, i64* %_31
  %_137 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_136, i64 1)
  %_138 = extractvalue {i64, i1} %_137, 1
  br i1 %_138, label %L45, label %L44
L43:
  store i64 5121, i64* %_41
  br label %L2
L44:
  %_139 = extractvalue {i64, i1} %_137, 0
  store i64 %_139, i64* %_32
  %_140 = load i64, i64* %_32
  %_141 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_140)
  call void @_Bio__println (i8 addrspace (1)* %_141)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_33
  %_142 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_143 = extractvalue {i64, i1} %_142, 1
  br i1 %_143, label %L47, label %L46
L45:
  store i64 5121, i64* %_41
  br label %L2
L46:
  %_144 = extractvalue {i64, i1} %_142, 0
  store i64 %_144, i64* %_34
  %_145 = load i64, i64* %_34
  %_146 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_145, i64 0)
  %_147 = extractvalue {i64, i1} %_146, 1
  br i1 %_147, label %L49, label %L48
L47:
  store i64 5377, i64* %_41
  br label %L2
L48:
  %_148 = extractvalue {i64, i1} %_146, 0
  store i64 %_148, i64* %_35
  %_149 = load i64, i64* %_35
  %_150 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_149)
  call void @_Bio__println (i8 addrspace (1)* %_150)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_36
  %_151 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_152 = extractvalue {i64, i1} %_151, 1
  br i1 %_152, label %L51, label %L50
L49:
  store i64 5377, i64* %_41
  br label %L2
L50:
  %_153 = extractvalue {i64, i1} %_151, 0
  store i64 %_153, i64* %_37
  %_154 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_155 = extractvalue {i64, i1} %_154, 1
  br i1 %_155, label %L53, label %L52
L51:
  store i64 5633, i64* %_41
  br label %L2
L52:
  %_156 = extractvalue {i64, i1} %_154, 0
  store i64 %_156, i64* %_38
  %_157 = load i64, i64* %_37
  %_158 = load i64, i64* %_38
  %_159 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_157, i64 %_158)
  %_160 = extractvalue {i64, i1} %_159, 1
  br i1 %_160, label %L55, label %L54
L53:
  store i64 5633, i64* %_41
  br label %L2
L54:
  %_161 = extractvalue {i64, i1} %_159, 0
  store i64 %_161, i64* %_39
  %_162 = load i64, i64* %_39
  %_163 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_162)
  call void @_Bio__println (i8 addrspace (1)* %_163)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_40
  ret void
L55:
  store i64 5633, i64* %_41
  br label %L2
}
