@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %x = alloca i8 addrspace (1)*
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i1
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i1
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i1
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i1
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L2, label %L1
L1:
  %_18 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_19 = bitcast i8 addrspace (1)* %_18 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_20 = zext i1 1 to i64
  %_21 = or i64 %_20, 72057594037927936
  %_22 = getelementptr i8, i8 addrspace (1)* null, i64 %_21
  %_23 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_19, i64 0, i64 0
  store i8 addrspace (1)* %_22, i8 addrspace (1)* addrspace (1)* %_23
  %_24 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_19 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_25 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_26 = bitcast i8 addrspace (1)* %_25 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_28
  %_29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_24, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_29
  %_30 = getelementptr i8, i8 addrspace (1)* %_25, i64 1297036692682702848
  store i8 addrspace (1)* %_30, i8 addrspace (1)** %_0
  %_31 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_31, i8 addrspace (1)** %x
  %_32 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_33 = addrspacecast i8 addrspace (1)* %_32 to i8*
  %_34 = ptrtoint i8* %_33 to i64
  %_35 = and i64 %_34, 9151314442816847872
  %_36 = icmp eq i64 %_35, 504403158265495552
  br i1 %_36, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_37 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_32, i64 72057594037927935)
  %_38 = bitcast i8 addrspace (1)* %_37 to i64 addrspace (1)*
  %_39 = load i64, i64 addrspace (1)* %_38, align 8
  %_40 = icmp eq i64 %_39, 1
  store i1 %_40, i1* %_1
  br label %L5
L4:
  store i1 0, i1* %_1
  br label %L5
L5:
  %_41 = load i1, i1* %_1
  %_42 = zext i1 %_41 to i64
  %_43 = or i64 %_42, 72057594037927936
  %_44 = getelementptr i8, i8 addrspace (1)* null, i64 %_43
  call void @_Bio__println (i8 addrspace (1)* %_44)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_45 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_46 = zext i1 1 to i64
  %_47 = or i64 %_46, 72057594037927936
  %_48 = getelementptr i8, i8 addrspace (1)* null, i64 %_47
  %_49 = icmp eq i8 addrspace (1)* %_45, %_48
  store i1 %_49, i1* %_3
  %_50 = load i1, i1* %_3
  %_51 = zext i1 %_50 to i64
  %_52 = or i64 %_51, 72057594037927936
  %_53 = getelementptr i8, i8 addrspace (1)* null, i64 %_52
  call void @_Bio__println (i8 addrspace (1)* %_53)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_54 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_55 = icmp eq i8 addrspace (1)* %_54, null
  store i1 %_55, i1* %_5
  %_56 = load i1, i1* %_5
  %_57 = zext i1 %_56 to i64
  %_58 = or i64 %_57, 72057594037927936
  %_59 = getelementptr i8, i8 addrspace (1)* null, i64 %_58
  call void @_Bio__println (i8 addrspace (1)* %_59)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_60 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_61 = bitcast i8 addrspace (1)* %_60 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_62 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_61, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_62
  %_63 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_61, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_63
  %_64 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_61, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_64
  %_65 = getelementptr i8, i8 addrspace (1)* %_60, i64 1297036692682702848
  store i8 addrspace (1)* %_65, i8 addrspace (1)** %_7
  %_66 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  store i8 addrspace (1)* %_66, i8 addrspace (1)** %x
  %_67 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_68 = addrspacecast i8 addrspace (1)* %_67 to i8*
  %_69 = ptrtoint i8* %_68 to i64
  %_70 = and i64 %_69, 9151314442816847872
  %_71 = icmp eq i64 %_70, 504403158265495552
  br i1 %_71, label %L6, label %L7
L6:
  %_72 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_67, i64 72057594037927935)
  %_73 = bitcast i8 addrspace (1)* %_72 to i64 addrspace (1)*
  %_74 = load i64, i64 addrspace (1)* %_73, align 8
  %_75 = icmp ne i64 %_74, 1
  store i1 %_75, i1* %_8
  br label %L8
L7:
  store i1 1, i1* %_8
  br label %L8
L8:
  %_76 = load i1, i1* %_8
  %_77 = zext i1 %_76 to i64
  %_78 = or i64 %_77, 72057594037927936
  %_79 = getelementptr i8, i8 addrspace (1)* null, i64 %_78
  call void @_Bio__println (i8 addrspace (1)* %_79)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_80 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_81 = bitcast i8 addrspace (1)* %_80 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_82 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_83 = bitcast i8 addrspace (1)* %_82 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_83, align 8
  %_84 = getelementptr i8, i8 addrspace (1)* %_82, i64 504403158265495552
  %_85 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_81, i64 0, i64 0
  store i8 addrspace (1)* %_84, i8 addrspace (1)* addrspace (1)* %_85
  %_86 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_87 = bitcast i8 addrspace (1)* %_86 to i64 addrspace (1)*
  store i64 2, i64 addrspace (1)* %_87, align 8
  %_88 = getelementptr i8, i8 addrspace (1)* %_86, i64 504403158265495552
  %_89 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_81, i64 0, i64 1
  store i8 addrspace (1)* %_88, i8 addrspace (1)* addrspace (1)* %_89
  %_90 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_91 = bitcast i8 addrspace (1)* %_90 to i64 addrspace (1)*
  store i64 3, i64 addrspace (1)* %_91, align 8
  %_92 = getelementptr i8, i8 addrspace (1)* %_90, i64 504403158265495552
  %_93 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_81, i64 0, i64 2
  store i8 addrspace (1)* %_92, i8 addrspace (1)* addrspace (1)* %_93
  %_94 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_81 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_95 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_96 = bitcast i8 addrspace (1)* %_95 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_97 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_96, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_97
  %_98 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_96, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_98
  %_99 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_96, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_94, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_99
  %_100 = getelementptr i8, i8 addrspace (1)* %_95, i64 1297036692682702848
  store i8 addrspace (1)* %_100, i8 addrspace (1)** %_10
  %_101 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  store i8 addrspace (1)* %_101, i8 addrspace (1)** %x
  %_102 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_103 = zext i1 1 to i64
  %_104 = or i64 %_103, 72057594037927936
  %_105 = getelementptr i8, i8 addrspace (1)* null, i64 %_104
  %_106 = icmp ne i8 addrspace (1)* %_102, %_105
  store i1 %_106, i1* %_11
  %_107 = load i1, i1* %_11
  %_108 = zext i1 %_107 to i64
  %_109 = or i64 %_108, 72057594037927936
  %_110 = getelementptr i8, i8 addrspace (1)* null, i64 %_109
  call void @_Bio__println (i8 addrspace (1)* %_110)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_111 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_112 = icmp ne i8 addrspace (1)* %_111, null
  store i1 %_112, i1* %_13
  %_113 = load i1, i1* %_13
  %_114 = zext i1 %_113 to i64
  %_115 = or i64 %_114, 72057594037927936
  %_116 = getelementptr i8, i8 addrspace (1)* null, i64 %_115
  call void @_Bio__println (i8 addrspace (1)* %_116)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  ret void
}
