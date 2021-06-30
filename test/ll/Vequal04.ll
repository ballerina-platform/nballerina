@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
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
  %_27 = alloca i8
  %_28 = load i8*, i8** @_bal_stack_guard
  %_29 = icmp ult i8* %_27, %_28
  br i1 %_29, label %L2, label %L1
L1:
  %_30 = call i8* @_B_mkInt (i64 0)
  store i8* %_30, i8** %_1
  %_31 = call i8* @_B_mkNil ()
  store i8* %_31, i8** %_2
  %_32 = load i8*, i8** %_1
  %_33 = load i8*, i8** %_2
  %_34 = icmp eq i8* %_32, %_33
  br i1 %_34, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_0
  br label %L5
L4:
  %_35 = ptrtoint i8* %_32 to i64
  %_36 = and i64 %_35, 9151314442816847872
  %_37 = icmp eq i64 %_36, 504403158265495552
  %_38 = ptrtoint i8* %_33 to i64
  %_39 = and i64 %_38, 9151314442816847872
  %_40 = icmp eq i64 %_39, 504403158265495552
  %_41 = and i1 %_37, %_40
  br i1 %_41, label %L6, label %L7
L5:
  %_49 = load i1, i1* %_0
  %_50 = zext i1 %_49 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8* null, i64 %_51
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_3
  %_53 = call i8* @_B_mkNil ()
  store i8* %_53, i8** %_5
  %_54 = load i8*, i8** %_5
  %_55 = ptrtoint i8* %_54 to i64
  %_56 = and i64 %_55, 9151314442816847872
  %_57 = icmp eq i64 %_56, 504403158265495552
  br i1 %_57, label %L8, label %L9
L6:
  %_42 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_32, i64 72057594037927935)
  %_43 = bitcast i8* %_42 to i64*
  %_44 = load i64, i64* %_43, align 8
  %_45 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_33, i64 72057594037927935)
  %_46 = bitcast i8* %_45 to i64*
  %_47 = load i64, i64* %_46, align 8
  %_48 = icmp eq i64 %_44, %_47
  store i1 %_48, i1* %_0
  br label %L5
L7:
  store i1 0, i1* %_0
  br label %L5
L8:
  %_58 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_54, i64 72057594037927935)
  %_59 = bitcast i8* %_58 to i64*
  %_60 = load i64, i64* %_59, align 8
  %_61 = icmp ne i64 %_60, 0
  store i1 %_61, i1* %_4
  br label %L10
L9:
  store i1 1, i1* %_4
  br label %L10
L10:
  %_62 = load i1, i1* %_4
  %_63 = zext i1 %_62 to i64
  %_64 = or i64 %_63, 72057594037927936
  %_65 = getelementptr i8, i8* null, i64 %_64
  call void @_Bio__println (i8* %_65)
  store i8* null, i8** %_6
  %_66 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_66, i8** %_8
  %_67 = call i8* @_B_mkNil ()
  store i8* %_67, i8** %_9
  %_68 = load i8*, i8** %_8
  %_69 = load i8*, i8** %_9
  %_70 = icmp eq i8* %_68, %_69
  br i1 %_70, label %L11, label %L12
L11:
  store i1 1, i1* %_7
  br label %L13
L12:
  %_71 = ptrtoint i8* %_68 to i64
  %_72 = and i64 %_71, 9151314442816847872
  %_73 = icmp eq i64 %_72, 504403158265495552
  %_74 = ptrtoint i8* %_69 to i64
  %_75 = and i64 %_74, 9151314442816847872
  %_76 = icmp eq i64 %_75, 504403158265495552
  %_77 = and i1 %_73, %_76
  br i1 %_77, label %L14, label %L15
L13:
  %_85 = load i1, i1* %_7
  %_86 = zext i1 %_85 to i64
  %_87 = or i64 %_86, 72057594037927936
  %_88 = getelementptr i8, i8* null, i64 %_87
  call void @_Bio__println (i8* %_88)
  store i8* null, i8** %_10
  %_89 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_89, i8** %_12
  %_90 = call i8* @_B_mkNil ()
  store i8* %_90, i8** %_13
  %_91 = load i8*, i8** %_12
  %_92 = load i8*, i8** %_13
  %_93 = icmp eq i8* %_91, %_92
  br i1 %_93, label %L16, label %L17
