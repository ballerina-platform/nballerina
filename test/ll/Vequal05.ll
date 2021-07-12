@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
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
  %_31 = and i64 %_30, 2233785415175766016
  %_32 = icmp eq i64 %_31, 504403158265495552
  br i1 %_32, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_33 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_28)
  %_34 = icmp eq i64 %_33, 2
  store i1 %_34, i1* %_0
  br label %L5
L4:
  store i1 0, i1* %_0
  br label %L5
L5:
  %_35 = load i1, i1* %_0
  %_36 = zext i1 %_35 to i64
  %_37 = or i64 %_36, 72057594037927936
  %_38 = getelementptr i8, i8 addrspace (1)* null, i64 %_37
  call void @_Bio__println (i8 addrspace (1)* %_38)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_39 = call i8 addrspace (1)* @_B_mkInt (i64 17)
  store i8 addrspace (1)* %_39, i8 addrspace (1)** %_4
  %_40 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_41 = addrspacecast i8 addrspace (1)* %_40 to i8*
  %_42 = ptrtoint i8* %_41 to i64
  %_43 = and i64 %_42, 2233785415175766016
  %_44 = icmp eq i64 %_43, 504403158265495552
  br i1 %_44, label %L6, label %L7
L6:
  %_45 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_40)
  %_46 = icmp ne i64 %_45, 17
  store i1 %_46, i1* %_3
  br label %L8
L7:
  store i1 1, i1* %_3
  br label %L8
L8:
  %_47 = load i1, i1* %_3
  %_48 = zext i1 %_47 to i64
  %_49 = or i64 %_48, 72057594037927936
  %_50 = getelementptr i8, i8 addrspace (1)* null, i64 %_49
  call void @_Bio__println (i8 addrspace (1)* %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_51 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_51, i8 addrspace (1)** %_7
  %_52 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_53 = zext i1 1 to i64
  %_54 = or i64 %_53, 72057594037927936
  %_55 = getelementptr i8, i8 addrspace (1)* null, i64 %_54
  %_56 = icmp eq i8 addrspace (1)* %_52, %_55
  store i1 %_56, i1* %_6
  %_57 = load i1, i1* %_6
  %_58 = zext i1 %_57 to i64
  %_59 = or i64 %_58, 72057594037927936
  %_60 = getelementptr i8, i8 addrspace (1)* null, i64 %_59
  call void @_Bio__println (i8 addrspace (1)* %_60)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_61 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_61, i8 addrspace (1)** %_10
  %_62 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_63 = zext i1 0 to i64
  %_64 = or i64 %_63, 72057594037927936
  %_65 = getelementptr i8, i8 addrspace (1)* null, i64 %_64
  %_66 = icmp ne i8 addrspace (1)* %_62, %_65
  store i1 %_66, i1* %_9
  %_67 = load i1, i1* %_9
  %_68 = zext i1 %_67 to i64
  %_69 = or i64 %_68, 72057594037927936
  %_70 = getelementptr i8, i8 addrspace (1)* null, i64 %_69
  call void @_Bio__println (i8 addrspace (1)* %_70)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  store i64 2, i64* %n
  %_71 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_71, i8 addrspace (1)** %_13
  %_72 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_73 = load i64, i64* %n
  %_74 = addrspacecast i8 addrspace (1)* %_72 to i8*
  %_75 = ptrtoint i8* %_74 to i64
  %_76 = and i64 %_75, 2233785415175766016
  %_77 = icmp eq i64 %_76, 504403158265495552
  br i1 %_77, label %L9, label %L10
L9:
  %_78 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_72)
  %_79 = icmp eq i64 %_78, %_73
  store i1 %_79, i1* %_12
  br label %L11
L10:
  store i1 0, i1* %_12
  br label %L11
L11:
  %_80 = load i1, i1* %_12
  %_81 = zext i1 %_80 to i64
  %_82 = or i64 %_81, 72057594037927936
  %_83 = getelementptr i8, i8 addrspace (1)* null, i64 %_82
  call void @_Bio__println (i8 addrspace (1)* %_83)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  store i64 17, i64* %n
  %_84 = call i8 addrspace (1)* @_B_mkInt (i64 17)
  store i8 addrspace (1)* %_84, i8 addrspace (1)** %_16
  %_85 = load i64, i64* %n
  %_86 = load i8 addrspace (1)*, i8 addrspace (1)** %_16
  %_87 = addrspacecast i8 addrspace (1)* %_86 to i8*
  %_88 = ptrtoint i8* %_87 to i64
  %_89 = and i64 %_88, 2233785415175766016
  %_90 = icmp eq i64 %_89, 504403158265495552
  br i1 %_90, label %L12, label %L13
L12:
  %_91 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_86)
  %_92 = icmp ne i64 %_91, %_85
  store i1 %_92, i1* %_15
  br label %L14
L13:
  store i1 1, i1* %_15
  br label %L14
L14:
  %_93 = load i1, i1* %_15
  %_94 = zext i1 %_93 to i64
  %_95 = or i64 %_94, 72057594037927936
  %_96 = getelementptr i8, i8 addrspace (1)* null, i64 %_95
  call void @_Bio__println (i8 addrspace (1)* %_96)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  store i1 1, i1* %b
  %_97 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_97, i8 addrspace (1)** %_19
  %_98 = load i8 addrspace (1)*, i8 addrspace (1)** %_19
  %_99 = load i1, i1* %b
  %_100 = zext i1 %_99 to i64
  %_101 = or i64 %_100, 72057594037927936
  %_102 = getelementptr i8, i8 addrspace (1)* null, i64 %_101
  %_103 = icmp eq i8 addrspace (1)* %_98, %_102
  store i1 %_103, i1* %_18
  %_104 = load i1, i1* %_18
  %_105 = zext i1 %_104 to i64
  %_106 = or i64 %_105, 72057594037927936
  %_107 = getelementptr i8, i8 addrspace (1)* null, i64 %_106
  call void @_Bio__println (i8 addrspace (1)* %_107)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  store i1 0, i1* %b
  %_108 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_108, i8 addrspace (1)** %_22
  %_109 = load i1, i1* %b
  %_110 = load i8 addrspace (1)*, i8 addrspace (1)** %_22
  %_111 = zext i1 %_109 to i64
  %_112 = or i64 %_111, 72057594037927936
  %_113 = getelementptr i8, i8 addrspace (1)* null, i64 %_112
  %_114 = icmp ne i8 addrspace (1)* %_110, %_113
  store i1 %_114, i1* %_21
  %_115 = load i1, i1* %_21
  %_116 = zext i1 %_115 to i64
  %_117 = or i64 %_116, 72057594037927936
  %_118 = getelementptr i8, i8 addrspace (1)* null, i64 %_117
  call void @_Bio__println (i8 addrspace (1)* %_118)
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
  %_5 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_4)
  ret i8 addrspace (1)* %_5
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
