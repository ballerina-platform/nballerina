@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i8*
  %_15 = alloca i64
  %_16 = alloca i8*
  %_17 = alloca i64
  %_18 = alloca i8*
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i8*
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i8*
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i8*
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i8*
  %_40 = alloca i64
  %_41 = alloca i8*
  %_42 = alloca i64
  %_43 = alloca i8*
  %_44 = alloca i64
  %_45 = alloca i8*
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
  %_183 = load i64, i64* %_46
  call void @_bal_panic (i64 %_183)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_52 = extractvalue {i64, i1} %_50, 0
  store i64 %_52, i64* %_0
  %_53 = load i64, i64* %_0
  %_54 = call i8* @_bal_alloc (i64 8)
  %_55 = bitcast i8* %_54 to i64*
  store i64 %_53, i64* %_55, align 8
  %_56 = getelementptr i8, i8* %_54, i64 144115188075855872
  call void @_Bio__println (i8* %_56)
  store i8* null, i8** %_1
  %_57 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L7, label %L6
L5:
  store i64 769, i64* %_46
  br label %L2
L6:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_2
  %_60 = load i64, i64* %_2
  %_61 = call i8* @_bal_alloc (i64 8)
  %_62 = bitcast i8* %_61 to i64*
  store i64 %_60, i64* %_62, align 8
  %_63 = getelementptr i8, i8* %_61, i64 144115188075855872
  call void @_Bio__println (i8* %_63)
  store i8* null, i8** %_3
  %_64 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_65 = extractvalue {i64, i1} %_64, 1
  br i1 %_65, label %L9, label %L8
L7:
  store i64 1025, i64* %_46
  br label %L2
L8:
  %_66 = extractvalue {i64, i1} %_64, 0
  store i64 %_66, i64* %_4
  %_67 = load i64, i64* %_4
  %_68 = call i8* @_bal_alloc (i64 8)
  %_69 = bitcast i8* %_68 to i64*
  store i64 %_67, i64* %_69, align 8
  %_70 = getelementptr i8, i8* %_68, i64 144115188075855872
  call void @_Bio__println (i8* %_70)
  store i8* null, i8** %_5
  %_71 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 1)
  %_72 = extractvalue {i64, i1} %_71, 1
  br i1 %_72, label %L11, label %L10
L9:
  store i64 1281, i64* %_46
  br label %L2
L10:
  %_73 = extractvalue {i64, i1} %_71, 0
  store i64 %_73, i64* %_6
  %_74 = load i64, i64* %_6
  %_75 = call i8* @_bal_alloc (i64 8)
  %_76 = bitcast i8* %_75 to i64*
  store i64 %_74, i64* %_76, align 8
  %_77 = getelementptr i8, i8* %_75, i64 144115188075855872
  call void @_Bio__println (i8* %_77)
  store i8* null, i8** %_7
  %_78 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 1)
  %_79 = extractvalue {i64, i1} %_78, 1
  br i1 %_79, label %L13, label %L12
L11:
  store i64 1793, i64* %_46
  br label %L2
L12:
  %_80 = extractvalue {i64, i1} %_78, 0
  store i64 %_80, i64* %_8
  %_81 = load i64, i64* %_8
  %_82 = call i8* @_bal_alloc (i64 8)
  %_83 = bitcast i8* %_82 to i64*
  store i64 %_81, i64* %_83, align 8
  %_84 = getelementptr i8, i8* %_82, i64 144115188075855872
  call void @_Bio__println (i8* %_84)
  store i8* null, i8** %_9
  %_85 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_86 = extractvalue {i64, i1} %_85, 1
  br i1 %_86, label %L15, label %L14
L13:
  store i64 2049, i64* %_46
  br label %L2
L14:
  %_87 = extractvalue {i64, i1} %_85, 0
  store i64 %_87, i64* %_10
  %_88 = load i64, i64* %_10
  %_89 = call i8* @_bal_alloc (i64 8)
  %_90 = bitcast i8* %_89 to i64*
  store i64 %_88, i64* %_90, align 8
  %_91 = getelementptr i8, i8* %_89, i64 144115188075855872
  call void @_Bio__println (i8* %_91)
  store i8* null, i8** %_11
  %_92 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -1, i64 1)
  %_93 = extractvalue {i64, i1} %_92, 1
  br i1 %_93, label %L17, label %L16
L15:
  store i64 2305, i64* %_46
  br label %L2
