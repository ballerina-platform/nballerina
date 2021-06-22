declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
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
  %_42 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 1)
  %_43 = extractvalue {i64, i1} %_42, 1
  br i1 %_43, label %L3, label %L2
L1:
  %_147 = load i64, i64* %_41
  call void @_bal_panic (i64 %_147)
  unreachable
L2:
  %_44 = extractvalue {i64, i1} %_42, 0
  store i64 %_44, i64* %_0
  %_45 = load i64, i64* %_0
  %_46 = call i8* @_bal_alloc (i64 8)
  %_47 = bitcast i8* %_46 to i64*
  store i64 %_45, i64* %_47, align 8
  %_48 = getelementptr i8, i8* %_46, i64 144115188075855872
  call void @_Bio__println (i8* %_48)
  store i8* null, i8** %_1
  %_49 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 0)
  %_50 = extractvalue {i64, i1} %_49, 1
  br i1 %_50, label %L5, label %L4
L3:
  store i64 1, i64* %_41
  br label %L1
L4:
  %_51 = extractvalue {i64, i1} %_49, 0
  store i64 %_51, i64* %_2
  %_52 = load i64, i64* %_2
  %_53 = call i8* @_bal_alloc (i64 8)
  %_54 = bitcast i8* %_53 to i64*
  store i64 %_52, i64* %_54, align 8
  %_55 = getelementptr i8, i8* %_53, i64 144115188075855872
  call void @_Bio__println (i8* %_55)
  store i8* null, i8** %_3
  %_56 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 9223372036854775806, i64 -1)
  %_57 = extractvalue {i64, i1} %_56, 1
  br i1 %_57, label %L7, label %L6
L5:
  store i64 1, i64* %_41
  br label %L1
L6:
  %_58 = extractvalue {i64, i1} %_56, 0
  store i64 %_58, i64* %_5
  %_59 = load i64, i64* %_5
  %_60 = call i8* @_bal_alloc (i64 8)
  %_61 = bitcast i8* %_60 to i64*
  store i64 %_59, i64* %_61, align 8
  %_62 = getelementptr i8, i8* %_60, i64 144115188075855872
  call void @_Bio__println (i8* %_62)
  store i8* null, i8** %_6
  %_63 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 1)
  %_64 = extractvalue {i64, i1} %_63, 1
  br i1 %_64, label %L9, label %L8
L7:
  store i64 1, i64* %_41
  br label %L1
L8:
  %_65 = extractvalue {i64, i1} %_63, 0
  store i64 %_65, i64* %_7
  %_66 = load i64, i64* %_7
  %_67 = call i8* @_bal_alloc (i64 8)
  %_68 = bitcast i8* %_67 to i64*
  store i64 %_66, i64* %_68, align 8
  %_69 = getelementptr i8, i8* %_67, i64 144115188075855872
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_8
  %_70 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 0)
  %_71 = extractvalue {i64, i1} %_70, 1
  br i1 %_71, label %L11, label %L10
L9:
  store i64 1, i64* %_41
  br label %L1
L10:
  %_72 = extractvalue {i64, i1} %_70, 0
  store i64 %_72, i64* %_9
  %_73 = load i64, i64* %_9
  %_74 = call i8* @_bal_alloc (i64 8)
  %_75 = bitcast i8* %_74 to i64*
  store i64 %_73, i64* %_75, align 8
  %_76 = getelementptr i8, i8* %_74, i64 144115188075855872
  call void @_Bio__println (i8* %_76)
  store i8* null, i8** %_10
  %_77 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 1, i64 -1)
  %_78 = extractvalue {i64, i1} %_77, 1
  br i1 %_78, label %L13, label %L12
L11:
  store i64 1, i64* %_41
  br label %L1
L12:
  %_79 = extractvalue {i64, i1} %_77, 0
  store i64 %_79, i64* %_12
  %_80 = load i64, i64* %_12
  %_81 = call i8* @_bal_alloc (i64 8)
  %_82 = bitcast i8* %_81 to i64*
  store i64 %_80, i64* %_82, align 8
  %_83 = getelementptr i8, i8* %_81, i64 144115188075855872
  call void @_Bio__println (i8* %_83)
  store i8* null, i8** %_13
  %_84 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 1)
  %_85 = extractvalue {i64, i1} %_84, 1
  br i1 %_85, label %L15, label %L14
L13:
  store i64 1, i64* %_41
  br label %L1
L14:
  %_86 = extractvalue {i64, i1} %_84, 0
  store i64 %_86, i64* %_14
  %_87 = load i64, i64* %_14
  %_88 = call i8* @_bal_alloc (i64 8)
  %_89 = bitcast i8* %_88 to i64*
  store i64 %_87, i64* %_89, align 8
  %_90 = getelementptr i8, i8* %_88, i64 144115188075855872
  call void @_Bio__println (i8* %_90)
  store i8* null, i8** %_15
  %_91 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 0)
  %_92 = extractvalue {i64, i1} %_91, 1
  br i1 %_92, label %L17, label %L16
L15:
  store i64 1, i64* %_41
  br label %L1
