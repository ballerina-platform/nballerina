@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %x = alloca i8 addrspace (1)*
  %y = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i8
  %_14 = load i8*, i8** @_bal_stack_guard
  %_15 = icmp ult i8* %_13, %_14
  br i1 %_15, label %L2, label %L1
L1:
  %_16 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_17 = bitcast i8 addrspace (1)* %_16 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_18 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_19 = bitcast i8 addrspace (1)* %_18 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_19, align 8
  %_20 = getelementptr i8, i8 addrspace (1)* %_18, i64 504403158265495552
  %_21 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_17, i64 0, i64 0
  store i8 addrspace (1)* %_20, i8 addrspace (1)* addrspace (1)* %_21
  %_22 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_17 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_23 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_24 = bitcast i8 addrspace (1)* %_23 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_24, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_25
  %_26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_24, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_26
  %_27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_24, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_22, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_27
  %_28 = getelementptr i8, i8 addrspace (1)* %_23, i64 1297036692682702848
  store i8 addrspace (1)* %_28, i8 addrspace (1)** %_0
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_29, i8 addrspace (1)** %x
  %_30 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  store i8 addrspace (1)* %_30, i8 addrspace (1)** %y
  %_31 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_32 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  call void @_B_printEq (i8 addrspace (1)* %_31, i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_33 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_34 = bitcast i8 addrspace (1)* %_33 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_35 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_36 = bitcast i8 addrspace (1)* %_35 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_36, align 8
  %_37 = getelementptr i8, i8 addrspace (1)* %_35, i64 504403158265495552
  %_38 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_34, i64 0, i64 0
  store i8 addrspace (1)* %_37, i8 addrspace (1)* addrspace (1)* %_38
  %_39 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_34 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_40 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_41 = bitcast i8 addrspace (1)* %_40 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_42 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_41, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_42
  %_43 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_41, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_43
  %_44 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_41, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_39, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_44
  %_45 = getelementptr i8, i8 addrspace (1)* %_40, i64 1297036692682702848
  store i8 addrspace (1)* %_45, i8 addrspace (1)** %_2
  %_46 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  %_47 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_48 = bitcast i8 addrspace (1)* %_47 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_48, align 8
  %_49 = getelementptr i8, i8 addrspace (1)* %_47, i64 504403158265495552
  call void @_B_printEq (i8 addrspace (1)* %_46, i8 addrspace (1)* %_49)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_50 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_51 = bitcast i8 addrspace (1)* %_50 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_52 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_53 = bitcast i8 addrspace (1)* %_52 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_53, align 8
  %_54 = getelementptr i8, i8 addrspace (1)* %_52, i64 504403158265495552
  %_55 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_51, i64 0, i64 0
  store i8 addrspace (1)* %_54, i8 addrspace (1)* addrspace (1)* %_55
  %_56 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_51 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_57 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_58 = bitcast i8 addrspace (1)* %_57 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_59 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_58, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_59
  %_60 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_58, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_60
  %_61 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_58, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_56, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_61
  %_62 = getelementptr i8, i8 addrspace (1)* %_57, i64 1297036692682702848
  store i8 addrspace (1)* %_62, i8 addrspace (1)** %_4
  %_63 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_64 = bitcast i8 addrspace (1)* %_63 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_65 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_66 = bitcast i8 addrspace (1)* %_65 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_66, align 8
  %_67 = getelementptr i8, i8 addrspace (1)* %_65, i64 504403158265495552
  %_68 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_64, i64 0, i64 0
  store i8 addrspace (1)* %_67, i8 addrspace (1)* addrspace (1)* %_68
  %_69 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_64 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_70 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_71 = bitcast i8 addrspace (1)* %_70 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_72 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_71, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_72
  %_73 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_71, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_73
  %_74 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_71, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_69, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_74
  %_75 = getelementptr i8, i8 addrspace (1)* %_70, i64 1297036692682702848
  store i8 addrspace (1)* %_75, i8 addrspace (1)** %_5
  %_76 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_77 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  call void @_B_printEq (i8 addrspace (1)* %_76, i8 addrspace (1)* %_77)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_78 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_79 = bitcast i8 addrspace (1)* %_78 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_80 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_79, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_80
  %_81 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_79, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_81
  %_82 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_79, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_82
  %_83 = getelementptr i8, i8 addrspace (1)* %_78, i64 1297036692682702848
  store i8 addrspace (1)* %_83, i8 addrspace (1)** %_7
  %_84 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_85 = bitcast i8 addrspace (1)* %_84 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_86 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_85, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_86
  %_87 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_85, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_87
  %_88 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_85, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_88
  %_89 = getelementptr i8, i8 addrspace (1)* %_84, i64 1297036692682702848
  store i8 addrspace (1)* %_89, i8 addrspace (1)** %_8
  %_90 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_91 = load i8 addrspace (1)*, i8 addrspace (1)** %_8
  call void @_B_printEq (i8 addrspace (1)* %_90, i8 addrspace (1)* %_91)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_92 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_93 = bitcast i8 addrspace (1)* %_92 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_94 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_95 = bitcast i8 addrspace (1)* %_94 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_95, align 8
  %_96 = getelementptr i8, i8 addrspace (1)* %_94, i64 504403158265495552
  %_97 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_93, i64 0, i64 0
  store i8 addrspace (1)* %_96, i8 addrspace (1)* addrspace (1)* %_97
  %_98 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_93 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_99 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_100 = bitcast i8 addrspace (1)* %_99 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_101 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_100, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_101
  %_102 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_100, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_102
  %_103 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_100, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_98, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_103
  %_104 = getelementptr i8, i8 addrspace (1)* %_99, i64 1297036692682702848
  store i8 addrspace (1)* %_104, i8 addrspace (1)** %_10
  %_105 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_106 = bitcast i8 addrspace (1)* %_105 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_107 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_108 = bitcast i8 addrspace (1)* %_107 to i64 addrspace (1)*
  store i64 2, i64 addrspace (1)* %_108, align 8
  %_109 = getelementptr i8, i8 addrspace (1)* %_107, i64 504403158265495552
  %_110 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_106, i64 0, i64 0
  store i8 addrspace (1)* %_109, i8 addrspace (1)* addrspace (1)* %_110
  %_111 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_106 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_112 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_113 = bitcast i8 addrspace (1)* %_112 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_114 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_113, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_114
  %_115 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_113, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_115
  %_116 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_113, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_111, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_116
  %_117 = getelementptr i8, i8 addrspace (1)* %_112, i64 1297036692682702848
  store i8 addrspace (1)* %_117, i8 addrspace (1)** %_11
  %_118 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_119 = load i8 addrspace (1)*, i8 addrspace (1)** %_11
  call void @_B_printEq (i8 addrspace (1)* %_118, i8 addrspace (1)* %_119)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal void @_B_printEq (i8 addrspace (1)* %_0, i8 addrspace (1)* %_1) {
  %x = alloca i8 addrspace (1)*
  %y = alloca i8 addrspace (1)*
  %_2 = alloca i1
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i1
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L2, label %L1
L1:
  store i8 addrspace (1)* %_0, i8 addrspace (1)** %x
  store i8 addrspace (1)* %_1, i8 addrspace (1)** %y
  %_9 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_10 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  %_11 = icmp eq i8 addrspace (1)* %_9, %_10
  br i1 %_11, label %L3, label %L4
L2:
  call void @_bal_panic (i64 5636)
  unreachable
L3:
  store i1 1, i1* %_2
  br label %L5
L4:
  %_12 = addrspacecast i8 addrspace (1)* %_9 to i8*
  %_13 = ptrtoint i8* %_12 to i64
  %_14 = and i64 %_13, 9151314442816847872
  %_15 = icmp eq i64 %_14, 504403158265495552
  %_16 = addrspacecast i8 addrspace (1)* %_10 to i8*
  %_17 = ptrtoint i8* %_16 to i64
  %_18 = and i64 %_17, 9151314442816847872
  %_19 = icmp eq i64 %_18, 504403158265495552
  %_20 = and i1 %_15, %_19
  br i1 %_20, label %L6, label %L7
L5:
  %_28 = load i1, i1* %_2
  %_29 = zext i1 %_28 to i64
  %_30 = or i64 %_29, 72057594037927936
  %_31 = getelementptr i8, i8 addrspace (1)* null, i64 %_30
  call void @_Bio__println (i8 addrspace (1)* %_31)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_32 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  %_34 = icmp eq i8 addrspace (1)* %_32, %_33
  br i1 %_34, label %L8, label %L9
L6:
  %_21 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_9, i64 72057594037927935)
  %_22 = bitcast i8 addrspace (1)* %_21 to i64 addrspace (1)*
  %_23 = load i64, i64 addrspace (1)* %_22, align 8
  %_24 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_10, i64 72057594037927935)
  %_25 = bitcast i8 addrspace (1)* %_24 to i64 addrspace (1)*
  %_26 = load i64, i64 addrspace (1)* %_25, align 8
  %_27 = icmp eq i64 %_23, %_26
  store i1 %_27, i1* %_2
  br label %L5
