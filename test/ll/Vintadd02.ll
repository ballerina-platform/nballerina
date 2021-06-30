@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_12 = alloca i64
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i64
  %_18 = alloca i64
  %_19 = alloca i8*
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i64
  %_34 = alloca i8*
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
  %_172 = load i64, i64* %_35
  call void @_bal_panic (i64 %_172)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_41 = extractvalue {i64, i1} %_39, 0
  store i64 %_41, i64* %_0
  %_42 = load i64, i64* %_0
  %_43 = call i8* @_bal_alloc (i64 8)
  %_44 = bitcast i8* %_43 to i64*
  store i64 %_42, i64* %_44, align 8
  %_45 = getelementptr i8, i8* %_43, i64 504403158265495552
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_1
  %_46 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_47 = extractvalue {i64, i1} %_46, 1
  br i1 %_47, label %L7, label %L6
L5:
  store i64 1025, i64* %_35
  br label %L2
L6:
  %_48 = extractvalue {i64, i1} %_46, 0
  store i64 %_48, i64* %_2
  %_49 = load i64, i64* %_2
  %_50 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_49, i64 11)
  %_51 = extractvalue {i64, i1} %_50, 1
  br i1 %_51, label %L9, label %L8
L7:
  store i64 1281, i64* %_35
  br label %L2
L8:
  %_52 = extractvalue {i64, i1} %_50, 0
  store i64 %_52, i64* %_3
  %_53 = load i64, i64* %_3
  %_54 = call i8* @_bal_alloc (i64 8)
  %_55 = bitcast i8* %_54 to i64*
  store i64 %_53, i64* %_55, align 8
  %_56 = getelementptr i8, i8* %_54, i64 504403158265495552
  call void @_Bio__println (i8* %_56)
  store i8* null, i8** %_4
  %_57 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L11, label %L10
L9:
  store i64 1281, i64* %_35
  br label %L2
L10:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_5
  %_60 = load i64, i64* %_5
  %_61 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_60, i64 5)
  %_62 = extractvalue {i64, i1} %_61, 1
  br i1 %_62, label %L13, label %L12
L11:
  store i64 1537, i64* %_35
  br label %L2
L12:
  %_63 = extractvalue {i64, i1} %_61, 0
  store i64 %_63, i64* %_6
  %_64 = load i64, i64* %_6
  %_65 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_64, i64 9)
  %_66 = extractvalue {i64, i1} %_65, 1
  br i1 %_66, label %L15, label %L14
L13:
  store i64 1537, i64* %_35
  br label %L2
L14:
  %_67 = extractvalue {i64, i1} %_65, 0
  store i64 %_67, i64* %_7
  %_68 = load i64, i64* %_7
  %_69 = call i8* @_bal_alloc (i64 8)
  %_70 = bitcast i8* %_69 to i64*
  store i64 %_68, i64* %_70, align 8
  %_71 = getelementptr i8, i8* %_69, i64 504403158265495552
  call void @_Bio__println (i8* %_71)
  store i8* null, i8** %_8
  %_72 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_73 = extractvalue {i64, i1} %_72, 1
  br i1 %_73, label %L17, label %L16
L15:
  store i64 1537, i64* %_35
  br label %L2
L16:
  %_74 = extractvalue {i64, i1} %_72, 0
  store i64 %_74, i64* %_9
  %_75 = load i64, i64* %_9
  %_76 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_75, i64 5)
  %_77 = extractvalue {i64, i1} %_76, 1
  br i1 %_77, label %L19, label %L18
L17:
  store i64 1793, i64* %_35
  br label %L2
L18:
  %_78 = extractvalue {i64, i1} %_76, 0
  store i64 %_78, i64* %_10
  %_79 = load i64, i64* %_10
  %_80 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_79, i64 9)
  %_81 = extractvalue {i64, i1} %_80, 1
  br i1 %_81, label %L21, label %L20
L19:
  store i64 1793, i64* %_35
  br label %L2
L20:
  %_82 = extractvalue {i64, i1} %_80, 0
  store i64 %_82, i64* %_11
  %_83 = load i64, i64* %_11
  %_84 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_83, i64 12)
  %_85 = extractvalue {i64, i1} %_84, 1
  br i1 %_85, label %L23, label %L22