L14:
  %_78 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_68, i64 72057594037927935)
  %_79 = bitcast i8* %_78 to i64*
  %_80 = load i64, i64* %_79, align 8
  %_81 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_69, i64 72057594037927935)
  %_82 = bitcast i8* %_81 to i64*
  %_83 = load i64, i64* %_82, align 8
  %_84 = icmp eq i64 %_80, %_83
  store i1 %_84, i1* %_7
  br label %L13
L15:
  store i1 0, i1* %_7
  br label %L13
L16:
  store i1 0, i1* %_11
  br label %L18
L17:
  %_94 = ptrtoint i8* %_91 to i64
  %_95 = and i64 %_94, 9151314442816847872
  %_96 = icmp eq i64 %_95, 504403158265495552
  %_97 = ptrtoint i8* %_92 to i64
  %_98 = and i64 %_97, 9151314442816847872
  %_99 = icmp eq i64 %_98, 504403158265495552
  %_100 = and i1 %_96, %_99
  br i1 %_100, label %L19, label %L20
L18:
  %_108 = load i1, i1* %_11
  %_109 = zext i1 %_108 to i64
  %_110 = or i64 %_109, 72057594037927936
  %_111 = getelementptr i8, i8* null, i64 %_110
  call void @_Bio__println (i8* %_111)
  store i8* null, i8** %_14
  %_112 = call i8* @_B_mkNil ()
  store i8* %_112, i8** %_16
  %_113 = load i8*, i8** %_16
  %_114 = zext i1 0 to i64
  %_115 = or i64 %_114, 72057594037927936
  %_116 = getelementptr i8, i8* null, i64 %_115
  %_117 = icmp ne i8* %_113, %_116
  store i1 %_117, i1* %_15
  %_118 = load i1, i1* %_15
  %_119 = zext i1 %_118 to i64
  %_120 = or i64 %_119, 72057594037927936
  %_121 = getelementptr i8, i8* null, i64 %_120
  call void @_Bio__println (i8* %_121)
  store i8* null, i8** %_17
  %_122 = call i8* @_B_mkNil ()
  store i8* %_122, i8** %_19
  %_123 = load i8*, i8** %_19
  %_124 = zext i1 1 to i64
  %_125 = or i64 %_124, 72057594037927936
  %_126 = getelementptr i8, i8* null, i64 %_125
  %_127 = icmp ne i8* %_123, %_126
  store i1 %_127, i1* %_18
  %_128 = load i1, i1* %_18
  %_129 = zext i1 %_128 to i64
  %_130 = or i64 %_129, 72057594037927936
  %_131 = getelementptr i8, i8* null, i64 %_130
  call void @_Bio__println (i8* %_131)
  store i8* null, i8** %_20
  %_132 = call i8* @_B_mkBoolean (i1 1)
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
  %_142 = call i8* @_B_mkBoolean (i1 0)
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
L19:
  %_101 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_91, i64 72057594037927935)
  %_102 = bitcast i8* %_101 to i64*
  %_103 = load i64, i64* %_102, align 8
  %_104 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_92, i64 72057594037927935)
  %_105 = bitcast i8* %_104 to i64*
  %_106 = load i64, i64* %_105, align 8
  %_107 = icmp ne i64 %_103, %_106
  store i1 %_107, i1* %_11
  br label %L18
L20:
  store i1 1, i1* %_11
  br label %L18
}
define internal i8* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8* null
L2:
  call void @_bal_panic (i64 3588)
  unreachable
}
define internal i8* @_B_mkInt (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 504403158265495552
  ret i8* %_7
L2:
  call void @_bal_panic (i64 4612)
  unreachable
}
define internal i8* @_B_mkBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i1 %_0, i1* %b
  %_4 = load i1, i1* %b
  %_5 = zext i1 %_4 to i64
  %_6 = or i64 %_5, 72057594037927936
  %_7 = getelementptr i8, i8* null, i64 %_6
  ret i8* %_7
L2:
  call void @_bal_panic (i64 5636)
  unreachable
}
