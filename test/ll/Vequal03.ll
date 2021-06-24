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
  %_7 = alloca i8*
  %_8 = alloca i1
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = alloca i1
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
  %_27 = call i8* @_B_mkInt (i64 2)
  store i8* %_27, i8** %_1
  %_28 = call i8* @_B_mkBoolean (i1 1)
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
  %_50 = call i8* @_B_mkInt (i64 0)
  store i8* %_50, i8** %_5
  %_51 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_51, i8** %_6
  %_52 = load i8*, i8** %_5
  %_53 = load i8*, i8** %_6
  %_54 = icmp eq i8* %_52, %_53
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
  store i1 0, i1* %_4
  br label %L8
L7:
  %_55 = ptrtoint i8* %_52 to i64
  %_56 = and i64 %_55, 9151314442816847872
  %_57 = icmp eq i64 %_56, 144115188075855872
  %_58 = ptrtoint i8* %_53 to i64
  %_59 = and i64 %_58, 9151314442816847872
  %_60 = icmp eq i64 %_59, 144115188075855872
  %_61 = and i1 %_57, %_60
  br i1 %_61, label %L9, label %L10
L8:
  %_69 = load i1, i1* %_4
  %_70 = zext i1 %_69 to i64
  %_71 = or i64 %_70, 72057594037927936
  %_72 = getelementptr i8, i8* null, i64 %_71
  call void @_Bio__println (i8* %_72)
  store i8* null, i8** %_7
  %_73 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_73, i8** %_9
  %_74 = call i8* @_B_mkInt (i64 1)
  store i8* %_74, i8** %_10
  %_75 = load i8*, i8** %_9
  %_76 = load i8*, i8** %_10
  %_77 = icmp eq i8* %_75, %_76
  br i1 %_77, label %L11, label %L12
L9:
  %_62 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_52, i64 72057594037927935)
  %_63 = bitcast i8* %_62 to i64*
  %_64 = load i64, i64* %_63, align 8
  %_65 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_53, i64 72057594037927935)
  %_66 = bitcast i8* %_65 to i64*
  %_67 = load i64, i64* %_66, align 8
  %_68 = icmp ne i64 %_64, %_67
  store i1 %_68, i1* %_4
  br label %L8
L10:
  store i1 1, i1* %_4
  br label %L8
L11:
  store i1 1, i1* %_8
  br label %L13
L12:
  %_78 = ptrtoint i8* %_75 to i64
  %_79 = and i64 %_78, 9151314442816847872
  %_80 = icmp eq i64 %_79, 144115188075855872
  %_81 = ptrtoint i8* %_76 to i64
  %_82 = and i64 %_81, 9151314442816847872
  %_83 = icmp eq i64 %_82, 144115188075855872
  %_84 = and i1 %_80, %_83
  br i1 %_84, label %L14, label %L15
L13:
  %_92 = load i1, i1* %_8
  %_93 = zext i1 %_92 to i64
  %_94 = or i64 %_93, 72057594037927936
  %_95 = getelementptr i8, i8* null, i64 %_94
  call void @_Bio__println (i8* %_95)
  store i8* null, i8** %_11
  %_96 = call i8* @_B_mkInt (i64 0)
  store i8* %_96, i8** %_13
  %_97 = load i8*, i8** %_13
  %_98 = zext i1 0 to i64
  %_99 = or i64 %_98, 72057594037927936
  %_100 = getelementptr i8, i8* null, i64 %_99
  %_101 = icmp ne i8* %_97, %_100
  store i1 %_101, i1* %_12
  %_102 = load i1, i1* %_12
  %_103 = zext i1 %_102 to i64
  %_104 = or i64 %_103, 72057594037927936
  %_105 = getelementptr i8, i8* null, i64 %_104
  call void @_Bio__println (i8* %_105)
  store i8* null, i8** %_14
  %_106 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_106, i8** %_16
  %_107 = load i8*, i8** %_16
  %_108 = ptrtoint i8* %_107 to i64
  %_109 = and i64 %_108, 9151314442816847872
  %_110 = icmp eq i64 %_109, 144115188075855872
  br i1 %_110, label %L16, label %L17
L14:
  %_85 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_75, i64 72057594037927935)
  %_86 = bitcast i8* %_85 to i64*
  %_87 = load i64, i64* %_86, align 8
  %_88 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_76, i64 72057594037927935)
  %_89 = bitcast i8* %_88 to i64*
  %_90 = load i64, i64* %_89, align 8
  %_91 = icmp eq i64 %_87, %_90
  store i1 %_91, i1* %_8
  br label %L13
L15:
  store i1 0, i1* %_8
  br label %L13
L16:
  %_111 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_107, i64 72057594037927935)
  %_112 = bitcast i8* %_111 to i64*
  %_113 = load i64, i64* %_112, align 8
  %_114 = icmp eq i64 %_113, 1
  store i1 %_114, i1* %_15
  br label %L18
L17:
  store i1 0, i1* %_15
  br label %L18
L18:
  %_115 = load i1, i1* %_15
  %_116 = zext i1 %_115 to i64
  %_117 = or i64 %_116, 72057594037927936
  %_118 = getelementptr i8, i8* null, i64 %_117
  call void @_Bio__println (i8* %_118)
  store i8* null, i8** %_17
  %_119 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_119, i8** %_19
  %_120 = load i8*, i8** %_19
  %_121 = ptrtoint i8* %_120 to i64
  %_122 = and i64 %_121, 9151314442816847872
  %_123 = icmp eq i64 %_122, 144115188075855872
  br i1 %_123, label %L19, label %L20
L19:
  %_124 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_120, i64 72057594037927935)
  %_125 = bitcast i8* %_124 to i64*
  %_126 = load i64, i64* %_125, align 8
  %_127 = icmp ne i64 %_126, 0
  store i1 %_127, i1* %_18
  br label %L21
L20:
  store i1 1, i1* %_18
  br label %L21
L21:
  %_128 = load i1, i1* %_18
  %_129 = zext i1 %_128 to i64
  %_130 = or i64 %_129, 72057594037927936
  %_131 = getelementptr i8, i8* null, i64 %_130
  call void @_Bio__println (i8* %_131)
  store i8* null, i8** %_20
  %_132 = call i8* @_B_mkInt (i64 1)
  store i8* %_132, i8** %_22
  %_133 = load i8*, i8** %_22
  %_134 = zext i1 1 to i64
  %_135 = or i64 %_134, 72057594037927936
  %_136 = getelementptr i8, i8* null, i64 %_135
  %_137 = icmp eq i8* %_133, %_136
  store i1 %_137, i1* %_21
  %_138 = load i1, i1* %_21
  %_139 = zext i1 %_138 to i64
  %_140 = or i64 %_139, 72057594037927936
  %_141 = getelementptr i8, i8* null, i64 %_140
  call void @_Bio__println (i8* %_141)
  store i8* null, i8** %_23
  %_142 = call i8* @_B_mkInt (i64 0)
  store i8* %_142, i8** %_25
  %_143 = load i8*, i8** %_25
  %_144 = zext i1 0 to i64
  %_145 = or i64 %_144, 72057594037927936
  %_146 = getelementptr i8, i8* null, i64 %_145
  %_147 = icmp ne i8* %_143, %_146
  store i1 %_147, i1* %_24
  %_148 = load i1, i1* %_24
  %_149 = zext i1 %_148 to i64
  %_150 = or i64 %_149, 72057594037927936
  %_151 = getelementptr i8, i8* null, i64 %_150
  call void @_Bio__println (i8* %_151)
  store i8* null, i8** %_26
  ret void
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
