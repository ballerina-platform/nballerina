@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
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
  %_18 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_19 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_17, i64 0, i64 0
  store i8 addrspace (1)* %_18, i8 addrspace (1)* addrspace (1)* %_19
  %_20 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_17 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_21 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_22 = bitcast i8 addrspace (1)* %_21 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_23 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_22, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_23
  %_24 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_22, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_24
  %_25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_22, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_20, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_25
  %_26 = getelementptr i8, i8 addrspace (1)* %_21, i64 1297036692682702848
  store i8 addrspace (1)* %_26, i8 addrspace (1)** %_0
  %_27 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_27, i8 addrspace (1)** %x
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  store i8 addrspace (1)* %_28, i8 addrspace (1)** %y
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_30 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  call void @_B_printEq (i8 addrspace (1)* %_29, i8 addrspace (1)* %_30)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_31 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_32 = bitcast i8 addrspace (1)* %_31 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_33 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_34 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_32, i64 0, i64 0
  store i8 addrspace (1)* %_33, i8 addrspace (1)* addrspace (1)* %_34
  %_35 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_32 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_36 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_37 = bitcast i8 addrspace (1)* %_36 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_38 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_37, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_38
  %_39 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_37, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_39
  %_40 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_37, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_35, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_40
  %_41 = getelementptr i8, i8 addrspace (1)* %_36, i64 1297036692682702848
  store i8 addrspace (1)* %_41, i8 addrspace (1)** %_2
  %_42 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  %_43 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_B_printEq (i8 addrspace (1)* %_42, i8 addrspace (1)* %_43)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_44 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_45 = bitcast i8 addrspace (1)* %_44 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_46 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_47 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_45, i64 0, i64 0
  store i8 addrspace (1)* %_46, i8 addrspace (1)* addrspace (1)* %_47
  %_48 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_45 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_49 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_50 = bitcast i8 addrspace (1)* %_49 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_51 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_50, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_51
  %_52 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_50, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_52
  %_53 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_50, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_48, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_53
  %_54 = getelementptr i8, i8 addrspace (1)* %_49, i64 1297036692682702848
  store i8 addrspace (1)* %_54, i8 addrspace (1)** %_4
  %_55 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_56 = bitcast i8 addrspace (1)* %_55 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_57 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_58 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_56, i64 0, i64 0
  store i8 addrspace (1)* %_57, i8 addrspace (1)* addrspace (1)* %_58
  %_59 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_56 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_60 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_61 = bitcast i8 addrspace (1)* %_60 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_62 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_61, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_62
  %_63 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_61, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_63
  %_64 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_61, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_59, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_64
  %_65 = getelementptr i8, i8 addrspace (1)* %_60, i64 1297036692682702848
  store i8 addrspace (1)* %_65, i8 addrspace (1)** %_5
  %_66 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_67 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  call void @_B_printEq (i8 addrspace (1)* %_66, i8 addrspace (1)* %_67)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_68 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_69 = bitcast i8 addrspace (1)* %_68 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_70 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_69, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_70
  %_71 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_69, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_71
  %_72 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_69, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_72
  %_73 = getelementptr i8, i8 addrspace (1)* %_68, i64 1297036692682702848
  store i8 addrspace (1)* %_73, i8 addrspace (1)** %_7
  %_74 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_75 = bitcast i8 addrspace (1)* %_74 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_76 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_75, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_76
  %_77 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_75, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_77
  %_78 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_75, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_78
  %_79 = getelementptr i8, i8 addrspace (1)* %_74, i64 1297036692682702848
  store i8 addrspace (1)* %_79, i8 addrspace (1)** %_8
  %_80 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_81 = load i8 addrspace (1)*, i8 addrspace (1)** %_8
  call void @_B_printEq (i8 addrspace (1)* %_80, i8 addrspace (1)* %_81)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_82 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_83 = bitcast i8 addrspace (1)* %_82 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_84 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_85 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_83, i64 0, i64 0
  store i8 addrspace (1)* %_84, i8 addrspace (1)* addrspace (1)* %_85
  %_86 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_83 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_87 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_88 = bitcast i8 addrspace (1)* %_87 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_89 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_88, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_89
  %_90 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_88, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_90
  %_91 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_88, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_86, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_91
  %_92 = getelementptr i8, i8 addrspace (1)* %_87, i64 1297036692682702848
  store i8 addrspace (1)* %_92, i8 addrspace (1)** %_10
  %_93 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_94 = bitcast i8 addrspace (1)* %_93 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_95 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  %_96 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_94, i64 0, i64 0
  store i8 addrspace (1)* %_95, i8 addrspace (1)* addrspace (1)* %_96
  %_97 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_94 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_98 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_99 = bitcast i8 addrspace (1)* %_98 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_100 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_99, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_100
  %_101 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_99, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_101
  %_102 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_99, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_97, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_102
  %_103 = getelementptr i8, i8 addrspace (1)* %_98, i64 1297036692682702848
  store i8 addrspace (1)* %_103, i8 addrspace (1)** %_11
  %_104 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_105 = load i8 addrspace (1)*, i8 addrspace (1)** %_11
  call void @_B_printEq (i8 addrspace (1)* %_104, i8 addrspace (1)* %_105)
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
  %_14 = and i64 %_13, 2233785415175766016
  %_15 = icmp eq i64 %_14, 504403158265495552
  %_16 = addrspacecast i8 addrspace (1)* %_10 to i8*
  %_17 = ptrtoint i8* %_16 to i64
  %_18 = and i64 %_17, 2233785415175766016
  %_19 = icmp eq i64 %_18, 504403158265495552
  %_20 = and i1 %_15, %_19
  br i1 %_20, label %L6, label %L7
L5:
  %_24 = load i1, i1* %_2
  %_25 = zext i1 %_24 to i64
  %_26 = or i64 %_25, 72057594037927936
  %_27 = getelementptr i8, i8 addrspace (1)* null, i64 %_26
  call void @_Bio__println (i8 addrspace (1)* %_27)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  %_30 = icmp eq i8 addrspace (1)* %_28, %_29
  br i1 %_30, label %L8, label %L9
L6:
  %_21 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_9)
  %_22 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_10)
  %_23 = icmp eq i64 %_21, %_22
  store i1 %_23, i1* %_2
  br label %L5
L7:
  store i1 0, i1* %_2
  br label %L5
L8:
  store i1 0, i1* %_4
  br label %L10
L9:
  %_31 = addrspacecast i8 addrspace (1)* %_28 to i8*
  %_32 = ptrtoint i8* %_31 to i64
  %_33 = and i64 %_32, 2233785415175766016
  %_34 = icmp eq i64 %_33, 504403158265495552
  %_35 = addrspacecast i8 addrspace (1)* %_29 to i8*
  %_36 = ptrtoint i8* %_35 to i64
  %_37 = and i64 %_36, 2233785415175766016
  %_38 = icmp eq i64 %_37, 504403158265495552
  %_39 = and i1 %_34, %_38
  br i1 %_39, label %L11, label %L12
L10:
  %_43 = load i1, i1* %_4
  %_44 = zext i1 %_43 to i64
  %_45 = or i64 %_44, 72057594037927936
  %_46 = getelementptr i8, i8 addrspace (1)* null, i64 %_45
  call void @_Bio__println (i8 addrspace (1)* %_46)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  ret void
L11:
  %_40 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_28)
  %_41 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_29)
  %_42 = icmp ne i64 %_40, %_41
  store i1 %_42, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
}