L16:
  %_94 = extractvalue {i64, i1} %_92, 0
  store i64 %_94, i64* %_13
  %_95 = load i64, i64* %_13
  %_96 = call i8* @_bal_alloc (i64 8)
  %_97 = bitcast i8* %_96 to i64*
  store i64 %_95, i64* %_97, align 8
  %_98 = getelementptr i8, i8* %_96, i64 144115188075855872
  call void @_Bio__println (i8* %_98)
  store i8* null, i8** %_14
  %_99 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_100 = extractvalue {i64, i1} %_99, 1
  br i1 %_100, label %L19, label %L18
L17:
  store i64 2561, i64* %_46
  br label %L2
L18:
  %_101 = extractvalue {i64, i1} %_99, 0
  store i64 %_101, i64* %_15
  %_102 = load i64, i64* %_15
  %_103 = call i8* @_bal_alloc (i64 8)
  %_104 = bitcast i8* %_103 to i64*
  store i64 %_102, i64* %_104, align 8
  %_105 = getelementptr i8, i8* %_103, i64 144115188075855872
  call void @_Bio__println (i8* %_105)
  store i8* null, i8** %_16
  %_106 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 0)
  %_107 = extractvalue {i64, i1} %_106, 1
  br i1 %_107, label %L21, label %L20
L19:
  store i64 3073, i64* %_46
  br label %L2
L20:
  %_108 = extractvalue {i64, i1} %_106, 0
  store i64 %_108, i64* %_17
  %_109 = load i64, i64* %_17
  %_110 = call i8* @_bal_alloc (i64 8)
  %_111 = bitcast i8* %_110 to i64*
  store i64 %_109, i64* %_111, align 8
  %_112 = getelementptr i8, i8* %_110, i64 144115188075855872
  call void @_Bio__println (i8* %_112)
  store i8* null, i8** %_18
  %_113 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 0)
  %_114 = extractvalue {i64, i1} %_113, 1
  br i1 %_114, label %L23, label %L22
L21:
  store i64 3329, i64* %_46
  br label %L2
L22:
  %_115 = extractvalue {i64, i1} %_113, 0
  store i64 %_115, i64* %_19
  %_116 = load i64, i64* %_19
  %_117 = call i8* @_bal_alloc (i64 8)
  %_118 = bitcast i8* %_117 to i64*
  store i64 %_116, i64* %_118, align 8
  %_119 = getelementptr i8, i8* %_117, i64 144115188075855872
  call void @_Bio__println (i8* %_119)
  store i8* null, i8** %_20
  %_120 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -1, i64 0)
  %_121 = extractvalue {i64, i1} %_120, 1
  br i1 %_121, label %L25, label %L24
L23:
  store i64 3585, i64* %_46
  br label %L2
L24:
  %_122 = extractvalue {i64, i1} %_120, 0
  store i64 %_122, i64* %_22
  %_123 = load i64, i64* %_22
  %_124 = call i8* @_bal_alloc (i64 8)
  %_125 = bitcast i8* %_124 to i64*
  store i64 %_123, i64* %_125, align 8
  %_126 = getelementptr i8, i8* %_124, i64 144115188075855872
  call void @_Bio__println (i8* %_126)
  store i8* null, i8** %_23
  %_127 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -9223372036854775806, i64 0)
  %_128 = extractvalue {i64, i1} %_127, 1
  br i1 %_128, label %L27, label %L26
L25:
  store i64 3841, i64* %_46
  br label %L2
L26:
  %_129 = extractvalue {i64, i1} %_127, 0
  store i64 %_129, i64* %_25
  %_130 = load i64, i64* %_25
  %_131 = call i8* @_bal_alloc (i64 8)
  %_132 = bitcast i8* %_131 to i64*
  store i64 %_130, i64* %_132, align 8
  %_133 = getelementptr i8, i8* %_131, i64 144115188075855872
  call void @_Bio__println (i8* %_133)
  store i8* null, i8** %_26
  %_134 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 -1)
  %_135 = extractvalue {i64, i1} %_134, 1
  br i1 %_135, label %L29, label %L28
L27:
  store i64 4097, i64* %_46
  br label %L2
L28:
  %_136 = extractvalue {i64, i1} %_134, 0
  store i64 %_136, i64* %_28
  %_137 = load i64, i64* %_28
  %_138 = call i8* @_bal_alloc (i64 8)
  %_139 = bitcast i8* %_138 to i64*
  store i64 %_137, i64* %_139, align 8
  %_140 = getelementptr i8, i8* %_138, i64 144115188075855872
  call void @_Bio__println (i8* %_140)
  store i8* null, i8** %_29
  %_141 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 -1)
  %_142 = extractvalue {i64, i1} %_141, 1
  br i1 %_142, label %L31, label %L30