L21:
  store i64 1793, i64* %_35
  br label %L2
L22:
  %_86 = extractvalue {i64, i1} %_84, 0
  store i64 %_86, i64* %_12
  %_87 = load i64, i64* %_12
  %_88 = call i8* @_bal_alloc (i64 8)
  %_89 = bitcast i8* %_88 to i64*
  store i64 %_87, i64* %_89, align 8
  %_90 = getelementptr i8, i8* %_88, i64 504403158265495552
  call void @_Bio__println (i8* %_90)
  store i8* null, i8** %_13
  %_91 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_92 = extractvalue {i64, i1} %_91, 1
  br i1 %_92, label %L25, label %L24
L23:
  store i64 1793, i64* %_35
  br label %L2
L24:
  %_93 = extractvalue {i64, i1} %_91, 0
  store i64 %_93, i64* %_14
  %_94 = load i64, i64* %_14
  %_95 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_94, i64 5)
  %_96 = extractvalue {i64, i1} %_95, 1
  br i1 %_96, label %L27, label %L26
L25:
  store i64 2049, i64* %_35
  br label %L2
L26:
  %_97 = extractvalue {i64, i1} %_95, 0
  store i64 %_97, i64* %_15
  %_98 = load i64, i64* %_15
  %_99 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_98, i64 9)
  %_100 = extractvalue {i64, i1} %_99, 1
  br i1 %_100, label %L29, label %L28
L27:
  store i64 2049, i64* %_35
  br label %L2
L28:
  %_101 = extractvalue {i64, i1} %_99, 0
  store i64 %_101, i64* %_16
  %_102 = load i64, i64* %_16
  %_103 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_102, i64 4)
  %_104 = extractvalue {i64, i1} %_103, 1
  br i1 %_104, label %L31, label %L30
L29:
  store i64 2049, i64* %_35
  br label %L2
L30:
  %_105 = extractvalue {i64, i1} %_103, 0
  store i64 %_105, i64* %_17
  %_106 = load i64, i64* %_17
  %_107 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_106, i64 7)
  %_108 = extractvalue {i64, i1} %_107, 1
  br i1 %_108, label %L33, label %L32
L31:
  store i64 2049, i64* %_35
  br label %L2
L32:
  %_109 = extractvalue {i64, i1} %_107, 0
  store i64 %_109, i64* %_18
  %_110 = load i64, i64* %_18
  %_111 = call i8* @_bal_alloc (i64 8)
  %_112 = bitcast i8* %_111 to i64*
  store i64 %_110, i64* %_112, align 8
  %_113 = getelementptr i8, i8* %_111, i64 504403158265495552
  call void @_Bio__println (i8* %_113)
  store i8* null, i8** %_19
  %_114 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_115 = extractvalue {i64, i1} %_114, 1
  br i1 %_115, label %L35, label %L34
L33:
  store i64 2049, i64* %_35
  br label %L2
L34:
  %_116 = extractvalue {i64, i1} %_114, 0
  store i64 %_116, i64* %_20
  %_117 = load i64, i64* %_20
  %_118 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_117, i64 5)
  %_119 = extractvalue {i64, i1} %_118, 1
  br i1 %_119, label %L37, label %L36
L35:
  store i64 2305, i64* %_35
  br label %L2
L36:
  %_120 = extractvalue {i64, i1} %_118, 0
  store i64 %_120, i64* %_21
  %_121 = load i64, i64* %_21
  %_122 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_121, i64 9)
  %_123 = extractvalue {i64, i1} %_122, 1
  br i1 %_123, label %L39, label %L38
L37:
  store i64 2305, i64* %_35
  br label %L2
L38:
  %_124 = extractvalue {i64, i1} %_122, 0
  store i64 %_124, i64* %_22
  %_125 = load i64, i64* %_22
  %_126 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_125, i64 4)
  %_127 = extractvalue {i64, i1} %_126, 1
  br i1 %_127, label %L41, label %L40
L39:
  store i64 2305, i64* %_35
  br label %L2
