@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
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
  %_35 = and i64 %_34, 2233785415175766016
  %_36 = icmp eq i64 %_35, 504403158265495552
  br i1 %_36, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_37 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_32)
  %_38 = icmp eq i64 %_37, 1
  store i1 %_38, i1* %_1
  br label %L5
L4:
  store i1 0, i1* %_1
  br label %L5
L5:
  %_39 = load i1, i1* %_1
  %_40 = zext i1 %_39 to i64
  %_41 = or i64 %_40, 72057594037927936
  %_42 = getelementptr i8, i8 addrspace (1)* null, i64 %_41
  call void @_Bio__println (i8 addrspace (1)* %_42)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_43 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_44 = zext i1 1 to i64
  %_45 = or i64 %_44, 72057594037927936
  %_46 = getelementptr i8, i8 addrspace (1)* null, i64 %_45
  %_47 = icmp eq i8 addrspace (1)* %_43, %_46
  store i1 %_47, i1* %_3
  %_48 = load i1, i1* %_3
  %_49 = zext i1 %_48 to i64
  %_50 = or i64 %_49, 72057594037927936
  %_51 = getelementptr i8, i8 addrspace (1)* null, i64 %_50
  call void @_Bio__println (i8 addrspace (1)* %_51)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_52 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_53 = icmp eq i8 addrspace (1)* %_52, null
  store i1 %_53, i1* %_5
  %_54 = load i1, i1* %_5
  %_55 = zext i1 %_54 to i64
  %_56 = or i64 %_55, 72057594037927936
  %_57 = getelementptr i8, i8 addrspace (1)* null, i64 %_56
  call void @_Bio__println (i8 addrspace (1)* %_57)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_58 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_59 = bitcast i8 addrspace (1)* %_58 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_60 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_59, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_60
  %_61 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_59, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_61
  %_62 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_59, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_62
  %_63 = getelementptr i8, i8 addrspace (1)* %_58, i64 1297036692682702848
  store i8 addrspace (1)* %_63, i8 addrspace (1)** %_7
  %_64 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  store i8 addrspace (1)* %_64, i8 addrspace (1)** %x
  %_65 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_66 = addrspacecast i8 addrspace (1)* %_65 to i8*
  %_67 = ptrtoint i8* %_66 to i64
  %_68 = and i64 %_67, 2233785415175766016
  %_69 = icmp eq i64 %_68, 504403158265495552
  br i1 %_69, label %L6, label %L7
L6:
  %_70 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_65)
  %_71 = icmp ne i64 %_70, 1
  store i1 %_71, i1* %_8
  br label %L8
L7:
  store i1 1, i1* %_8
  br label %L8
L8:
  %_72 = load i1, i1* %_8
  %_73 = zext i1 %_72 to i64
  %_74 = or i64 %_73, 72057594037927936
  %_75 = getelementptr i8, i8 addrspace (1)* null, i64 %_74
  call void @_Bio__println (i8 addrspace (1)* %_75)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_76 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_77 = bitcast i8 addrspace (1)* %_76 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_78 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_79 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_77, i64 0, i64 0
  store i8 addrspace (1)* %_78, i8 addrspace (1)* addrspace (1)* %_79
  %_80 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  %_81 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_77, i64 0, i64 1
  store i8 addrspace (1)* %_80, i8 addrspace (1)* addrspace (1)* %_81
  %_82 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 3)
  %_83 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_77, i64 0, i64 2
  store i8 addrspace (1)* %_82, i8 addrspace (1)* addrspace (1)* %_83
  %_84 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_77 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_85 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_86 = bitcast i8 addrspace (1)* %_85 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_87 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_86, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_87
  %_88 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_86, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_88
  %_89 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_86, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_84, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_89
  %_90 = getelementptr i8, i8 addrspace (1)* %_85, i64 1297036692682702848
  store i8 addrspace (1)* %_90, i8 addrspace (1)** %_10
  %_91 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  store i8 addrspace (1)* %_91, i8 addrspace (1)** %x
  %_92 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_93 = zext i1 1 to i64
  %_94 = or i64 %_93, 72057594037927936
  %_95 = getelementptr i8, i8 addrspace (1)* null, i64 %_94
  %_96 = icmp ne i8 addrspace (1)* %_92, %_95
  store i1 %_96, i1* %_11
  %_97 = load i1, i1* %_11
  %_98 = zext i1 %_97 to i64
  %_99 = or i64 %_98, 72057594037927936
  %_100 = getelementptr i8, i8 addrspace (1)* null, i64 %_99
  call void @_Bio__println (i8 addrspace (1)* %_100)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_101 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_102 = icmp ne i8 addrspace (1)* %_101, null
  store i1 %_102, i1* %_13
  %_103 = load i1, i1* %_13
  %_104 = zext i1 %_103 to i64
  %_105 = or i64 %_104, 72057594037927936
  %_106 = getelementptr i8, i8 addrspace (1)* null, i64 %_105
  call void @_Bio__println (i8 addrspace (1)* %_106)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  ret void
}
