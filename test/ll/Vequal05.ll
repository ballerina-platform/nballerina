@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i1
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %n = alloca i64
  %_12 = alloca i1
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i1
  %_16 = alloca i8 addrspace (1)*
  %_17 = alloca i8 addrspace (1)*
  %b = alloca i1
  %_18 = alloca i1
  %_19 = alloca i8 addrspace (1)*
  %_20 = alloca i8 addrspace (1)*
  %_21 = alloca i1
  %_22 = alloca i8 addrspace (1)*
  %_23 = alloca i8 addrspace (1)*
  %_24 = alloca i8
  %_25 = load i8*, i8** @_bal_stack_guard
  %_26 = icmp ult i8* %_24, %_25
  br i1 %_26, label %L2, label %L1
L1:
  %_27 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_27, i8 addrspace (1)** %_1
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_29 = addrspacecast i8 addrspace (1)* %_28 to i8*
  %_30 = ptrtoint i8* %_29 to i64
  %_31 = and i64 %_30, 9151314442816847872
  %_32 = icmp eq i64 %_31, 504403158265495552
  br i1 %_32, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_33 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_28, i64 72057594037927935)
  %_34 = bitcast i8 addrspace (1)* %_33 to i64 addrspace (1)*
  %_35 = load i64, i64 addrspace (1)* %_34, align 8
  %_36 = icmp eq i64 %_35, 2
  store i1 %_36, i1* %_0
  br label %L5
L4:
  store i1 0, i1* %_0
  br label %L5
L5:
  %_37 = load i1, i1* %_0
  %_38 = zext i1 %_37 to i64
  %_39 = or i64 %_38, 72057594037927936
  %_40 = getelementptr i8, i8 addrspace (1)* null, i64 %_39
  call void @_Bio__println (i8 addrspace (1)* %_40)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_41 = call i8 addrspace (1)* @_B_mkInt (i64 17)
  store i8 addrspace (1)* %_41, i8 addrspace (1)** %_4
  %_42 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_43 = addrspacecast i8 addrspace (1)* %_42 to i8*
  %_44 = ptrtoint i8* %_43 to i64
  %_45 = and i64 %_44, 9151314442816847872
  %_46 = icmp eq i64 %_45, 504403158265495552
  br i1 %_46, label %L6, label %L7
L6:
  %_47 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_42, i64 72057594037927935)
  %_48 = bitcast i8 addrspace (1)* %_47 to i64 addrspace (1)*
  %_49 = load i64, i64 addrspace (1)* %_48, align 8
  %_50 = icmp ne i64 %_49, 17
  store i1 %_50, i1* %_3
  br label %L8
L7:
  store i1 1, i1* %_3
  br label %L8
L8:
  %_51 = load i1, i1* %_3
  %_52 = zext i1 %_51 to i64
  %_53 = or i64 %_52, 72057594037927936
  %_54 = getelementptr i8, i8 addrspace (1)* null, i64 %_53
  call void @_Bio__println (i8 addrspace (1)* %_54)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_55 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_55, i8 addrspace (1)** %_7
  %_56 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_57 = zext i1 1 to i64
  %_58 = or i64 %_57, 72057594037927936
  %_59 = getelementptr i8, i8 addrspace (1)* null, i64 %_58
  %_60 = icmp eq i8 addrspace (1)* %_56, %_59
  store i1 %_60, i1* %_6
  %_61 = load i1, i1* %_6
  %_62 = zext i1 %_61 to i64
  %_63 = or i64 %_62, 72057594037927936
  %_64 = getelementptr i8, i8 addrspace (1)* null, i64 %_63
  call void @_Bio__println (i8 addrspace (1)* %_64)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_65 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_65, i8 addrspace (1)** %_10
  %_66 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_67 = zext i1 0 to i64
  %_68 = or i64 %_67, 72057594037927936
  %_69 = getelementptr i8, i8 addrspace (1)* null, i64 %_68
  %_70 = icmp ne i8 addrspace (1)* %_66, %_69
  store i1 %_70, i1* %_9
  %_71 = load i1, i1* %_9
  %_72 = zext i1 %_71 to i64
  %_73 = or i64 %_72, 72057594037927936
  %_74 = getelementptr i8, i8 addrspace (1)* null, i64 %_73
  call void @_Bio__println (i8 addrspace (1)* %_74)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  store i64 2, i64* %n
  %_75 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_75, i8 addrspace (1)** %_13
  %_76 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_77 = load i64, i64* %n
  %_78 = addrspacecast i8 addrspace (1)* %_76 to i8*
  %_79 = ptrtoint i8* %_78 to i64
  %_80 = and i64 %_79, 9151314442816847872
  %_81 = icmp eq i64 %_80, 504403158265495552
  br i1 %_81, label %L9, label %L10
