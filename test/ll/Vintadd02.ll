declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_36 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_37 = extractvalue {i64, i1} %_36, 1
  br i1 %_37, label %L3, label %L2
L1:
  %_169 = load i64, i64* %_35
  call void @_bal_panic (i64 %_169)
  unreachable
L2:
  %_38 = extractvalue {i64, i1} %_36, 0
  store i64 %_38, i64* %_0
  %_39 = load i64, i64* %_0
  %_40 = call i8* @_bal_alloc (i64 8)
  %_41 = bitcast i8* %_40 to i64*
  store i64 %_39, i64* %_41, align 8
  %_42 = getelementptr i8, i8* %_40, i64 144115188075855872
  call void @_Bio__println (i8* %_42)
  store i8* null, i8** %_1
  %_43 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_44 = extractvalue {i64, i1} %_43, 1
  br i1 %_44, label %L5, label %L4
L3:
  store i64 1, i64* %_35
  br label %L1
L4:
  %_45 = extractvalue {i64, i1} %_43, 0
  store i64 %_45, i64* %_2
  %_46 = load i64, i64* %_2
  %_47 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_46, i64 11)
  %_48 = extractvalue {i64, i1} %_47, 1
  br i1 %_48, label %L7, label %L6
L5:
  store i64 1, i64* %_35
  br label %L1
L6:
  %_49 = extractvalue {i64, i1} %_47, 0
  store i64 %_49, i64* %_3
  %_50 = load i64, i64* %_3
  %_51 = call i8* @_bal_alloc (i64 8)
  %_52 = bitcast i8* %_51 to i64*
  store i64 %_50, i64* %_52, align 8
  %_53 = getelementptr i8, i8* %_51, i64 144115188075855872
  call void @_Bio__println (i8* %_53)
  store i8* null, i8** %_4
  %_54 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_55 = extractvalue {i64, i1} %_54, 1
  br i1 %_55, label %L9, label %L8
L7:
  store i64 1, i64* %_35
  br label %L1
L8:
  %_56 = extractvalue {i64, i1} %_54, 0
  store i64 %_56, i64* %_5
  %_57 = load i64, i64* %_5
  %_58 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_57, i64 5)
  %_59 = extractvalue {i64, i1} %_58, 1
  br i1 %_59, label %L11, label %L10
L9:
  store i64 1, i64* %_35
  br label %L1
L10:
  %_60 = extractvalue {i64, i1} %_58, 0
  store i64 %_60, i64* %_6
  %_61 = load i64, i64* %_6
  %_62 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_61, i64 9)
  %_63 = extractvalue {i64, i1} %_62, 1
  br i1 %_63, label %L13, label %L12
L11:
  store i64 1, i64* %_35
  br label %L1
L12:
  %_64 = extractvalue {i64, i1} %_62, 0
  store i64 %_64, i64* %_7
  %_65 = load i64, i64* %_7
  %_66 = call i8* @_bal_alloc (i64 8)
  %_67 = bitcast i8* %_66 to i64*
  store i64 %_65, i64* %_67, align 8
  %_68 = getelementptr i8, i8* %_66, i64 144115188075855872
  call void @_Bio__println (i8* %_68)
  store i8* null, i8** %_8
  %_69 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_70 = extractvalue {i64, i1} %_69, 1
  br i1 %_70, label %L15, label %L14
L13:
  store i64 1, i64* %_35
  br label %L1
L14:
  %_71 = extractvalue {i64, i1} %_69, 0
  store i64 %_71, i64* %_9
  %_72 = load i64, i64* %_9
  %_73 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_72, i64 5)
  %_74 = extractvalue {i64, i1} %_73, 1
  br i1 %_74, label %L17, label %L16
L15:
  store i64 1, i64* %_35
  br label %L1
L16:
  %_75 = extractvalue {i64, i1} %_73, 0
  store i64 %_75, i64* %_10
  %_76 = load i64, i64* %_10
  %_77 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_76, i64 9)
  %_78 = extractvalue {i64, i1} %_77, 1
  br i1 %_78, label %L19, label %L18
L17:
  store i64 1, i64* %_35
  br label %L1
