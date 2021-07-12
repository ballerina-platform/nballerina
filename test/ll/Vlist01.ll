@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i8 addrspace (1)*
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i8 addrspace (1)*
  %_19 = alloca i8 addrspace (1)*
  %_20 = alloca i8 addrspace (1)*
  %_21 = alloca i64
  %_22 = alloca i8
  %_23 = load i8*, i8** @_bal_stack_guard
  %_24 = icmp ult i8* %_22, %_23
  br i1 %_24, label %L3, label %L1
L1:
  %_25 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_26 = bitcast i8 addrspace (1)* %_25 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_28
  %_29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_29
  %_30 = getelementptr i8, i8 addrspace (1)* %_25, i64 1297036692682702848
  store i8 addrspace (1)* %_30, i8 addrspace (1)** %_0
  %_31 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  call void @_Bio__println (i8 addrspace (1)* %_31)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_32 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_33 = bitcast i8 addrspace (1)* %_32 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_34 = zext i1 1 to i64
  %_35 = or i64 %_34, 72057594037927936
  %_36 = getelementptr i8, i8 addrspace (1)* null, i64 %_35
  %_37 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_33, i64 0, i64 0
  store i8 addrspace (1)* %_36, i8 addrspace (1)* addrspace (1)* %_37
  %_38 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_33 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_39 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_40 = bitcast i8 addrspace (1)* %_39 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_40, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_41
  %_42 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_40, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_42
  %_43 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_40, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_38, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_43
  %_44 = getelementptr i8, i8 addrspace (1)* %_39, i64 1297036692682702848
  store i8 addrspace (1)* %_44, i8 addrspace (1)** %_2
  %_45 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  call void @_Bio__println (i8 addrspace (1)* %_45)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_46 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_47 = bitcast i8 addrspace (1)* %_46 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_48 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_47, i64 0, i64 0
  store i8 addrspace (1)* null, i8 addrspace (1)* addrspace (1)* %_48
  %_49 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_47 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_50 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_51 = bitcast i8 addrspace (1)* %_50 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_52 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_51, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_52
  %_53 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_51, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_53
  %_54 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_51, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_49, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_54
  %_55 = getelementptr i8, i8 addrspace (1)* %_50, i64 1297036692682702848
  store i8 addrspace (1)* %_55, i8 addrspace (1)** %_4
  %_56 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  call void @_Bio__println (i8 addrspace (1)* %_56)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_57 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 17)
  %_58 = extractvalue {i64, i1} %_57, 1
  br i1 %_58, label %L5, label %L4
