@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i8*
  %n = alloca i64
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i8*
  %_15 = alloca i1
  %_16 = alloca i8*
  %_17 = alloca i8*
  %b = alloca i1
  %_18 = alloca i1
  %_19 = alloca i8*
  %_20 = alloca i8*
  %_21 = alloca i1
  %_22 = alloca i8*
  %_23 = alloca i8*
  %_24 = alloca i8
  %_25 = load i8*, i8** @_bal_stack_guard
  %_26 = icmp ult i8* %_24, %_25
  br i1 %_26, label %L2, label %L1
L1:
  %_27 = call i8* @_B_mkInt (i64 2)
  store i8* %_27, i8** %_1
  %_28 = load i8*, i8** %_1
  %_29 = ptrtoint i8* %_28 to i64
  %_30 = and i64 %_29, 9151314442816847872
  %_31 = icmp eq i64 %_30, 144115188075855872
  br i1 %_31, label %L3, label %L4
L2:
  call void @_bal_panic (i64 4)
  unreachable
L3:
  %_32 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_28, i64 72057594037927935)
  %_33 = bitcast i8* %_32 to i64*
  %_34 = load i64, i64* %_33, align 8
  %_35 = icmp eq i64 %_34, 2
  store i1 %_35, i1* %_0
  br label %L5
L4:
  store i1 0, i1* %_0
  br label %L5
L5:
  %_36 = load i1, i1* %_0
  %_37 = zext i1 %_36 to i64
  %_38 = or i64 %_37, 72057594037927936
  %_39 = getelementptr i8, i8* null, i64 %_38
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_2
  %_40 = call i8* @_B_mkInt (i64 17)
  store i8* %_40, i8** %_4
  %_41 = load i8*, i8** %_4
  %_42 = ptrtoint i8* %_41 to i64
  %_43 = and i64 %_42, 9151314442816847872
  %_44 = icmp eq i64 %_43, 144115188075855872
  br i1 %_44, label %L6, label %L7
L6:
  %_45 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_41, i64 72057594037927935)
  %_46 = bitcast i8* %_45 to i64*
  %_47 = load i64, i64* %_46, align 8
  %_48 = icmp ne i64 %_47, 17
  store i1 %_48, i1* %_3
  br label %L8
L7:
  store i1 1, i1* %_3
  br label %L8
L8:
  %_49 = load i1, i1* %_3
  %_50 = zext i1 %_49 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8* null, i64 %_51
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_5
  %_53 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_53, i8** %_7
  %_54 = load i8*, i8** %_7
  %_55 = zext i1 1 to i64
  %_56 = or i64 %_55, 72057594037927936
  %_57 = getelementptr i8, i8* null, i64 %_56
  %_58 = icmp eq i8* %_54, %_57
  store i1 %_58, i1* %_6
  %_59 = load i1, i1* %_6
  %_60 = zext i1 %_59 to i64
  %_61 = or i64 %_60, 72057594037927936
  %_62 = getelementptr i8, i8* null, i64 %_61
  call void @_Bio__println (i8* %_62)
  store i8* null, i8** %_8
  %_63 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_63, i8** %_10
  %_64 = load i8*, i8** %_10
  %_65 = zext i1 0 to i64
  %_66 = or i64 %_65, 72057594037927936
  %_67 = getelementptr i8, i8* null, i64 %_66
  %_68 = icmp ne i8* %_64, %_67
  store i1 %_68, i1* %_9
  %_69 = load i1, i1* %_9
  %_70 = zext i1 %_69 to i64
  %_71 = or i64 %_70, 72057594037927936
  %_72 = getelementptr i8, i8* null, i64 %_71
  call void @_Bio__println (i8* %_72)
  store i8* null, i8** %_11
  store i64 2, i64* %n
  %_73 = call i8* @_B_mkInt (i64 2)
  store i8* %_73, i8** %_13
  %_74 = load i8*, i8** %_13
  %_75 = load i64, i64* %n
  %_76 = ptrtoint i8* %_74 to i64
  %_77 = and i64 %_76, 9151314442816847872
  %_78 = icmp eq i64 %_77, 144115188075855872
  br i1 %_78, label %L9, label %L10
L9:
  %_79 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_74, i64 72057594037927935)
  %_80 = bitcast i8* %_79 to i64*
  %_81 = load i64, i64* %_80, align 8
  %_82 = icmp eq i64 %_81, %_75
  store i1 %_82, i1* %_12
  br label %L11
L10:
  store i1 0, i1* %_12
  br label %L11
L11:
  %_83 = load i1, i1* %_12
  %_84 = zext i1 %_83 to i64
  %_85 = or i64 %_84, 72057594037927936
  %_86 = getelementptr i8, i8* null, i64 %_85
  call void @_Bio__println (i8* %_86)
  store i8* null, i8** %_14
  store i64 17, i64* %n
  %_87 = call i8* @_B_mkInt (i64 17)
  store i8* %_87, i8** %_16
  %_88 = load i64, i64* %n
  %_89 = load i8*, i8** %_16
  %_90 = ptrtoint i8* %_89 to i64
  %_91 = and i64 %_90, 9151314442816847872
  %_92 = icmp eq i64 %_91, 144115188075855872
  br i1 %_92, label %L12, label %L13
L12:
  %_93 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_89, i64 72057594037927935)
  %_94 = bitcast i8* %_93 to i64*
  %_95 = load i64, i64* %_94, align 8
  %_96 = icmp ne i64 %_95, %_88
  store i1 %_96, i1* %_15
  br label %L14
L13:
  store i1 1, i1* %_15
  br label %L14
L14:
  %_97 = load i1, i1* %_15
  %_98 = zext i1 %_97 to i64
  %_99 = or i64 %_98, 72057594037927936
  %_100 = getelementptr i8, i8* null, i64 %_99
  call void @_Bio__println (i8* %_100)
  store i8* null, i8** %_17
  store i1 1, i1* %b
  %_101 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_101, i8** %_19
  %_102 = load i8*, i8** %_19
  %_103 = load i1, i1* %b
  %_104 = zext i1 %_103 to i64
  %_105 = or i64 %_104, 72057594037927936
  %_106 = getelementptr i8, i8* null, i64 %_105
  %_107 = icmp eq i8* %_102, %_106
  store i1 %_107, i1* %_18
  %_108 = load i1, i1* %_18
  %_109 = zext i1 %_108 to i64
  %_110 = or i64 %_109, 72057594037927936
  %_111 = getelementptr i8, i8* null, i64 %_110
  call void @_Bio__println (i8* %_111)
  store i8* null, i8** %_20
  store i1 0, i1* %b
  %_112 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_112, i8** %_22
  %_113 = load i1, i1* %b
  %_114 = load i8*, i8** %_22
  %_115 = zext i1 %_113 to i64
  %_116 = or i64 %_115, 72057594037927936
  %_117 = getelementptr i8, i8* null, i64 %_116
  %_118 = icmp ne i8* %_114, %_117
  store i1 %_118, i1* %_21
  %_119 = load i1, i1* %_21
  %_120 = zext i1 %_119 to i64
  %_121 = or i64 %_120, 72057594037927936
  %_122 = getelementptr i8, i8* null, i64 %_121
  call void @_Bio__println (i8* %_122)
  store i8* null, i8** %_23
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