L18:
  %_79 = extractvalue {i64, i1} %_77, 0
  store i64 %_79, i64* %_11
  %_80 = load i64, i64* %_11
  %_81 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_80, i64 12)
  %_82 = extractvalue {i64, i1} %_81, 1
  br i1 %_82, label %L21, label %L20
L19:
  store i64 1, i64* %_35
  br label %L1
L20:
  %_83 = extractvalue {i64, i1} %_81, 0
  store i64 %_83, i64* %_12
  %_84 = load i64, i64* %_12
  %_85 = call i8* @_bal_alloc (i64 8)
  %_86 = bitcast i8* %_85 to i64*
  store i64 %_84, i64* %_86, align 8
  %_87 = getelementptr i8, i8* %_85, i64 144115188075855872
  call void @_Bio__println (i8* %_87)
  store i8* null, i8** %_13
  %_88 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_89 = extractvalue {i64, i1} %_88, 1
  br i1 %_89, label %L23, label %L22
L21:
  store i64 1, i64* %_35
  br label %L1
L22:
  %_90 = extractvalue {i64, i1} %_88, 0
  store i64 %_90, i64* %_14
  %_91 = load i64, i64* %_14
  %_92 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_91, i64 5)
  %_93 = extractvalue {i64, i1} %_92, 1
  br i1 %_93, label %L25, label %L24
L23:
  store i64 1, i64* %_35
  br label %L1
L24:
  %_94 = extractvalue {i64, i1} %_92, 0
  store i64 %_94, i64* %_15
  %_95 = load i64, i64* %_15
  %_96 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_95, i64 9)
  %_97 = extractvalue {i64, i1} %_96, 1
  br i1 %_97, label %L27, label %L26
L25:
  store i64 1, i64* %_35
  br label %L1
L26:
  %_98 = extractvalue {i64, i1} %_96, 0
  store i64 %_98, i64* %_16
  %_99 = load i64, i64* %_16
  %_100 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_99, i64 4)
  %_101 = extractvalue {i64, i1} %_100, 1
  br i1 %_101, label %L29, label %L28
L27:
  store i64 1, i64* %_35
  br label %L1
L28:
  %_102 = extractvalue {i64, i1} %_100, 0
  store i64 %_102, i64* %_17
  %_103 = load i64, i64* %_17
  %_104 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_103, i64 7)
  %_105 = extractvalue {i64, i1} %_104, 1
  br i1 %_105, label %L31, label %L30
L29:
  store i64 1, i64* %_35
  br label %L1
L30:
  %_106 = extractvalue {i64, i1} %_104, 0
  store i64 %_106, i64* %_18
  %_107 = load i64, i64* %_18
  %_108 = call i8* @_bal_alloc (i64 8)
  %_109 = bitcast i8* %_108 to i64*
  store i64 %_107, i64* %_109, align 8
  %_110 = getelementptr i8, i8* %_108, i64 144115188075855872
  call void @_Bio__println (i8* %_110)
  store i8* null, i8** %_19
  %_111 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_112 = extractvalue {i64, i1} %_111, 1
  br i1 %_112, label %L33, label %L32
L31:
  store i64 1, i64* %_35
  br label %L1
L32:
  %_113 = extractvalue {i64, i1} %_111, 0
  store i64 %_113, i64* %_20
  %_114 = load i64, i64* %_20
  %_115 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_114, i64 5)
  %_116 = extractvalue {i64, i1} %_115, 1
  br i1 %_116, label %L35, label %L34
L33:
  store i64 1, i64* %_35
  br label %L1
L34:
  %_117 = extractvalue {i64, i1} %_115, 0
  store i64 %_117, i64* %_21
  %_118 = load i64, i64* %_21
  %_119 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_118, i64 9)
  %_120 = extractvalue {i64, i1} %_119, 1
  br i1 %_120, label %L37, label %L36
L35:
  store i64 1, i64* %_35
  br label %L1
L36:
  %_121 = extractvalue {i64, i1} %_119, 0
  store i64 %_121, i64* %_22
  %_122 = load i64, i64* %_22
  %_123 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_122, i64 4)
  %_124 = extractvalue {i64, i1} %_123, 1
  br i1 %_124, label %L39, label %L38
L37:
  store i64 1, i64* %_35
  br label %L1