L9:
  %_82 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_76, i64 72057594037927935)
  %_83 = bitcast i8 addrspace (1)* %_82 to i64 addrspace (1)*
  %_84 = load i64, i64 addrspace (1)* %_83, align 8
  %_85 = icmp eq i64 %_84, %_77
  store i1 %_85, i1* %_12
  br label %L11
L10:
  store i1 0, i1* %_12
  br label %L11
L11:
  %_86 = load i1, i1* %_12
  %_87 = zext i1 %_86 to i64
  %_88 = or i64 %_87, 72057594037927936
  %_89 = getelementptr i8, i8 addrspace (1)* null, i64 %_88
  call void @_Bio__println (i8 addrspace (1)* %_89)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  store i64 17, i64* %n
  %_90 = call i8 addrspace (1)* @_B_mkInt (i64 17)
  store i8 addrspace (1)* %_90, i8 addrspace (1)** %_16
  %_91 = load i64, i64* %n
  %_92 = load i8 addrspace (1)*, i8 addrspace (1)** %_16
  %_93 = addrspacecast i8 addrspace (1)* %_92 to i8*
  %_94 = ptrtoint i8* %_93 to i64
  %_95 = and i64 %_94, 9151314442816847872
  %_96 = icmp eq i64 %_95, 504403158265495552
  br i1 %_96, label %L12, label %L13
L12:
  %_97 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_92, i64 72057594037927935)
  %_98 = bitcast i8 addrspace (1)* %_97 to i64 addrspace (1)*
  %_99 = load i64, i64 addrspace (1)* %_98, align 8
  %_100 = icmp ne i64 %_99, %_91
  store i1 %_100, i1* %_15
  br label %L14
L13:
  store i1 1, i1* %_15
  br label %L14
L14:
  %_101 = load i1, i1* %_15
  %_102 = zext i1 %_101 to i64
  %_103 = or i64 %_102, 72057594037927936
  %_104 = getelementptr i8, i8 addrspace (1)* null, i64 %_103
  call void @_Bio__println (i8 addrspace (1)* %_104)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  store i1 1, i1* %b
  %_105 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_105, i8 addrspace (1)** %_19
  %_106 = load i8 addrspace (1)*, i8 addrspace (1)** %_19
  %_107 = load i1, i1* %b
  %_108 = zext i1 %_107 to i64
  %_109 = or i64 %_108, 72057594037927936
  %_110 = getelementptr i8, i8 addrspace (1)* null, i64 %_109
  %_111 = icmp eq i8 addrspace (1)* %_106, %_110
  store i1 %_111, i1* %_18
  %_112 = load i1, i1* %_18
  %_113 = zext i1 %_112 to i64
  %_114 = or i64 %_113, 72057594037927936
  %_115 = getelementptr i8, i8 addrspace (1)* null, i64 %_114
  call void @_Bio__println (i8 addrspace (1)* %_115)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  store i1 0, i1* %b
  %_116 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_116, i8 addrspace (1)** %_22
  %_117 = load i1, i1* %b
  %_118 = load i8 addrspace (1)*, i8 addrspace (1)** %_22
  %_119 = zext i1 %_117 to i64
  %_120 = or i64 %_119, 72057594037927936
  %_121 = getelementptr i8, i8 addrspace (1)* null, i64 %_120
  %_122 = icmp ne i8 addrspace (1)* %_118, %_121
  store i1 %_122, i1* %_21
  %_123 = load i1, i1* %_21
  %_124 = zext i1 %_123 to i64
  %_125 = or i64 %_124, 72057594037927936
  %_126 = getelementptr i8, i8 addrspace (1)* null, i64 %_125
  call void @_Bio__println (i8 addrspace (1)* %_126)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  ret void
}
define internal i8 addrspace (1)* @_B_mkInt (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_6 = bitcast i8 addrspace (1)* %_5 to i64 addrspace (1)*
  store i64 %_4, i64 addrspace (1)* %_6, align 8
  %_7 = getelementptr i8, i8 addrspace (1)* %_5, i64 504403158265495552
  ret i8 addrspace (1)* %_7
L2:
  call void @_bal_panic (i64 4612)
  unreachable
}
define internal i8 addrspace (1)* @_B_mkBoolean (i1 %_0) {
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
  %_7 = getelementptr i8, i8 addrspace (1)* null, i64 %_6
  ret i8 addrspace (1)* %_7
L2:
  call void @_bal_panic (i64 5636)
  unreachable
}
