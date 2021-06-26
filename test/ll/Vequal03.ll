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
  %_27 = alloca i8
  %_28 = load i8*, i8** @_bal_stack_guard
  %_29 = icmp ult i8* %_27, %_28
  br i1 %_29, label %L2, label %L1
L1:
  %_30 = call i8* @_B_mkInt (i64 2)
  store i8* %_30, i8** %_1
  %_31 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_31, i8** %_2
  %_32 = load i8*, i8** %_1
  %_33 = load i8*, i8** %_2
  %_34 = icmp eq i8* %_32, %_33
  br i1 %_34, label %L3, label %L4
L2:
  call void @_bal_panic (i64 4)
  unreachable
L3:
  store i1 1, i1* %_0
  br label %L5
L4:
  %_35 = ptrtoint i8* %_32 to i64
  %_36 = and i64 %_35, 9151314442816847872
  %_37 = icmp eq i64 %_36, 144115188075855872
  %_38 = ptrtoint i8* %_33 to i64
  %_39 = and i64 %_38, 9151314442816847872
  %_40 = icmp eq i64 %_39, 144115188075855872
  %_41 = and i1 %_37, %_40
  br i1 %_41, label %L6, label %L7
L5:
  %_49 = load i1, i1* %_0
  %_50 = zext i1 %_49 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8* null, i64 %_51
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_3
  %_53 = call i8* @_B_mkInt (i64 0)
  store i8* %_53, i8** %_5
  %_54 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_54, i8** %_6
  %_55 = load i8*, i8** %_5
  %_56 = load i8*, i8** %_6
  %_57 = icmp eq i8* %_55, %_56
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
  store i1 0, i1* %_4
  br label %L10
L9:
  %_58 = ptrtoint i8* %_55 to i64
  %_59 = and i64 %_58, 9151314442816847872
  %_60 = icmp eq i64 %_59, 144115188075855872
  %_61 = ptrtoint i8* %_56 to i64
  %_62 = and i64 %_61, 9151314442816847872
  %_63 = icmp eq i64 %_62, 144115188075855872
  %_64 = and i1 %_60, %_63
  br i1 %_64, label %L11, label %L12
L10:
  %_72 = load i1, i1* %_4
  %_73 = zext i1 %_72 to i64
  %_74 = or i64 %_73, 72057594037927936
  %_75 = getelementptr i8, i8* null, i64 %_74
  call void @_Bio__println (i8* %_75)
  store i8* null, i8** %_7
  %_76 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_76, i8** %_9
  %_77 = call i8* @_B_mkInt (i64 1)
  store i8* %_77, i8** %_10
  %_78 = load i8*, i8** %_9
  %_79 = load i8*, i8** %_10
  %_80 = icmp eq i8* %_78, %_79
  br i1 %_80, label %L13, label %L14
L11:
  %_65 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_55, i64 72057594037927935)
  %_66 = bitcast i8* %_65 to i64*
  %_67 = load i64, i64* %_66, align 8
  %_68 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_56, i64 72057594037927935)
  %_69 = bitcast i8* %_68 to i64*
  %_70 = load i64, i64* %_69, align 8
  %_71 = icmp ne i64 %_67, %_70
  store i1 %_71, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
L13:
  store i1 1, i1* %_8
  br label %L15
L14:
  %_81 = ptrtoint i8* %_78 to i64
  %_82 = and i64 %_81, 9151314442816847872
  %_83 = icmp eq i64 %_82, 144115188075855872
  %_84 = ptrtoint i8* %_79 to i64
  %_85 = and i64 %_84, 9151314442816847872
  %_86 = icmp eq i64 %_85, 144115188075855872
  %_87 = and i1 %_83, %_86
  br i1 %_87, label %L16, label %L17
