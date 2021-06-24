declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i8*
  %_7 = alloca i1
  %_8 = alloca i8*
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i1
  %_12 = alloca i8*
  %_13 = alloca i8*
  %_14 = alloca i8*
  %_15 = alloca i1
  %_16 = alloca i8*
  %_17 = alloca i8*
  %_18 = alloca i1
  %_19 = alloca i8*
  %_20 = alloca i8*
  %_21 = alloca i1
  %_22 = alloca i8*
  %_23 = alloca i8*
  %_24 = alloca i1
  %_25 = alloca i8*
  %_26 = alloca i8*
  %_27 = call i8* @_B_mkInt (i64 0)
  store i8* %_27, i8** %_1
  %_28 = call i8* @_B_mkNil ()
  store i8* %_28, i8** %_2
  %_29 = load i8*, i8** %_1
  %_30 = load i8*, i8** %_2
  %_31 = icmp eq i8* %_29, %_30
  br i1 %_31, label %L1, label %L2
L1:
  store i1 1, i1* %_0
  br label %L3
L2:
  %_32 = ptrtoint i8* %_29 to i64
  %_33 = and i64 %_32, 9151314442816847872
  %_34 = icmp eq i64 %_33, 144115188075855872
  %_35 = ptrtoint i8* %_30 to i64
  %_36 = and i64 %_35, 9151314442816847872
  %_37 = icmp eq i64 %_36, 144115188075855872
  %_38 = and i1 %_34, %_37
  br i1 %_38, label %L4, label %L5
L3:
  %_46 = load i1, i1* %_0
  %_47 = zext i1 %_46 to i64
  %_48 = or i64 %_47, 72057594037927936
  %_49 = getelementptr i8, i8* null, i64 %_48
  call void @_Bio__println (i8* %_49)
  store i8* null, i8** %_3
  %_50 = call i8* @_B_mkNil ()
  store i8* %_50, i8** %_5
  %_51 = load i8*, i8** %_5
  %_52 = ptrtoint i8* %_51 to i64
  %_53 = and i64 %_52, 9151314442816847872
  %_54 = icmp eq i64 %_53, 144115188075855872
  br i1 %_54, label %L6, label %L7
L4:
  %_39 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_29, i64 72057594037927935)
  %_40 = bitcast i8* %_39 to i64*
  %_41 = load i64, i64* %_40, align 8
  %_42 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_30, i64 72057594037927935)
  %_43 = bitcast i8* %_42 to i64*
  %_44 = load i64, i64* %_43, align 8
  %_45 = icmp eq i64 %_41, %_44
  store i1 %_45, i1* %_0
  br label %L3
L5:
  store i1 0, i1* %_0
  br label %L3
L6:
  %_55 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_51, i64 72057594037927935)
  %_56 = bitcast i8* %_55 to i64*
  %_57 = load i64, i64* %_56, align 8
  %_58 = icmp ne i64 %_57, 0
  store i1 %_58, i1* %_4
  br label %L8
L7:
  store i1 1, i1* %_4
  br label %L8
L8:
  %_59 = load i1, i1* %_4
  %_60 = zext i1 %_59 to i64
  %_61 = or i64 %_60, 72057594037927936
  %_62 = getelementptr i8, i8* null, i64 %_61
  call void @_Bio__println (i8* %_62)
  store i8* null, i8** %_6
  %_63 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_63, i8** %_8
  %_64 = call i8* @_B_mkNil ()
  store i8* %_64, i8** %_9
  %_65 = load i8*, i8** %_8
  %_66 = load i8*, i8** %_9
  %_67 = icmp eq i8* %_65, %_66
  br i1 %_67, label %L9, label %L10
L9:
  store i1 1, i1* %_7
  br label %L11
L10:
  %_68 = ptrtoint i8* %_65 to i64
  %_69 = and i64 %_68, 9151314442816847872
  %_70 = icmp eq i64 %_69, 144115188075855872
  %_71 = ptrtoint i8* %_66 to i64
  %_72 = and i64 %_71, 9151314442816847872
  %_73 = icmp eq i64 %_72, 144115188075855872
  %_74 = and i1 %_70, %_73
  br i1 %_74, label %L12, label %L13
L11:
  %_82 = load i1, i1* %_7
  %_83 = zext i1 %_82 to i64
  %_84 = or i64 %_83, 72057594037927936
  %_85 = getelementptr i8, i8* null, i64 %_84
  call void @_Bio__println (i8* %_85)
  store i8* null, i8** %_10
  %_86 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_86, i8** %_12
  %_87 = call i8* @_B_mkNil ()
  store i8* %_87, i8** %_13
  %_88 = load i8*, i8** %_12
  %_89 = load i8*, i8** %_13
  %_90 = icmp eq i8* %_88, %_89
  br i1 %_90, label %L14, label %L15
L12:
  %_75 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_65, i64 72057594037927935)
  %_76 = bitcast i8* %_75 to i64*
  %_77 = load i64, i64* %_76, align 8
  %_78 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_66, i64 72057594037927935)
  %_79 = bitcast i8* %_78 to i64*
  %_80 = load i64, i64* %_79, align 8
  %_81 = icmp eq i64 %_77, %_80
  store i1 %_81, i1* %_7
  br label %L11
