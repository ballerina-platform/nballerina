declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
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
  %_148 = load i64, i64* %_35
  call void @_bal_panic (i64 %_148)
  unreachable
L2:
  %_38 = extractvalue {i64, i1} %_36, 0
  store i64 %_38, i64* %_0
  %_39 = load i64, i64* %_0
  call void @_Bio__println (i64 %_39)
  store i8* null, i8** %_1
  %_40 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_41 = extractvalue {i64, i1} %_40, 1
  br i1 %_41, label %L5, label %L4
L3:
  store i64 1, i64* %_35
  br label %L1
L4:
  %_42 = extractvalue {i64, i1} %_40, 0
  store i64 %_42, i64* %_2
  %_43 = load i64, i64* %_2
  %_44 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_43, i64 11)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L7, label %L6
L5:
  store i64 1, i64* %_35
  br label %L1
L6:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_3
  %_47 = load i64, i64* %_3
  call void @_Bio__println (i64 %_47)
  store i8* null, i8** %_4
  %_48 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_49 = extractvalue {i64, i1} %_48, 1
  br i1 %_49, label %L9, label %L8
L7:
  store i64 1, i64* %_35
  br label %L1
L8:
  %_50 = extractvalue {i64, i1} %_48, 0
  store i64 %_50, i64* %_5
  %_51 = load i64, i64* %_5
  %_52 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_51, i64 5)
  %_53 = extractvalue {i64, i1} %_52, 1
  br i1 %_53, label %L11, label %L10
L9:
  store i64 1, i64* %_35
  br label %L1
L10:
  %_54 = extractvalue {i64, i1} %_52, 0
  store i64 %_54, i64* %_6
  %_55 = load i64, i64* %_6
  %_56 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_55, i64 9)
  %_57 = extractvalue {i64, i1} %_56, 1
  br i1 %_57, label %L13, label %L12
L11:
  store i64 1, i64* %_35
  br label %L1
L12:
  %_58 = extractvalue {i64, i1} %_56, 0
  store i64 %_58, i64* %_7
  %_59 = load i64, i64* %_7
  call void @_Bio__println (i64 %_59)
  store i8* null, i8** %_8
  %_60 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_61 = extractvalue {i64, i1} %_60, 1
  br i1 %_61, label %L15, label %L14
L13:
  store i64 1, i64* %_35
  br label %L1
L14:
  %_62 = extractvalue {i64, i1} %_60, 0
  store i64 %_62, i64* %_9
  %_63 = load i64, i64* %_9
  %_64 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_63, i64 5)
  %_65 = extractvalue {i64, i1} %_64, 1
  br i1 %_65, label %L17, label %L16
L15:
  store i64 1, i64* %_35
  br label %L1
L16:
  %_66 = extractvalue {i64, i1} %_64, 0
  store i64 %_66, i64* %_10
  %_67 = load i64, i64* %_10
  %_68 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_67, i64 9)
  %_69 = extractvalue {i64, i1} %_68, 1
  br i1 %_69, label %L19, label %L18
L17:
  store i64 1, i64* %_35
  br label %L1
L18:
  %_70 = extractvalue {i64, i1} %_68, 0
  store i64 %_70, i64* %_11
  %_71 = load i64, i64* %_11
  %_72 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_71, i64 12)
  %_73 = extractvalue {i64, i1} %_72, 1
  br i1 %_73, label %L21, label %L20
L19:
  store i64 1, i64* %_35
  br label %L1
L20:
  %_74 = extractvalue {i64, i1} %_72, 0
  store i64 %_74, i64* %_12
  %_75 = load i64, i64* %_12
  call void @_Bio__println (i64 %_75)
  store i8* null, i8** %_13
  %_76 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_77 = extractvalue {i64, i1} %_76, 1
  br i1 %_77, label %L23, label %L22
L21:
  store i64 1, i64* %_35
  br label %L1
L22:
  %_78 = extractvalue {i64, i1} %_76, 0
  store i64 %_78, i64* %_14
  %_79 = load i64, i64* %_14
  %_80 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_79, i64 5)
  %_81 = extractvalue {i64, i1} %_80, 1
  br i1 %_81, label %L25, label %L24
L23:
  store i64 1, i64* %_35
  br label %L1
L24:
  %_82 = extractvalue {i64, i1} %_80, 0
  store i64 %_82, i64* %_15
  %_83 = load i64, i64* %_15
  %_84 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_83, i64 9)
  %_85 = extractvalue {i64, i1} %_84, 1
  br i1 %_85, label %L27, label %L26
L25:
  store i64 1, i64* %_35
  br label %L1
L26:
  %_86 = extractvalue {i64, i1} %_84, 0
  store i64 %_86, i64* %_16
  %_87 = load i64, i64* %_16
  %_88 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_87, i64 4)
  %_89 = extractvalue {i64, i1} %_88, 1
  br i1 %_89, label %L29, label %L28
L27:
  store i64 1, i64* %_35
  br label %L1
L28:
  %_90 = extractvalue {i64, i1} %_88, 0
  store i64 %_90, i64* %_17
  %_91 = load i64, i64* %_17
  %_92 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_91, i64 7)
  %_93 = extractvalue {i64, i1} %_92, 1
  br i1 %_93, label %L31, label %L30
