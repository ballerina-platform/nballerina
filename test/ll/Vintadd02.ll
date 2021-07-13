@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_12 = alloca i64
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i64
  %_18 = alloca i64
  %_19 = alloca i8 addrspace (1)*
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8 addrspace (1)*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i64
  %_34 = alloca i8 addrspace (1)*
  %_35 = alloca i64
  %_36 = alloca i8
  %_37 = load i8*, i8** @_bal_stack_guard
  %_38 = icmp ult i8* %_36, %_37
  br i1 %_38, label %L3, label %L1
L1:
  %_39 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_40 = extractvalue {i64, i1} %_39, 1
  br i1 %_40, label %L5, label %L4
L2:
  %_158 = load i64, i64* %_35
  call void @_bal_panic (i64 %_158)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_41 = extractvalue {i64, i1} %_39, 0
  store i64 %_41, i64* %_0
  %_42 = load i64, i64* %_0
  %_43 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_42)
  call void @_Bio__println (i8 addrspace (1)* %_43)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_44 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L7, label %L6
L5:
  store i64 1025, i64* %_35
  br label %L2
L6:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_2
  %_47 = load i64, i64* %_2
  %_48 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_47, i64 11)
  %_49 = extractvalue {i64, i1} %_48, 1
  br i1 %_49, label %L9, label %L8
L7:
  store i64 1281, i64* %_35
  br label %L2
L8:
  %_50 = extractvalue {i64, i1} %_48, 0
  store i64 %_50, i64* %_3
  %_51 = load i64, i64* %_3
  %_52 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_51)
  call void @_Bio__println (i8 addrspace (1)* %_52)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_53 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_54 = extractvalue {i64, i1} %_53, 1
  br i1 %_54, label %L11, label %L10
L9:
  store i64 1281, i64* %_35
  br label %L2
L10:
  %_55 = extractvalue {i64, i1} %_53, 0
  store i64 %_55, i64* %_5
  %_56 = load i64, i64* %_5
  %_57 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_56, i64 5)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L13, label %L12
L11:
  store i64 1537, i64* %_35
  br label %L2
L12:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_6
  %_60 = load i64, i64* %_6
  %_61 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_60, i64 9)
  %_62 = extractvalue {i64, i1} %_61, 1
  br i1 %_62, label %L15, label %L14
L13:
  store i64 1537, i64* %_35
  br label %L2
L14:
  %_63 = extractvalue {i64, i1} %_61, 0
  store i64 %_63, i64* %_7
  %_64 = load i64, i64* %_7
  %_65 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_64)
  call void @_Bio__println (i8 addrspace (1)* %_65)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_66 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_67 = extractvalue {i64, i1} %_66, 1
  br i1 %_67, label %L17, label %L16
L15:
  store i64 1537, i64* %_35
  br label %L2
L16:
  %_68 = extractvalue {i64, i1} %_66, 0
  store i64 %_68, i64* %_9
  %_69 = load i64, i64* %_9
  %_70 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_69, i64 5)
  %_71 = extractvalue {i64, i1} %_70, 1
  br i1 %_71, label %L19, label %L18
L17:
  store i64 1793, i64* %_35
  br label %L2
L18:
  %_72 = extractvalue {i64, i1} %_70, 0
  store i64 %_72, i64* %_10
  %_73 = load i64, i64* %_10
  %_74 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_73, i64 9)
  %_75 = extractvalue {i64, i1} %_74, 1
  br i1 %_75, label %L21, label %L20
L19:
  store i64 1793, i64* %_35
  br label %L2
L20:
  %_76 = extractvalue {i64, i1} %_74, 0
  store i64 %_76, i64* %_11
  %_77 = load i64, i64* %_11
  %_78 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_77, i64 12)
  %_79 = extractvalue {i64, i1} %_78, 1
  br i1 %_79, label %L23, label %L22
L21:
  store i64 1793, i64* %_35
  br label %L2
L22:
  %_80 = extractvalue {i64, i1} %_78, 0
  store i64 %_80, i64* %_12
  %_81 = load i64, i64* %_12
  %_82 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_81)
  call void @_Bio__println (i8 addrspace (1)* %_82)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  %_83 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_84 = extractvalue {i64, i1} %_83, 1
  br i1 %_84, label %L25, label %L24
L23:
  store i64 1793, i64* %_35
  br label %L2
L24:
  %_85 = extractvalue {i64, i1} %_83, 0
  store i64 %_85, i64* %_14
  %_86 = load i64, i64* %_14
  %_87 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_86, i64 5)
  %_88 = extractvalue {i64, i1} %_87, 1
  br i1 %_88, label %L27, label %L26
L25:
  store i64 2049, i64* %_35
  br label %L2
L26:
  %_89 = extractvalue {i64, i1} %_87, 0
  store i64 %_89, i64* %_15
  %_90 = load i64, i64* %_15
  %_91 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_90, i64 9)
  %_92 = extractvalue {i64, i1} %_91, 1
  br i1 %_92, label %L29, label %L28
L27:
  store i64 2049, i64* %_35
  br label %L2
L28:
  %_93 = extractvalue {i64, i1} %_91, 0
  store i64 %_93, i64* %_16
  %_94 = load i64, i64* %_16
  %_95 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_94, i64 4)
  %_96 = extractvalue {i64, i1} %_95, 1
  br i1 %_96, label %L31, label %L30
L29:
  store i64 2049, i64* %_35
  br label %L2