L13:
  store i1 0, i1* %_7
  br label %L11
L14:
  store i1 0, i1* %_11
  br label %L16
L15:
  %_91 = ptrtoint i8* %_88 to i64
  %_92 = and i64 %_91, 9151314442816847872
  %_93 = icmp eq i64 %_92, 144115188075855872
  %_94 = ptrtoint i8* %_89 to i64
  %_95 = and i64 %_94, 9151314442816847872
  %_96 = icmp eq i64 %_95, 144115188075855872
  %_97 = and i1 %_93, %_96
  br i1 %_97, label %L17, label %L18
L16:
  %_105 = load i1, i1* %_11
  %_106 = zext i1 %_105 to i64
  %_107 = or i64 %_106, 72057594037927936
  %_108 = getelementptr i8, i8* null, i64 %_107
  call void @_Bio__println (i8* %_108)
  store i8* null, i8** %_14
  %_109 = call i8* @_B_mkNil ()
  store i8* %_109, i8** %_16
  %_110 = load i8*, i8** %_16
  %_111 = zext i1 0 to i64
  %_112 = or i64 %_111, 72057594037927936
  %_113 = getelementptr i8, i8* null, i64 %_112
  %_114 = icmp ne i8* %_110, %_113
  store i1 %_114, i1* %_15
  %_115 = load i1, i1* %_15
  %_116 = zext i1 %_115 to i64
  %_117 = or i64 %_116, 72057594037927936
  %_118 = getelementptr i8, i8* null, i64 %_117
  call void @_Bio__println (i8* %_118)
  store i8* null, i8** %_17
  %_119 = call i8* @_B_mkNil ()
  store i8* %_119, i8** %_19
  %_120 = load i8*, i8** %_19
  %_121 = zext i1 1 to i64
  %_122 = or i64 %_121, 72057594037927936
  %_123 = getelementptr i8, i8* null, i64 %_122
  %_124 = icmp ne i8* %_120, %_123
  store i1 %_124, i1* %_18
  %_125 = load i1, i1* %_18
  %_126 = zext i1 %_125 to i64
  %_127 = or i64 %_126, 72057594037927936
  %_128 = getelementptr i8, i8* null, i64 %_127
  call void @_Bio__println (i8* %_128)
  store i8* null, i8** %_20
  %_129 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_129, i8** %_22
  %_130 = load i8*, i8** %_22
  %_131 = zext i1 1 to i64
  %_132 = or i64 %_131, 72057594037927936
  %_133 = getelementptr i8, i8* null, i64 %_132
  %_134 = icmp eq i8* %_130, %_133
  store i1 %_134, i1* %_21
  %_135 = load i1, i1* %_21
  %_136 = zext i1 %_135 to i64
  %_137 = or i64 %_136, 72057594037927936
  %_138 = getelementptr i8, i8* null, i64 %_137
  call void @_Bio__println (i8* %_138)
  store i8* null, i8** %_23
  %_139 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_139, i8** %_25
  %_140 = load i8*, i8** %_25
  %_141 = zext i1 0 to i64
  %_142 = or i64 %_141, 72057594037927936
  %_143 = getelementptr i8, i8* null, i64 %_142
  %_144 = icmp ne i8* %_140, %_143
  store i1 %_144, i1* %_24
  %_145 = load i1, i1* %_24
  %_146 = zext i1 %_145 to i64
  %_147 = or i64 %_146, 72057594037927936
  %_148 = getelementptr i8, i8* null, i64 %_147
  call void @_Bio__println (i8* %_148)
  store i8* null, i8** %_26
  ret void
L17:
  %_98 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_88, i64 72057594037927935)
  %_99 = bitcast i8* %_98 to i64*
  %_100 = load i64, i64* %_99, align 8
  %_101 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_89, i64 72057594037927935)
  %_102 = bitcast i8* %_101 to i64*
  %_103 = load i64, i64* %_102, align 8
  %_104 = icmp ne i64 %_100, %_103
  store i1 %_104, i1* %_11
  br label %L16
L18:
  store i1 1, i1* %_11
  br label %L16
}
define internal i8* @_B_mkNil () {
  ret i8* null
}
define internal i8* @_B_mkInt (i64 %_0) {
  %n = alloca i64
  store i64 %_0, i64* %n
  %_1 = load i64, i64* %n
  %_2 = call i8* @_bal_alloc (i64 8)
  %_3 = bitcast i8* %_2 to i64*
  store i64 %_1, i64* %_3, align 8
  %_4 = getelementptr i8, i8* %_2, i64 144115188075855872
  ret i8* %_4
}
define internal i8* @_B_mkBoolean (i1 %_0) {
  %b = alloca i1
  store i1 %_0, i1* %b
  %_1 = load i1, i1* %b
  %_2 = zext i1 %_1 to i64
  %_3 = or i64 %_2, 72057594037927936
  %_4 = getelementptr i8, i8* null, i64 %_3
  ret i8* %_4
}