L29:
  store i64 1, i64* %_35
  br label %L1
L30:
  %_94 = extractvalue {i64, i1} %_92, 0
  store i64 %_94, i64* %_18
  %_95 = load i64, i64* %_18
  call void @_Bio__println (i64 %_95)
  store i8* null, i8** %_19
  %_96 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_97 = extractvalue {i64, i1} %_96, 1
  br i1 %_97, label %L33, label %L32
L31:
  store i64 1, i64* %_35
  br label %L1
L32:
  %_98 = extractvalue {i64, i1} %_96, 0
  store i64 %_98, i64* %_20
  %_99 = load i64, i64* %_20
  %_100 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_99, i64 5)
  %_101 = extractvalue {i64, i1} %_100, 1
  br i1 %_101, label %L35, label %L34
L33:
  store i64 1, i64* %_35
  br label %L1
L34:
  %_102 = extractvalue {i64, i1} %_100, 0
  store i64 %_102, i64* %_21
  %_103 = load i64, i64* %_21
  %_104 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_103, i64 9)
  %_105 = extractvalue {i64, i1} %_104, 1
  br i1 %_105, label %L37, label %L36
L35:
  store i64 1, i64* %_35
  br label %L1
L36:
  %_106 = extractvalue {i64, i1} %_104, 0
  store i64 %_106, i64* %_22
  %_107 = load i64, i64* %_22
  %_108 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_107, i64 4)
  %_109 = extractvalue {i64, i1} %_108, 1
  br i1 %_109, label %L39, label %L38
L37:
  store i64 1, i64* %_35
  br label %L1
L38:
  %_110 = extractvalue {i64, i1} %_108, 0
  store i64 %_110, i64* %_23
  %_111 = load i64, i64* %_23
  %_112 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_111, i64 7)
  %_113 = extractvalue {i64, i1} %_112, 1
  br i1 %_113, label %L41, label %L40
L39:
  store i64 1, i64* %_35
  br label %L1
L40:
  %_114 = extractvalue {i64, i1} %_112, 0
  store i64 %_114, i64* %_24
  %_115 = load i64, i64* %_24
  %_116 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_115, i64 5)
  %_117 = extractvalue {i64, i1} %_116, 1
  br i1 %_117, label %L43, label %L42
L41:
  store i64 1, i64* %_35
  br label %L1
L42:
  %_118 = extractvalue {i64, i1} %_116, 0
  store i64 %_118, i64* %_25
  %_119 = load i64, i64* %_25
  call void @_Bio__println (i64 %_119)
  store i8* null, i8** %_26
  %_120 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 3, i64 5)
  %_121 = extractvalue {i64, i1} %_120, 1
  br i1 %_121, label %L45, label %L44
L43:
  store i64 1, i64* %_35
  br label %L1
L44:
  %_122 = extractvalue {i64, i1} %_120, 0
  store i64 %_122, i64* %_27
  %_123 = load i64, i64* %_27
  %_124 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_123, i64 5)
  %_125 = extractvalue {i64, i1} %_124, 1
  br i1 %_125, label %L47, label %L46
L45:
  store i64 1, i64* %_35
  br label %L1
L46:
  %_126 = extractvalue {i64, i1} %_124, 0
  store i64 %_126, i64* %_28
  %_127 = load i64, i64* %_28
  %_128 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_127, i64 9)
  %_129 = extractvalue {i64, i1} %_128, 1
  br i1 %_129, label %L49, label %L48
L47:
  store i64 1, i64* %_35
  br label %L1
L48:
  %_130 = extractvalue {i64, i1} %_128, 0
  store i64 %_130, i64* %_29
  %_131 = load i64, i64* %_29
  %_132 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_131, i64 4)
  %_133 = extractvalue {i64, i1} %_132, 1
  br i1 %_133, label %L51, label %L50
L49:
  store i64 1, i64* %_35
  br label %L1
L50:
  %_134 = extractvalue {i64, i1} %_132, 0
  store i64 %_134, i64* %_30
  %_135 = load i64, i64* %_30
  %_136 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_135, i64 7)
  %_137 = extractvalue {i64, i1} %_136, 1
  br i1 %_137, label %L53, label %L52
L51:
  store i64 1, i64* %_35
  br label %L1
L52:
  %_138 = extractvalue {i64, i1} %_136, 0
  store i64 %_138, i64* %_31
  %_139 = load i64, i64* %_31
  %_140 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_139, i64 23)
  %_141 = extractvalue {i64, i1} %_140, 1
  br i1 %_141, label %L55, label %L54
L53:
  store i64 1, i64* %_35
  br label %L1
L54:
  %_142 = extractvalue {i64, i1} %_140, 0
  store i64 %_142, i64* %_32
  %_143 = load i64, i64* %_32
  %_144 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_143, i64 50)
  %_145 = extractvalue {i64, i1} %_144, 1
  br i1 %_145, label %L57, label %L56
L55:
  store i64 1, i64* %_35
  br label %L1
L56:
  %_146 = extractvalue {i64, i1} %_144, 0
  store i64 %_146, i64* %_33
  %_147 = load i64, i64* %_33
  call void @_Bio__println (i64 %_147)
  store i8* null, i8** %_34
  ret void
L57:
  store i64 1, i64* %_35
  br label %L1
}
