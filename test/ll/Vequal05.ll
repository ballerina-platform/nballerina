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
  %_24 = call i8* @_B_mkInt (i64 2)
  store i8* %_24, i8** %_1
  %_25 = load i8*, i8** %_1
  %_26 = ptrtoint i8* %_25 to i64
  %_27 = and i64 %_26, 9151314442816847872
  %_28 = icmp eq i64 %_27, 144115188075855872
  br i1 %_28, label %L1, label %L2
L1:
  %_29 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_25, i64 72057594037927935)
  %_30 = bitcast i8* %_29 to i64*
  %_31 = load i64, i64* %_30, align 8
  %_32 = icmp eq i64 %_31, 2
  store i1 %_32, i1* %_0
  br label %L3
L2:
  store i1 0, i1* %_0
  br label %L3
L3:
  %_33 = load i1, i1* %_0
  %_34 = zext i1 %_33 to i64
  %_35 = or i64 %_34, 72057594037927936
  %_36 = getelementptr i8, i8* null, i64 %_35
  call void @_Bio__println (i8* %_36)
  store i8* null, i8** %_2
  %_37 = call i8* @_B_mkInt (i64 17)
  store i8* %_37, i8** %_4
  %_38 = load i8*, i8** %_4
  %_39 = ptrtoint i8* %_38 to i64
  %_40 = and i64 %_39, 9151314442816847872
  %_41 = icmp eq i64 %_40, 144115188075855872
  br i1 %_41, label %L4, label %L5
L4:
  %_42 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_38, i64 72057594037927935)
  %_43 = bitcast i8* %_42 to i64*
  %_44 = load i64, i64* %_43, align 8
  %_45 = icmp ne i64 %_44, 17
  store i1 %_45, i1* %_3
  br label %L6
L5:
  store i1 1, i1* %_3
  br label %L6
L6:
  %_46 = load i1, i1* %_3
  %_47 = zext i1 %_46 to i64
  %_48 = or i64 %_47, 72057594037927936
  %_49 = getelementptr i8, i8* null, i64 %_48
  call void @_Bio__println (i8* %_49)
  store i8* null, i8** %_5
  %_50 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_50, i8** %_7
  %_51 = load i8*, i8** %_7
  %_52 = zext i1 1 to i64
  %_53 = or i64 %_52, 72057594037927936
  %_54 = getelementptr i8, i8* null, i64 %_53
  %_55 = icmp eq i8* %_51, %_54
  store i1 %_55, i1* %_6
  %_56 = load i1, i1* %_6
  %_57 = zext i1 %_56 to i64
  %_58 = or i64 %_57, 72057594037927936
  %_59 = getelementptr i8, i8* null, i64 %_58
  call void @_Bio__println (i8* %_59)
  store i8* null, i8** %_8
  %_60 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_60, i8** %_10
  %_61 = load i8*, i8** %_10
  %_62 = zext i1 0 to i64
  %_63 = or i64 %_62, 72057594037927936
  %_64 = getelementptr i8, i8* null, i64 %_63
  %_65 = icmp ne i8* %_61, %_64
  store i1 %_65, i1* %_9
  %_66 = load i1, i1* %_9
  %_67 = zext i1 %_66 to i64
  %_68 = or i64 %_67, 72057594037927936
  %_69 = getelementptr i8, i8* null, i64 %_68
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_11
  store i64 2, i64* %n
  %_70 = call i8* @_B_mkInt (i64 2)
  store i8* %_70, i8** %_13
  %_71 = load i8*, i8** %_13
  %_72 = load i64, i64* %n
  %_73 = ptrtoint i8* %_71 to i64
  %_74 = and i64 %_73, 9151314442816847872
  %_75 = icmp eq i64 %_74, 144115188075855872
  br i1 %_75, label %L7, label %L8
L7:
  %_76 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_71, i64 72057594037927935)
  %_77 = bitcast i8* %_76 to i64*
  %_78 = load i64, i64* %_77, align 8
  %_79 = icmp eq i64 %_78, %_72
  store i1 %_79, i1* %_12
  br label %L9
L8:
  store i1 0, i1* %_12
  br label %L9
L9:
  %_80 = load i1, i1* %_12
  %_81 = zext i1 %_80 to i64
  %_82 = or i64 %_81, 72057594037927936
  %_83 = getelementptr i8, i8* null, i64 %_82
  call void @_Bio__println (i8* %_83)
  store i8* null, i8** %_14
  store i64 17, i64* %n
  %_84 = call i8* @_B_mkInt (i64 17)
  store i8* %_84, i8** %_16
  %_85 = load i64, i64* %n
  %_86 = load i8*, i8** %_16
  %_87 = ptrtoint i8* %_86 to i64
  %_88 = and i64 %_87, 9151314442816847872
  %_89 = icmp eq i64 %_88, 144115188075855872
  br i1 %_89, label %L10, label %L11
L10:
  %_90 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_86, i64 72057594037927935)
  %_91 = bitcast i8* %_90 to i64*
  %_92 = load i64, i64* %_91, align 8
  %_93 = icmp ne i64 %_92, %_85
  store i1 %_93, i1* %_15
  br label %L12
L11:
  store i1 1, i1* %_15
  br label %L12
L12:
  %_94 = load i1, i1* %_15
  %_95 = zext i1 %_94 to i64
  %_96 = or i64 %_95, 72057594037927936
  %_97 = getelementptr i8, i8* null, i64 %_96
  call void @_Bio__println (i8* %_97)
  store i8* null, i8** %_17
  store i1 1, i1* %b
  %_98 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_98, i8** %_19
  %_99 = load i8*, i8** %_19
  %_100 = load i1, i1* %b
  %_101 = zext i1 %_100 to i64
  %_102 = or i64 %_101, 72057594037927936
  %_103 = getelementptr i8, i8* null, i64 %_102
  %_104 = icmp eq i8* %_99, %_103
  store i1 %_104, i1* %_18
  %_105 = load i1, i1* %_18
  %_106 = zext i1 %_105 to i64
  %_107 = or i64 %_106, 72057594037927936
  %_108 = getelementptr i8, i8* null, i64 %_107
  call void @_Bio__println (i8* %_108)
  store i8* null, i8** %_20
  store i1 0, i1* %b
  %_109 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_109, i8** %_22
  %_110 = load i1, i1* %b
  %_111 = load i8*, i8** %_22
  %_112 = zext i1 %_110 to i64
  %_113 = or i64 %_112, 72057594037927936
  %_114 = getelementptr i8, i8* null, i64 %_113
  %_115 = icmp ne i8* %_111, %_114
  store i1 %_115, i1* %_21
  %_116 = load i1, i1* %_21
  %_117 = zext i1 %_116 to i64
  %_118 = or i64 %_117, 72057594037927936
  %_119 = getelementptr i8, i8* null, i64 %_118
  call void @_Bio__println (i8* %_119)
  store i8* null, i8** %_23
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