L16:
  %_93 = extractvalue {i64, i1} %_91, 0
  store i64 %_93, i64* %_16
  %_94 = load i64, i64* %_16
  %_95 = call i8* @_bal_alloc (i64 8)
  %_96 = bitcast i8* %_95 to i64*
  store i64 %_94, i64* %_96, align 8
  %_97 = getelementptr i8, i8* %_95, i64 144115188075855872
  call void @_Bio__println (i8* %_97)
  store i8* null, i8** %_17
  %_98 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 0, i64 -1)
  %_99 = extractvalue {i64, i1} %_98, 1
  br i1 %_99, label %L19, label %L18
L17:
  store i64 1, i64* %_41
  br label %L1
L18:
  %_100 = extractvalue {i64, i1} %_98, 0
  store i64 %_100, i64* %_19
  %_101 = load i64, i64* %_19
  %_102 = call i8* @_bal_alloc (i64 8)
  %_103 = bitcast i8* %_102 to i64*
  store i64 %_101, i64* %_103, align 8
  %_104 = getelementptr i8, i8* %_102, i64 144115188075855872
  call void @_Bio__println (i8* %_104)
  store i8* null, i8** %_20
  %_105 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 1)
  %_106 = extractvalue {i64, i1} %_105, 1
  br i1 %_106, label %L21, label %L20
L19:
  store i64 1, i64* %_41
  br label %L1
L20:
  %_107 = extractvalue {i64, i1} %_105, 0
  store i64 %_107, i64* %_22
  %_108 = load i64, i64* %_22
  %_109 = call i8* @_bal_alloc (i64 8)
  %_110 = bitcast i8* %_109 to i64*
  store i64 %_108, i64* %_110, align 8
  %_111 = getelementptr i8, i8* %_109, i64 144115188075855872
  call void @_Bio__println (i8* %_111)
  store i8* null, i8** %_23
  %_112 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 0)
  %_113 = extractvalue {i64, i1} %_112, 1
  br i1 %_113, label %L23, label %L22
L21:
  store i64 1, i64* %_41
  br label %L1
L22:
  %_114 = extractvalue {i64, i1} %_112, 0
  store i64 %_114, i64* %_25
  %_115 = load i64, i64* %_25
  %_116 = call i8* @_bal_alloc (i64 8)
  %_117 = bitcast i8* %_116 to i64*
  store i64 %_115, i64* %_117, align 8
  %_118 = getelementptr i8, i8* %_116, i64 144115188075855872
  call void @_Bio__println (i8* %_118)
  store i8* null, i8** %_26
  %_119 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -1, i64 -1)
  %_120 = extractvalue {i64, i1} %_119, 1
  br i1 %_120, label %L25, label %L24
L23:
  store i64 1, i64* %_41
  br label %L1
L24:
  %_121 = extractvalue {i64, i1} %_119, 0
  store i64 %_121, i64* %_29
  %_122 = load i64, i64* %_29
  %_123 = call i8* @_bal_alloc (i64 8)
  %_124 = bitcast i8* %_123 to i64*
  store i64 %_122, i64* %_124, align 8
  %_125 = getelementptr i8, i8* %_123, i64 144115188075855872
  call void @_Bio__println (i8* %_125)
  store i8* null, i8** %_30
  %_126 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 1)
  %_127 = extractvalue {i64, i1} %_126, 1
  br i1 %_127, label %L27, label %L26
L25:
  store i64 1, i64* %_41
  br label %L1
L26:
  %_128 = extractvalue {i64, i1} %_126, 0
  store i64 %_128, i64* %_32
  %_129 = load i64, i64* %_32
  %_130 = call i8* @_bal_alloc (i64 8)
  %_131 = bitcast i8* %_130 to i64*
  store i64 %_129, i64* %_131, align 8
  %_132 = getelementptr i8, i8* %_130, i64 144115188075855872
  call void @_Bio__println (i8* %_132)
  store i8* null, i8** %_33
  %_133 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 0)
  %_134 = extractvalue {i64, i1} %_133, 1
  br i1 %_134, label %L29, label %L28
L27:
  store i64 1, i64* %_41
  br label %L1
L28:
  %_135 = extractvalue {i64, i1} %_133, 0
  store i64 %_135, i64* %_35
  %_136 = load i64, i64* %_35
  %_137 = call i8* @_bal_alloc (i64 8)
  %_138 = bitcast i8* %_137 to i64*
  store i64 %_136, i64* %_138, align 8
  %_139 = getelementptr i8, i8* %_137, i64 144115188075855872
  call void @_Bio__println (i8* %_139)
  store i8* null, i8** %_36
  %_140 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -9223372036854775806, i64 -1)
  %_141 = extractvalue {i64, i1} %_140, 1
  br i1 %_141, label %L31, label %L30
L29:
  store i64 1, i64* %_41
  br label %L1
L30:
  %_142 = extractvalue {i64, i1} %_140, 0
  store i64 %_142, i64* %_39
  %_143 = load i64, i64* %_39
  %_144 = call i8* @_bal_alloc (i64 8)
  %_145 = bitcast i8* %_144 to i64*
  store i64 %_143, i64* %_145, align 8
  %_146 = getelementptr i8, i8* %_144, i64 144115188075855872
  call void @_Bio__println (i8* %_146)
  store i8* null, i8** %_40
  ret void
L31:
  store i64 1, i64* %_41
  br label %L1
}
