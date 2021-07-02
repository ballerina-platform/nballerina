@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i8*
  %x = alloca i8*
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i1
  %_6 = alloca i8*
  %_7 = alloca i8*
  %_8 = alloca i1
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i1
  %_12 = alloca i8*
  %_13 = alloca i1
  %_14 = alloca i8*
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L2, label %L1
L1:
  %_18 = call i8* @_bal_alloc (i64 8)
  %_19 = bitcast i8* %_18 to [1 x i8*]*
  %_20 = zext i1 1 to i64
  %_21 = or i64 %_20, 72057594037927936
  %_22 = getelementptr i8, i8* null, i64 %_21
  %_23 = getelementptr inbounds [1 x i8*], [1 x i8*]* %_19, i64 0, i64 0
  store i8* %_22, i8** %_23
  %_24 = bitcast [1 x i8*]* %_19 to [0 x i8*]*
  %_25 = call i8* @_bal_alloc (i64 24)
  %_26 = bitcast i8* %_25 to {i64, i64, [0 x i8*]*}*
  %_27 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_26, i64 0, i32 0
  store i64 1, i64* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_26, i64 0, i32 1
  store i64 1, i64* %_28
  %_29 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_26, i64 0, i32 2
  store [0 x i8*]* %_24, [0 x i8*]** %_29
  %_30 = getelementptr i8, i8* %_25, i64 1297036692682702848
  store i8* %_30, i8** %_0
  %_31 = load i8*, i8** %_0
  store i8* %_31, i8** %x
  %_32 = load i8*, i8** %x
  %_33 = ptrtoint i8* %_32 to i64
  %_34 = and i64 %_33, 9151314442816847872
  %_35 = icmp eq i64 %_34, 504403158265495552
  br i1 %_35, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_36 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_32, i64 72057594037927935)
  %_37 = bitcast i8* %_36 to i64*
  %_38 = load i64, i64* %_37, align 8
  %_39 = icmp eq i64 %_38, 1
  store i1 %_39, i1* %_1
  br label %L5
L4:
  store i1 0, i1* %_1
  br label %L5
L5:
  %_40 = load i1, i1* %_1
  %_41 = zext i1 %_40 to i64
  %_42 = or i64 %_41, 72057594037927936
  %_43 = getelementptr i8, i8* null, i64 %_42
  call void @_Bio__println (i8* %_43)
  store i8* null, i8** %_2
  %_44 = load i8*, i8** %x
  %_45 = zext i1 1 to i64
  %_46 = or i64 %_45, 72057594037927936
  %_47 = getelementptr i8, i8* null, i64 %_46
  %_48 = icmp eq i8* %_44, %_47
  store i1 %_48, i1* %_3
  %_49 = load i1, i1* %_3
  %_50 = zext i1 %_49 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8* null, i64 %_51
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_4
  %_53 = load i8*, i8** %x
  %_54 = icmp eq i8* %_53, null
  store i1 %_54, i1* %_5
  %_55 = load i1, i1* %_5
  %_56 = zext i1 %_55 to i64
  %_57 = or i64 %_56, 72057594037927936
  %_58 = getelementptr i8, i8* null, i64 %_57
  call void @_Bio__println (i8* %_58)
  store i8* null, i8** %_6
  %_59 = call i8* @_bal_alloc (i64 24)
  %_60 = bitcast i8* %_59 to {i64, i64, [0 x i8*]*}*
  %_61 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_60, i64 0, i32 0
  store i64 0, i64* %_61
  %_62 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_60, i64 0, i32 1
  store i64 0, i64* %_62
  %_63 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_60, i64 0, i32 2
  store [0 x i8*]* null, [0 x i8*]** %_63
  %_64 = getelementptr i8, i8* %_59, i64 1297036692682702848
  store i8* %_64, i8** %_7
  %_65 = load i8*, i8** %_7
  store i8* %_65, i8** %x
  %_66 = load i8*, i8** %x
  %_67 = ptrtoint i8* %_66 to i64
  %_68 = and i64 %_67, 9151314442816847872
  %_69 = icmp eq i64 %_68, 504403158265495552
  br i1 %_69, label %L6, label %L7
