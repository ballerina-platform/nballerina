@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
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
  %_29 = alloca i64
  %_30 = alloca i8*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8*
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i64
  %_40 = alloca i8*
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
  %_150 = load i64, i64* %_41
  call void @_bal_panic (i64 %_150)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_47 = extractvalue {i64, i1} %_45, 0
  store i64 %_47, i64* %_0
  %_48 = load i64, i64* %_0
  %_49 = call i8* @_bal_alloc (i64 8)
  %_50 = bitcast i8* %_49 to i64*
  store i64 %_48, i64* %_50, align 8
  %_51 = getelementptr i8, i8* %_49, i64 504403158265495552
  call void @_Bio__println (i8* %_51)
  store i8* null, i8** %_1
  %_52 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_53 = extractvalue {i64, i1} %_52, 1
  br i1 %_53, label %L7, label %L6
L5:
  store i64 1025, i64* %_41
  br label %L2
L6:
  %_54 = extractvalue {i64, i1} %_52, 0
  store i64 %_54, i64* %_2
  %_55 = load i64, i64* %_2
  %_56 = call i8* @_bal_alloc (i64 8)
  %_57 = bitcast i8* %_56 to i64*
  store i64 %_55, i64* %_57, align 8
  %_58 = getelementptr i8, i8* %_56, i64 504403158265495552
  call void @_Bio__println (i8* %_58)
  store i8* null, i8** %_3
  %_59 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 -1)
  %_60 = extractvalue {i64, i1} %_59, 1
  br i1 %_60, label %L9, label %L8
L7:
  store i64 1281, i64* %_41
  br label %L2
L8:
  %_61 = extractvalue {i64, i1} %_59, 0
  store i64 %_61, i64* %_5
  %_62 = load i64, i64* %_5
  %_63 = call i8* @_bal_alloc (i64 8)
  %_64 = bitcast i8* %_63 to i64*
  store i64 %_62, i64* %_64, align 8
  %_65 = getelementptr i8, i8* %_63, i64 504403158265495552
  call void @_Bio__println (i8* %_65)
  store i8* null, i8** %_6
  %_66 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 1)
  %_67 = extractvalue {i64, i1} %_66, 1
  br i1 %_67, label %L11, label %L10
L9:
  store i64 1537, i64* %_41
  br label %L2
L10:
  %_68 = extractvalue {i64, i1} %_66, 0
  store i64 %_68, i64* %_7
  %_69 = load i64, i64* %_7
  %_70 = call i8* @_bal_alloc (i64 8)
  %_71 = bitcast i8* %_70 to i64*
  store i64 %_69, i64* %_71, align 8
  %_72 = getelementptr i8, i8* %_70, i64 504403158265495552
  call void @_Bio__println (i8* %_72)
  store i8* null, i8** %_8
  %_73 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 0)
  %_74 = extractvalue {i64, i1} %_73, 1
  br i1 %_74, label %L13, label %L12
L11:
  store i64 2049, i64* %_41
  br label %L2
L12:
  %_75 = extractvalue {i64, i1} %_73, 0
  store i64 %_75, i64* %_9
  %_76 = load i64, i64* %_9
  %_77 = call i8* @_bal_alloc (i64 8)
  %_78 = bitcast i8* %_77 to i64*
  store i64 %_76, i64* %_78, align 8
  %_79 = getelementptr i8, i8* %_77, i64 504403158265495552
  call void @_Bio__println (i8* %_79)
  store i8* null, i8** %_10
  %_80 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 -1)
  %_81 = extractvalue {i64, i1} %_80, 1
  br i1 %_81, label %L15, label %L14
L13:
  store i64 2305, i64* %_41
  br label %L2
L14:
  %_82 = extractvalue {i64, i1} %_80, 0
  store i64 %_82, i64* %_12
  %_83 = load i64, i64* %_12
  %_84 = call i8* @_bal_alloc (i64 8)
  %_85 = bitcast i8* %_84 to i64*
  store i64 %_83, i64* %_85, align 8
  %_86 = getelementptr i8, i8* %_84, i64 504403158265495552
  call void @_Bio__println (i8* %_86)
  store i8* null, i8** %_13
  %_87 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 1)
  %_88 = extractvalue {i64, i1} %_87, 1
  br i1 %_88, label %L17, label %L16
L15:
  store i64 2561, i64* %_41
  br label %L2
L16:
  %_89 = extractvalue {i64, i1} %_87, 0
  store i64 %_89, i64* %_14
  %_90 = load i64, i64* %_14
  %_91 = call i8* @_bal_alloc (i64 8)
  %_92 = bitcast i8* %_91 to i64*
  store i64 %_90, i64* %_92, align 8
  %_93 = getelementptr i8, i8* %_91, i64 504403158265495552
  call void @_Bio__println (i8* %_93)
  store i8* null, i8** %_15
  %_94 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 0)
  %_95 = extractvalue {i64, i1} %_94, 1
  br i1 %_95, label %L19, label %L18
L17:
  store i64 3073, i64* %_41
  br label %L2