L40:
  %_128 = extractvalue {i64, i1} %_126, 0
  store i64 %_128, i64* %_23
  %_129 = load i64, i64* %_23
  %_130 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_129, i64 7)
  %_131 = extractvalue {i64, i1} %_130, 1
  br i1 %_131, label %L43, label %L42
L41:
  store i64 2305, i64* %_35
  br label %L2
L42:
  %_132 = extractvalue {i64, i1} %_130, 0
  store i64 %_132, i64* %_24
  %_133 = load i64, i64* %_24
  %_134 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_133, i64 5)
  %_135 = extractvalue {i64, i1} %_134, 1
  br i1 %_135, label %L45, label %L44
L43:
  store i64 2305, i64* %_35
  br label %L2
L44:
  %_136 = extractvalue {i64, i1} %_134, 0
  store i64 %_136, i64* %_25
  %_137 = load i64, i64* %_25
  %_138 = call i8* @_bal_alloc (i64 8)
  %_139 = bitcast i8* %_138 to i64*
  store i64 %_137, i64* %_139, align 8
  %_140 = getelementptr i8, i8* %_138, i64 504403158265495552
  call void @_Bio__println (i8* %_140)
  store i8* null, i8** %_26
  %_141 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_142 = extractvalue {i64, i1} %_141, 1
  br i1 %_142, label %L47, label %L46
L45:
  store i64 2305, i64* %_35
  br label %L2
L46:
  %_143 = extractvalue {i64, i1} %_141, 0
  store i64 %_143, i64* %_27
  %_144 = load i64, i64* %_27
  %_145 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_144, i64 5)
  %_146 = extractvalue {i64, i1} %_145, 1
  br i1 %_146, label %L49, label %L48
L47:
  store i64 2561, i64* %_35
  br label %L2
L48:
  %_147 = extractvalue {i64, i1} %_145, 0
  store i64 %_147, i64* %_28
  %_148 = load i64, i64* %_28
  %_149 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_148, i64 9)
  %_150 = extractvalue {i64, i1} %_149, 1
  br i1 %_150, label %L51, label %L50
L49:
  store i64 2561, i64* %_35
  br label %L2
L50:
  %_151 = extractvalue {i64, i1} %_149, 0
  store i64 %_151, i64* %_29
  %_152 = load i64, i64* %_29
  %_153 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_152, i64 4)
  %_154 = extractvalue {i64, i1} %_153, 1
  br i1 %_154, label %L53, label %L52
L51:
  store i64 2561, i64* %_35
  br label %L2
L52:
  %_155 = extractvalue {i64, i1} %_153, 0
  store i64 %_155, i64* %_30
  %_156 = load i64, i64* %_30
  %_157 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_156, i64 7)
  %_158 = extractvalue {i64, i1} %_157, 1
  br i1 %_158, label %L55, label %L54
L53:
  store i64 2561, i64* %_35
  br label %L2
L54:
  %_159 = extractvalue {i64, i1} %_157, 0
  store i64 %_159, i64* %_31
  %_160 = load i64, i64* %_31
  %_161 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_160, i64 23)
  %_162 = extractvalue {i64, i1} %_161, 1
  br i1 %_162, label %L57, label %L56
L55:
  store i64 2561, i64* %_35
  br label %L2
L56:
  %_163 = extractvalue {i64, i1} %_161, 0
  store i64 %_163, i64* %_32
  %_164 = load i64, i64* %_32
  %_165 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_164, i64 50)
  %_166 = extractvalue {i64, i1} %_165, 1
  br i1 %_166, label %L59, label %L58
L57:
  store i64 2561, i64* %_35
  br label %L2
L58:
  %_167 = extractvalue {i64, i1} %_165, 0
  store i64 %_167, i64* %_33
  %_168 = load i64, i64* %_33
  %_169 = call i8* @_bal_alloc (i64 8)
  %_170 = bitcast i8* %_169 to i64*
  store i64 %_168, i64* %_170, align 8
  %_171 = getelementptr i8, i8* %_169, i64 504403158265495552
  call void @_Bio__println (i8* %_171)
  store i8* null, i8** %_34
  ret void
L59:
  store i64 2561, i64* %_35
  br label %L2
}