L38:
  %_125 = extractvalue {i64, i1} %_123, 0
  store i64 %_125, i64* %_23
  %_126 = load i64, i64* %_23
  %_127 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_126, i64 7)
  %_128 = extractvalue {i64, i1} %_127, 1
  br i1 %_128, label %L41, label %L40
L39:
  store i64 1, i64* %_35
  br label %L1
L40:
  %_129 = extractvalue {i64, i1} %_127, 0
  store i64 %_129, i64* %_24
  %_130 = load i64, i64* %_24
  %_131 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_130, i64 5)
  %_132 = extractvalue {i64, i1} %_131, 1
  br i1 %_132, label %L43, label %L42
L41:
  store i64 1, i64* %_35
  br label %L1
L42:
  %_133 = extractvalue {i64, i1} %_131, 0
  store i64 %_133, i64* %_25
  %_134 = load i64, i64* %_25
  %_135 = call i8* @_bal_alloc (i64 8)
  %_136 = bitcast i8* %_135 to i64*
  store i64 %_134, i64* %_136, align 8
  %_137 = getelementptr i8, i8* %_135, i64 144115188075855872
  call void @_Bio__println (i8* %_137)
  store i8* null, i8** %_26
  %_138 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_139 = extractvalue {i64, i1} %_138, 1
  br i1 %_139, label %L45, label %L44
L43:
  store i64 1, i64* %_35
  br label %L1
L44:
  %_140 = extractvalue {i64, i1} %_138, 0
  store i64 %_140, i64* %_27
  %_141 = load i64, i64* %_27
  %_142 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_141, i64 5)
  %_143 = extractvalue {i64, i1} %_142, 1
  br i1 %_143, label %L47, label %L46
L45:
  store i64 1, i64* %_35
  br label %L1
L46:
  %_144 = extractvalue {i64, i1} %_142, 0
  store i64 %_144, i64* %_28
  %_145 = load i64, i64* %_28
  %_146 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_145, i64 9)
  %_147 = extractvalue {i64, i1} %_146, 1
  br i1 %_147, label %L49, label %L48
L47:
  store i64 1, i64* %_35
  br label %L1
L48:
  %_148 = extractvalue {i64, i1} %_146, 0
  store i64 %_148, i64* %_29
  %_149 = load i64, i64* %_29
  %_150 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_149, i64 4)
  %_151 = extractvalue {i64, i1} %_150, 1
  br i1 %_151, label %L51, label %L50
L49:
  store i64 1, i64* %_35
  br label %L1
L50:
  %_152 = extractvalue {i64, i1} %_150, 0
  store i64 %_152, i64* %_30
  %_153 = load i64, i64* %_30
  %_154 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_153, i64 7)
  %_155 = extractvalue {i64, i1} %_154, 1
  br i1 %_155, label %L53, label %L52
L51:
  store i64 1, i64* %_35
  br label %L1
L52:
  %_156 = extractvalue {i64, i1} %_154, 0
  store i64 %_156, i64* %_31
  %_157 = load i64, i64* %_31
  %_158 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_157, i64 23)
  %_159 = extractvalue {i64, i1} %_158, 1
  br i1 %_159, label %L55, label %L54
L53:
  store i64 1, i64* %_35
  br label %L1
L54:
  %_160 = extractvalue {i64, i1} %_158, 0
  store i64 %_160, i64* %_32
  %_161 = load i64, i64* %_32
  %_162 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_161, i64 50)
  %_163 = extractvalue {i64, i1} %_162, 1
  br i1 %_163, label %L57, label %L56
L55:
  store i64 1, i64* %_35
  br label %L1
L56:
  %_164 = extractvalue {i64, i1} %_162, 0
  store i64 %_164, i64* %_33
  %_165 = load i64, i64* %_33
  %_166 = call i8* @_bal_alloc (i64 8)
  %_167 = bitcast i8* %_166 to i64*
  store i64 %_165, i64* %_167, align 8
  %_168 = getelementptr i8, i8* %_166, i64 144115188075855872
  call void @_Bio__println (i8* %_168)
  store i8* null, i8** %_34
  ret void
L57:
  store i64 1, i64* %_35
  br label %L1
}