L18:
  %_96 = extractvalue {i64, i1} %_94, 0
  store i64 %_96, i64* %_16
  %_97 = load i64, i64* %_16
  %_98 = call i8* @_bal_alloc (i64 8)
  %_99 = bitcast i8* %_98 to i64*
  store i64 %_97, i64* %_99, align 8
  %_100 = getelementptr i8, i8* %_98, i64 504403158265495552
  call void @_Bio__println (i8* %_100)
  store i8* null, i8** %_17
  %_101 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 -1)
  %_102 = extractvalue {i64, i1} %_101, 1
  br i1 %_102, label %L21, label %L20
L19:
  store i64 3329, i64* %_41
  br label %L2
L20:
  %_103 = extractvalue {i64, i1} %_101, 0
  store i64 %_103, i64* %_19
  %_104 = load i64, i64* %_19
  %_105 = call i8* @_bal_alloc (i64 8)
  %_106 = bitcast i8* %_105 to i64*
  store i64 %_104, i64* %_106, align 8
  %_107 = getelementptr i8, i8* %_105, i64 504403158265495552
  call void @_Bio__println (i8* %_107)
  store i8* null, i8** %_20
  %_108 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 1)
  %_109 = extractvalue {i64, i1} %_108, 1
  br i1 %_109, label %L23, label %L22
L21:
  store i64 3585, i64* %_41
  br label %L2
L22:
  %_110 = extractvalue {i64, i1} %_108, 0
  store i64 %_110, i64* %_22
  %_111 = load i64, i64* %_22
  %_112 = call i8* @_bal_alloc (i64 8)
  %_113 = bitcast i8* %_112 to i64*
  store i64 %_111, i64* %_113, align 8
  %_114 = getelementptr i8, i8* %_112, i64 504403158265495552
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_23
  %_115 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 0)
  %_116 = extractvalue {i64, i1} %_115, 1
  br i1 %_116, label %L25, label %L24
L23:
  store i64 4097, i64* %_41
  br label %L2
L24:
  %_117 = extractvalue {i64, i1} %_115, 0
  store i64 %_117, i64* %_25
  %_118 = load i64, i64* %_25
  %_119 = call i8* @_bal_alloc (i64 8)
  %_120 = bitcast i8* %_119 to i64*
  store i64 %_118, i64* %_120, align 8
  %_121 = getelementptr i8, i8* %_119, i64 504403158265495552
  call void @_Bio__println (i8* %_121)
  store i8* null, i8** %_26
  %_122 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 -1)
  %_123 = extractvalue {i64, i1} %_122, 1
  br i1 %_123, label %L27, label %L26
L25:
  store i64 4353, i64* %_41
  br label %L2
L26:
  %_124 = extractvalue {i64, i1} %_122, 0
  store i64 %_124, i64* %_29
  %_125 = load i64, i64* %_29
  %_126 = call i8* @_bal_alloc (i64 8)
  %_127 = bitcast i8* %_126 to i64*
  store i64 %_125, i64* %_127, align 8
  %_128 = getelementptr i8, i8* %_126, i64 504403158265495552
  call void @_Bio__println (i8* %_128)
  store i8* null, i8** %_30
  %_129 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 1)
  %_130 = extractvalue {i64, i1} %_129, 1
  br i1 %_130, label %L29, label %L28
L27:
  store i64 4609, i64* %_41
  br label %L2
L28:
  %_131 = extractvalue {i64, i1} %_129, 0
  store i64 %_131, i64* %_32
  %_132 = load i64, i64* %_32
  %_133 = call i8* @_bal_alloc (i64 8)
  %_134 = bitcast i8* %_133 to i64*
  store i64 %_132, i64* %_134, align 8
  %_135 = getelementptr i8, i8* %_133, i64 504403158265495552
  call void @_Bio__println (i8* %_135)
  store i8* null, i8** %_33
  %_136 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 0)
  %_137 = extractvalue {i64, i1} %_136, 1
  br i1 %_137, label %L31, label %L30
L29:
  store i64 5121, i64* %_41
  br label %L2
L30:
  %_138 = extractvalue {i64, i1} %_136, 0
  store i64 %_138, i64* %_35
  %_139 = load i64, i64* %_35
  %_140 = call i8* @_bal_alloc (i64 8)
  %_141 = bitcast i8* %_140 to i64*
  store i64 %_139, i64* %_141, align 8
  %_142 = getelementptr i8, i8* %_140, i64 504403158265495552
  call void @_Bio__println (i8* %_142)
  store i8* null, i8** %_36
  %_143 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 -1)
  %_144 = extractvalue {i64, i1} %_143, 1
  br i1 %_144, label %L33, label %L32
L31:
  store i64 5377, i64* %_41
  br label %L2
L32:
  %_145 = extractvalue {i64, i1} %_143, 0
  store i64 %_145, i64* %_39
  %_146 = load i64, i64* %_39
  %_147 = call i8* @_bal_alloc (i64 8)
  %_148 = bitcast i8* %_147 to i64*
  store i64 %_146, i64* %_148, align 8
  %_149 = getelementptr i8, i8* %_147, i64 504403158265495552
  call void @_Bio__println (i8* %_149)
  store i8* null, i8** %_40
  ret void
L33:
  store i64 5633, i64* %_41
  br label %L2
}