L6:
  %_70 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_66, i64 72057594037927935)
  %_71 = bitcast i8* %_70 to i64*
  %_72 = load i64, i64* %_71, align 8
  %_73 = icmp ne i64 %_72, 1
  store i1 %_73, i1* %_8
  br label %L8
L7:
  store i1 1, i1* %_8
  br label %L8
L8:
  %_74 = load i1, i1* %_8
  %_75 = zext i1 %_74 to i64
  %_76 = or i64 %_75, 72057594037927936
  %_77 = getelementptr i8, i8* null, i64 %_76
  call void @_Bio__println (i8* %_77)
  store i8* null, i8** %_9
  %_78 = call i8* @_bal_alloc (i64 24)
  %_79 = bitcast i8* %_78 to [3 x i8*]*
  %_80 = call i8* @_bal_alloc (i64 8)
  %_81 = bitcast i8* %_80 to i64*
  store i64 1, i64* %_81, align 8
  %_82 = getelementptr i8, i8* %_80, i64 504403158265495552
  %_83 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_79, i64 0, i64 0
  store i8* %_82, i8** %_83
  %_84 = call i8* @_bal_alloc (i64 8)
  %_85 = bitcast i8* %_84 to i64*
  store i64 2, i64* %_85, align 8
  %_86 = getelementptr i8, i8* %_84, i64 504403158265495552
  %_87 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_79, i64 0, i64 1
  store i8* %_86, i8** %_87
  %_88 = call i8* @_bal_alloc (i64 8)
  %_89 = bitcast i8* %_88 to i64*
  store i64 3, i64* %_89, align 8
  %_90 = getelementptr i8, i8* %_88, i64 504403158265495552
  %_91 = getelementptr inbounds [3 x i8*], [3 x i8*]* %_79, i64 0, i64 2
  store i8* %_90, i8** %_91
  %_92 = bitcast [3 x i8*]* %_79 to [0 x i8*]*
  %_93 = call i8* @_bal_alloc (i64 24)
  %_94 = bitcast i8* %_93 to {i64, i64, [0 x i8*]*}*
  %_95 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_94, i64 0, i32 0
  store i64 3, i64* %_95
  %_96 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_94, i64 0, i32 1
  store i64 3, i64* %_96
  %_97 = getelementptr inbounds {i64, i64, [0 x i8*]*}, {i64, i64, [0 x i8*]*}* %_94, i64 0, i32 2
  store [0 x i8*]* %_92, [0 x i8*]** %_97
  %_98 = getelementptr i8, i8* %_93, i64 1297036692682702848
  store i8* %_98, i8** %_10
  %_99 = load i8*, i8** %_10
  store i8* %_99, i8** %x
  %_100 = load i8*, i8** %x
  %_101 = zext i1 1 to i64
  %_102 = or i64 %_101, 72057594037927936
  %_103 = getelementptr i8, i8* null, i64 %_102
  %_104 = icmp ne i8* %_100, %_103
  store i1 %_104, i1* %_11
  %_105 = load i1, i1* %_11
  %_106 = zext i1 %_105 to i64
  %_107 = or i64 %_106, 72057594037927936
  %_108 = getelementptr i8, i8* null, i64 %_107
  call void @_Bio__println (i8* %_108)
  store i8* null, i8** %_12
  %_109 = load i8*, i8** %x
  %_110 = icmp ne i8* %_109, null
  store i1 %_110, i1* %_13
  %_111 = load i1, i1* %_13
  %_112 = zext i1 %_111 to i64
  %_113 = or i64 %_112, 72057594037927936
  %_114 = getelementptr i8, i8* null, i64 %_113
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_14
  ret void
}