L30:
  %_97 = extractvalue {i64, i1} %_95, 0
  store i64 %_97, i64* %_17
  %_98 = load i64, i64* %_17
  %_99 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_98, i64 7)
  %_100 = extractvalue {i64, i1} %_99, 1
  br i1 %_100, label %L33, label %L32
L31:
  store i64 2049, i64* %_35
  br label %L2
L32:
  %_101 = extractvalue {i64, i1} %_99, 0
  store i64 %_101, i64* %_18
  %_102 = load i64, i64* %_18
  %_103 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_102)
  call void @_Bio__println (i8 addrspace (1)* %_103)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_19
  %_104 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_105 = extractvalue {i64, i1} %_104, 1
  br i1 %_105, label %L35, label %L34
L33:
  store i64 2049, i64* %_35
  br label %L2
L34:
  %_106 = extractvalue {i64, i1} %_104, 0
  store i64 %_106, i64* %_20
  %_107 = load i64, i64* %_20
  %_108 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_107, i64 5)
  %_109 = extractvalue {i64, i1} %_108, 1
  br i1 %_109, label %L37, label %L36
L35:
  store i64 2305, i64* %_35
  br label %L2
L36:
  %_110 = extractvalue {i64, i1} %_108, 0
  store i64 %_110, i64* %_21
  %_111 = load i64, i64* %_21
  %_112 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_111, i64 9)
  %_113 = extractvalue {i64, i1} %_112, 1
  br i1 %_113, label %L39, label %L38
L37:
  store i64 2305, i64* %_35
  br label %L2
L38:
  %_114 = extractvalue {i64, i1} %_112, 0
  store i64 %_114, i64* %_22
  %_115 = load i64, i64* %_22
  %_116 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_115, i64 4)
  %_117 = extractvalue {i64, i1} %_116, 1
  br i1 %_117, label %L41, label %L40
L39:
  store i64 2305, i64* %_35
  br label %L2
L40:
  %_118 = extractvalue {i64, i1} %_116, 0
  store i64 %_118, i64* %_23
  %_119 = load i64, i64* %_23
  %_120 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_119, i64 7)
  %_121 = extractvalue {i64, i1} %_120, 1
  br i1 %_121, label %L43, label %L42
L41:
  store i64 2305, i64* %_35
  br label %L2
L42:
  %_122 = extractvalue {i64, i1} %_120, 0
  store i64 %_122, i64* %_24
  %_123 = load i64, i64* %_24
  %_124 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_123, i64 5)
  %_125 = extractvalue {i64, i1} %_124, 1
  br i1 %_125, label %L45, label %L44
L43:
  store i64 2305, i64* %_35
  br label %L2
L44:
  %_126 = extractvalue {i64, i1} %_124, 0
  store i64 %_126, i64* %_25
  %_127 = load i64, i64* %_25
  %_128 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_127)
  call void @_Bio__println (i8 addrspace (1)* %_128)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  %_129 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_130 = extractvalue {i64, i1} %_129, 1
  br i1 %_130, label %L47, label %L46
L45:
  store i64 2305, i64* %_35
  br label %L2
L46:
  %_131 = extractvalue {i64, i1} %_129, 0
  store i64 %_131, i64* %_27
  %_132 = load i64, i64* %_27
  %_133 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_132, i64 5)
  %_134 = extractvalue {i64, i1} %_133, 1
  br i1 %_134, label %L49, label %L48
L47:
  store i64 2561, i64* %_35
  br label %L2
L48:
  %_135 = extractvalue {i64, i1} %_133, 0
  store i64 %_135, i64* %_28
  %_136 = load i64, i64* %_28
  %_137 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_136, i64 9)
  %_138 = extractvalue {i64, i1} %_137, 1
  br i1 %_138, label %L51, label %L50
L49:
  store i64 2561, i64* %_35
  br label %L2
L50:
  %_139 = extractvalue {i64, i1} %_137, 0
  store i64 %_139, i64* %_29
  %_140 = load i64, i64* %_29
  %_141 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_140, i64 4)
  %_142 = extractvalue {i64, i1} %_141, 1
  br i1 %_142, label %L53, label %L52
L51:
  store i64 2561, i64* %_35
  br label %L2
L52:
  %_143 = extractvalue {i64, i1} %_141, 0
  store i64 %_143, i64* %_30
  %_144 = load i64, i64* %_30
  %_145 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_144, i64 7)
  %_146 = extractvalue {i64, i1} %_145, 1
  br i1 %_146, label %L55, label %L54
L53:
  store i64 2561, i64* %_35
  br label %L2
L54:
  %_147 = extractvalue {i64, i1} %_145, 0
  store i64 %_147, i64* %_31
  %_148 = load i64, i64* %_31
  %_149 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_148, i64 23)
  %_150 = extractvalue {i64, i1} %_149, 1
  br i1 %_150, label %L57, label %L56
L55:
  store i64 2561, i64* %_35
  br label %L2
L56:
  %_151 = extractvalue {i64, i1} %_149, 0
  store i64 %_151, i64* %_32
  %_152 = load i64, i64* %_32
  %_153 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_152, i64 50)
  %_154 = extractvalue {i64, i1} %_153, 1
  br i1 %_154, label %L59, label %L58
L57:
  store i64 2561, i64* %_35
  br label %L2
L58:
  %_155 = extractvalue {i64, i1} %_153, 0
  store i64 %_155, i64* %_33
  %_156 = load i64, i64* %_33
  %_157 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_156)
  call void @_Bio__println (i8 addrspace (1)* %_157)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_34
  ret void
L59:
  store i64 2561, i64* %_35
  br label %L2
}