L2:
  %_187 = load i64, i64* %_21
  call void @_bal_panic (i64 %_187)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_59 = extractvalue {i64, i1} %_57, 0
  store i64 %_59, i64* %_6
  %_60 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_61 = bitcast i8 addrspace (1)* %_60 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_62 = load i64, i64* %_6
  %_63 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_62)
  %_64 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_61, i64 0, i64 0
  store i8 addrspace (1)* %_63, i8 addrspace (1)* addrspace (1)* %_64
  %_65 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_61 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_66 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_67 = bitcast i8 addrspace (1)* %_66 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_68 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_67, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_68
  %_69 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_67, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_69
  %_70 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_67, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_65, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_70
  %_71 = getelementptr i8, i8 addrspace (1)* %_66, i64 1297036692682702848
  store i8 addrspace (1)* %_71, i8 addrspace (1)** %_7
  %_72 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  call void @_Bio__println (i8 addrspace (1)* %_72)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_73 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_74 = bitcast i8 addrspace (1)* %_73 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_75 = zext i1 0 to i64
  %_76 = or i64 %_75, 72057594037927936
  %_77 = getelementptr i8, i8 addrspace (1)* null, i64 %_76
  %_78 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_74, i64 0, i64 0
  store i8 addrspace (1)* %_77, i8 addrspace (1)* addrspace (1)* %_78
  %_79 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_74, i64 0, i64 1
  store i8 addrspace (1)* null, i8 addrspace (1)* addrspace (1)* %_79
  %_80 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 43)
  %_81 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_74, i64 0, i64 2
  store i8 addrspace (1)* %_80, i8 addrspace (1)* addrspace (1)* %_81
  %_82 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_74 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_83 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_84 = bitcast i8 addrspace (1)* %_83 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_85 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_84, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_85
  %_86 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_84, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_86
  %_87 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_84, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_82, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_87
  %_88 = getelementptr i8, i8 addrspace (1)* %_83, i64 1297036692682702848
  store i8 addrspace (1)* %_88, i8 addrspace (1)** %_9
  %_89 = load i8 addrspace (1)*, i8 addrspace (1)** %_9
  call void @_Bio__println (i8 addrspace (1)* %_89)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_90 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_91 = bitcast i8 addrspace (1)* %_90 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_92 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_91, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_92
  %_93 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_91, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_93
  %_94 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_91, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_94
  %_95 = getelementptr i8, i8 addrspace (1)* %_90, i64 1297036692682702848
  store i8 addrspace (1)* %_95, i8 addrspace (1)** %_11
  %_96 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_97 = bitcast i8 addrspace (1)* %_96 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_98 = load i8 addrspace (1)*, i8 addrspace (1)** %_11
  %_99 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_97, i64 0, i64 0
  store i8 addrspace (1)* %_98, i8 addrspace (1)* addrspace (1)* %_99
  %_100 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_97 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_101 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_102 = bitcast i8 addrspace (1)* %_101 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_103 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_102, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_103
  %_104 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_102, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_104
  %_105 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_102, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_100, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_105
  %_106 = getelementptr i8, i8 addrspace (1)* %_101, i64 1297036692682702848
  store i8 addrspace (1)* %_106, i8 addrspace (1)** %_12
  %_107 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_108 = bitcast i8 addrspace (1)* %_107 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_109 = load i8 addrspace (1)*, i8 addrspace (1)** %_12
  %_110 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_108, i64 0, i64 0
  store i8 addrspace (1)* %_109, i8 addrspace (1)* addrspace (1)* %_110
  %_111 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_108 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_112 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_113 = bitcast i8 addrspace (1)* %_112 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_114 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_113, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_114
  %_115 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_113, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_115
  %_116 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_113, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_111, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_116
  %_117 = getelementptr i8, i8 addrspace (1)* %_112, i64 1297036692682702848
  store i8 addrspace (1)* %_117, i8 addrspace (1)** %_13
  %_118 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_119 = bitcast i8 addrspace (1)* %_118 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_120 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_121 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_119, i64 0, i64 0
  store i8 addrspace (1)* %_120, i8 addrspace (1)* addrspace (1)* %_121
  %_122 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_119 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_123 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_124 = bitcast i8 addrspace (1)* %_123 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_125 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_124, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_125
  %_126 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_124, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_126
  %_127 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_124, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_122, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_127
  %_128 = getelementptr i8, i8 addrspace (1)* %_123, i64 1297036692682702848
  store i8 addrspace (1)* %_128, i8 addrspace (1)** %_14
  %_129 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_130 = bitcast i8 addrspace (1)* %_129 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_131 = load i8 addrspace (1)*, i8 addrspace (1)** %_14
  %_132 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_130, i64 0, i64 0
  store i8 addrspace (1)* %_131, i8 addrspace (1)* addrspace (1)* %_132
  %_133 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_130 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_134 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_135 = bitcast i8 addrspace (1)* %_134 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_136 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_135, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_136
  %_137 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_135, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_137
  %_138 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_135, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_133, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_138
  %_139 = getelementptr i8, i8 addrspace (1)* %_134, i64 1297036692682702848
  store i8 addrspace (1)* %_139, i8 addrspace (1)** %_15
  %_140 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_141 = bitcast i8 addrspace (1)* %_140 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_142 = load i8 addrspace (1)*, i8 addrspace (1)** %_15
  %_143 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_141, i64 0, i64 0
  store i8 addrspace (1)* %_142, i8 addrspace (1)* addrspace (1)* %_143
  %_144 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_141 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_145 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_146 = bitcast i8 addrspace (1)* %_145 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_147 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_146, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_147
  %_148 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_146, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_148
  %_149 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_146, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_144, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_149
  %_150 = getelementptr i8, i8 addrspace (1)* %_145, i64 1297036692682702848
  store i8 addrspace (1)* %_150, i8 addrspace (1)** %_16
  %_151 = load i8 addrspace (1)*, i8 addrspace (1)** %_16
  call void @_Bio__println (i8 addrspace (1)* %_151)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_152 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_153 = bitcast i8 addrspace (1)* %_152 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_154 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_155 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_153, i64 0, i64 0
  store i8 addrspace (1)* %_154, i8 addrspace (1)* addrspace (1)* %_155
  %_156 = zext i1 1 to i64
  %_157 = or i64 %_156, 72057594037927936
  %_158 = getelementptr i8, i8 addrspace (1)* null, i64 %_157
  %_159 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_153, i64 0, i64 1
  store i8 addrspace (1)* %_158, i8 addrspace (1)* addrspace (1)* %_159
  %_160 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 21)
  %_161 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_153, i64 0, i64 2
  store i8 addrspace (1)* %_160, i8 addrspace (1)* addrspace (1)* %_161
  %_162 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_153 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_163 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_164 = bitcast i8 addrspace (1)* %_163 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_165 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_164, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_165
  %_166 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_164, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_166
  %_167 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_164, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_162, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_167
  %_168 = getelementptr i8, i8 addrspace (1)* %_163, i64 1297036692682702848
  store i8 addrspace (1)* %_168, i8 addrspace (1)** %_18
  %_169 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_170 = bitcast i8 addrspace (1)* %_169 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_171 = zext i1 0 to i64
  %_172 = or i64 %_171, 72057594037927936
  %_173 = getelementptr i8, i8 addrspace (1)* null, i64 %_172
  %_174 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_170, i64 0, i64 0
  store i8 addrspace (1)* %_173, i8 addrspace (1)* addrspace (1)* %_174
  %_175 = load i8 addrspace (1)*, i8 addrspace (1)** %_18
  %_176 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_170, i64 0, i64 1
  store i8 addrspace (1)* %_175, i8 addrspace (1)* addrspace (1)* %_176
  %_177 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  %_178 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_170, i64 0, i64 2
  store i8 addrspace (1)* %_177, i8 addrspace (1)* addrspace (1)* %_178
  %_179 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_170 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_180 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_181 = bitcast i8 addrspace (1)* %_180 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_182 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_181, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_182
  %_183 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_181, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_183
  %_184 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_181, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_179, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_184
  %_185 = getelementptr i8, i8 addrspace (1)* %_180, i64 1297036692682702848
  store i8 addrspace (1)* %_185, i8 addrspace (1)** %_19
  %_186 = load i8 addrspace (1)*, i8 addrspace (1)** %_19
  call void @_Bio__println (i8 addrspace (1)* %_186)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  ret void
L5:
  store i64 1793, i64* %_21
  br label %L2
}