L29:
  store i64 4609, i64* %_46
  br label %L2
L30:
  %_143 = extractvalue {i64, i1} %_141, 0
  store i64 %_143, i64* %_31
  %_144 = load i64, i64* %_31
  %_145 = call i8* @_bal_alloc (i64 8)
  %_146 = bitcast i8* %_145 to i64*
  store i64 %_144, i64* %_146, align 8
  %_147 = getelementptr i8, i8* %_145, i64 144115188075855872
  call void @_Bio__println (i8* %_147)
  store i8* null, i8** %_32
  %_148 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 -1)
  %_149 = extractvalue {i64, i1} %_148, 1
  br i1 %_149, label %L33, label %L32
L31:
  store i64 4865, i64* %_46
  br label %L2
L32:
  %_150 = extractvalue {i64, i1} %_148, 0
  store i64 %_150, i64* %_34
  %_151 = load i64, i64* %_34
  %_152 = call i8* @_bal_alloc (i64 8)
  %_153 = bitcast i8* %_152 to i64*
  store i64 %_151, i64* %_153, align 8
  %_154 = getelementptr i8, i8* %_152, i64 144115188075855872
  call void @_Bio__println (i8* %_154)
  store i8* null, i8** %_35
  %_155 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 -1, i64 -1)
  %_156 = extractvalue {i64, i1} %_155, 1
  br i1 %_156, label %L35, label %L34
L33:
  store i64 5121, i64* %_46
  br label %L2
L34:
  %_157 = extractvalue {i64, i1} %_155, 0
  store i64 %_157, i64* %_38
  %_158 = load i64, i64* %_38
  %_159 = call i8* @_bal_alloc (i64 8)
  %_160 = bitcast i8* %_159 to i64*
  store i64 %_158, i64* %_160, align 8
  %_161 = getelementptr i8, i8* %_159, i64 144115188075855872
  call void @_Bio__println (i8* %_161)
  store i8* null, i8** %_39
  %_162 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 9223372036854775806, i64 9223372036854775806)
  %_163 = extractvalue {i64, i1} %_162, 1
  br i1 %_163, label %L37, label %L36
L35:
  store i64 5377, i64* %_46
  br label %L2
L36:
  %_164 = extractvalue {i64, i1} %_162, 0
  store i64 %_164, i64* %_40
  %_165 = load i64, i64* %_40
  %_166 = call i8* @_bal_alloc (i64 8)
  %_167 = bitcast i8* %_166 to i64*
  store i64 %_165, i64* %_167, align 8
  %_168 = getelementptr i8, i8* %_166, i64 144115188075855872
  call void @_Bio__println (i8* %_168)
  store i8* null, i8** %_41
  %_169 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 1, i64 9223372036854775806)
  %_170 = extractvalue {i64, i1} %_169, 1
  br i1 %_170, label %L39, label %L38
L37:
  store i64 5889, i64* %_46
  br label %L2
L38:
  %_171 = extractvalue {i64, i1} %_169, 0
  store i64 %_171, i64* %_42
  %_172 = load i64, i64* %_42
  %_173 = call i8* @_bal_alloc (i64 8)
  %_174 = bitcast i8* %_173 to i64*
  store i64 %_172, i64* %_174, align 8
  %_175 = getelementptr i8, i8* %_173, i64 144115188075855872
  call void @_Bio__println (i8* %_175)
  store i8* null, i8** %_43
  %_176 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_177 = extractvalue {i64, i1} %_176, 1
  br i1 %_177, label %L41, label %L40
L39:
  store i64 6145, i64* %_46
  br label %L2
L40:
  %_178 = extractvalue {i64, i1} %_176, 0
  store i64 %_178, i64* %_44
  %_179 = load i64, i64* %_44
  %_180 = call i8* @_bal_alloc (i64 8)
  %_181 = bitcast i8* %_180 to i64*
  store i64 %_179, i64* %_181, align 8
  %_182 = getelementptr i8, i8* %_180, i64 144115188075855872
  call void @_Bio__println (i8* %_182)
  store i8* null, i8** %_45
  ret void
L41:
  store i64 6401, i64* %_46
  br label %L2
}