L7:
  store i1 0, i1* %_2
  br label %L5
L8:
  store i1 0, i1* %_4
  br label %L10
L9:
  %_35 = addrspacecast i8 addrspace (1)* %_32 to i8*
  %_36 = ptrtoint i8* %_35 to i64
  %_37 = and i64 %_36, 9151314442816847872
  %_38 = icmp eq i64 %_37, 504403158265495552
  %_39 = addrspacecast i8 addrspace (1)* %_33 to i8*
  %_40 = ptrtoint i8* %_39 to i64
  %_41 = and i64 %_40, 9151314442816847872
  %_42 = icmp eq i64 %_41, 504403158265495552
  %_43 = and i1 %_38, %_42
  br i1 %_43, label %L11, label %L12
L10:
  %_51 = load i1, i1* %_4
  %_52 = zext i1 %_51 to i64
  %_53 = or i64 %_52, 72057594037927936
  %_54 = getelementptr i8, i8 addrspace (1)* null, i64 %_53
  call void @_Bio__println (i8 addrspace (1)* %_54)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  ret void
L11:
  %_44 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_32, i64 72057594037927935)
  %_45 = bitcast i8 addrspace (1)* %_44 to i64 addrspace (1)*
  %_46 = load i64, i64 addrspace (1)* %_45, align 8
  %_47 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_33, i64 72057594037927935)
  %_48 = bitcast i8 addrspace (1)* %_47 to i64 addrspace (1)*
  %_49 = load i64, i64 addrspace (1)* %_48, align 8
  %_50 = icmp ne i64 %_46, %_49
  store i1 %_50, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
}