L15:
  %_95 = load i1, i1* %_8
  %_96 = zext i1 %_95 to i64
  %_97 = or i64 %_96, 72057594037927936
  %_98 = getelementptr i8, i8* null, i64 %_97
  call void @_Bio__println (i8* %_98)
  store i8* null, i8** %_11
  %_99 = call i8* @_B_mkInt (i64 0)
  store i8* %_99, i8** %_13
  %_100 = load i8*, i8** %_13
  %_101 = zext i1 0 to i64
  %_102 = or i64 %_101, 72057594037927936
  %_103 = getelementptr i8, i8* null, i64 %_102
  %_104 = icmp ne i8* %_100, %_103
  store i1 %_104, i1* %_12
  %_105 = load i1, i1* %_12
  %_106 = zext i1 %_105 to i64
  %_107 = or i64 %_106, 72057594037927936
  %_108 = getelementptr i8, i8* null, i64 %_107
  call void @_Bio__println (i8* %_108)
  store i8* null, i8** %_14
  %_109 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_109, i8** %_16
  %_110 = load i8*, i8** %_16
  %_111 = ptrtoint i8* %_110 to i64
  %_112 = and i64 %_111, 9151314442816847872
  %_113 = icmp eq i64 %_112, 144115188075855872
  br i1 %_113, label %L18, label %L19
L16:
  %_88 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_78, i64 72057594037927935)
  %_89 = bitcast i8* %_88 to i64*
  %_90 = load i64, i64* %_89, align 8
  %_91 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_79, i64 72057594037927935)
  %_92 = bitcast i8* %_91 to i64*
  %_93 = load i64, i64* %_92, align 8
  %_94 = icmp eq i64 %_90, %_93
  store i1 %_94, i1* %_8
  br label %L15
L17:
  store i1 0, i1* %_8
  br label %L15
L18:
  %_114 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_110, i64 72057594037927935)
  %_115 = bitcast i8* %_114 to i64*
  %_116 = load i64, i64* %_115, align 8
  %_117 = icmp eq i64 %_116, 1
  store i1 %_117, i1* %_15
  br label %L20
L19:
  store i1 0, i1* %_15
  br label %L20
L20:
  %_118 = load i1, i1* %_15
  %_119 = zext i1 %_118 to i64
  %_120 = or i64 %_119, 72057594037927936
  %_121 = getelementptr i8, i8* null, i64 %_120
  call void @_Bio__println (i8* %_121)
  store i8* null, i8** %_17
  %_122 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_122, i8** %_19
  %_123 = load i8*, i8** %_19
  %_124 = ptrtoint i8* %_123 to i64
  %_125 = and i64 %_124, 9151314442816847872
  %_126 = icmp eq i64 %_125, 144115188075855872
  br i1 %_126, label %L21, label %L22
L21:
  %_127 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_123, i64 72057594037927935)
  %_128 = bitcast i8* %_127 to i64*
  %_129 = load i64, i64* %_128, align 8
  %_130 = icmp ne i64 %_129, 0
  store i1 %_130, i1* %_18
  br label %L23
L22:
  store i1 1, i1* %_18
  br label %L23
L23:
  %_131 = load i1, i1* %_18
  %_132 = zext i1 %_131 to i64
  %_133 = or i64 %_132, 72057594037927936
  %_134 = getelementptr i8, i8* null, i64 %_133
  call void @_Bio__println (i8* %_134)
  store i8* null, i8** %_20
  %_135 = call i8* @_B_mkInt (i64 1)
  store i8* %_135, i8** %_22
  %_136 = load i8*, i8** %_22
  %_137 = zext i1 1 to i64
  %_138 = or i64 %_137, 72057594037927936
  %_139 = getelementptr i8, i8* null, i64 %_138
  %_140 = icmp eq i8* %_136, %_139
  store i1 %_140, i1* %_21
  %_141 = load i1, i1* %_21
  %_142 = zext i1 %_141 to i64
  %_143 = or i64 %_142, 72057594037927936
  %_144 = getelementptr i8, i8* null, i64 %_143
  call void @_Bio__println (i8* %_144)
  store i8* null, i8** %_23
  %_145 = call i8* @_B_mkInt (i64 0)
  store i8* %_145, i8** %_25
  %_146 = load i8*, i8** %_25
  %_147 = zext i1 0 to i64
  %_148 = or i64 %_147, 72057594037927936
  %_149 = getelementptr i8, i8* null, i64 %_148
  %_150 = icmp ne i8* %_146, %_149
  store i1 %_150, i1* %_24
  %_151 = load i1, i1* %_24
  %_152 = zext i1 %_151 to i64
  %_153 = or i64 %_152, 72057594037927936
  %_154 = getelementptr i8, i8* null, i64 %_153
  call void @_Bio__println (i8* %_154)
  store i8* null, i8** %_26
  ret void
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
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  ret i8* %_7
L2:
  call void @_bal_panic (i64 4)
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
  call void @_bal_panic (i64 4)
  unreachable
}
