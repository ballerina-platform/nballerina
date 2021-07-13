@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i1
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i1
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i1
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i1
  %_16 = alloca i8 addrspace (1)*
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i1
  %_19 = alloca i8 addrspace (1)*
  %_20 = alloca i8 addrspace (1)*
  %_21 = alloca i1
  %_22 = alloca i8 addrspace (1)*
  %_23 = alloca i8 addrspace (1)*
  %_24 = alloca i1
  %_25 = alloca i8 addrspace (1)*
  %_26 = alloca i8 addrspace (1)*
  %_27 = alloca i8
  %_28 = load i8*, i8** @_bal_stack_guard
  %_29 = icmp ult i8* %_27, %_28
  br i1 %_29, label %L2, label %L1
L1:
  %_30 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_30, i8 addrspace (1)** %_1
  %_31 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_31, i8 addrspace (1)** %_2
  %_32 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  %_34 = icmp eq i8 addrspace (1)* %_32, %_33
  br i1 %_34, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_0
  br label %L5
L4:
  %_35 = addrspacecast i8 addrspace (1)* %_32 to i8*
  %_36 = ptrtoint i8* %_35 to i64
  %_37 = and i64 %_36, 2233785415175766016
  %_38 = icmp eq i64 %_37, 504403158265495552
  %_39 = addrspacecast i8 addrspace (1)* %_33 to i8*
  %_40 = ptrtoint i8* %_39 to i64
  %_41 = and i64 %_40, 2233785415175766016
  %_42 = icmp eq i64 %_41, 504403158265495552
  %_43 = and i1 %_38, %_42
  br i1 %_43, label %L6, label %L7
L5:
  %_47 = load i1, i1* %_0
  %_48 = zext i1 %_47 to i64
  %_49 = or i64 %_48, 72057594037927936
  %_50 = getelementptr i8, i8 addrspace (1)* null, i64 %_49
  call void @_Bio__println (i8 addrspace (1)* %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_51 = call i8 addrspace (1)* @_B_mkInt (i64 0)
  store i8 addrspace (1)* %_51, i8 addrspace (1)** %_5
  %_52 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_52, i8 addrspace (1)** %_6
  %_53 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_54 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  %_55 = icmp eq i8 addrspace (1)* %_53, %_54
  br i1 %_55, label %L8, label %L9
L6:
  %_44 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_32)
  %_45 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_33)
  %_46 = icmp eq i64 %_44, %_45
  store i1 %_46, i1* %_0
  br label %L5
L7:
  store i1 0, i1* %_0
  br label %L5
L8:
  store i1 0, i1* %_4
  br label %L10
L9:
  %_56 = addrspacecast i8 addrspace (1)* %_53 to i8*
  %_57 = ptrtoint i8* %_56 to i64
  %_58 = and i64 %_57, 2233785415175766016
  %_59 = icmp eq i64 %_58, 504403158265495552
  %_60 = addrspacecast i8 addrspace (1)* %_54 to i8*
  %_61 = ptrtoint i8* %_60 to i64
  %_62 = and i64 %_61, 2233785415175766016
  %_63 = icmp eq i64 %_62, 504403158265495552
  %_64 = and i1 %_59, %_63
  br i1 %_64, label %L11, label %L12
L10:
  %_68 = load i1, i1* %_4
  %_69 = zext i1 %_68 to i64
  %_70 = or i64 %_69, 72057594037927936
  %_71 = getelementptr i8, i8 addrspace (1)* null, i64 %_70
  call void @_Bio__println (i8 addrspace (1)* %_71)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  %_72 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_72, i8 addrspace (1)** %_9
  %_73 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_73, i8 addrspace (1)** %_10
  %_74 = load i8 addrspace (1)*, i8 addrspace (1)** %_9
  %_75 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_76 = icmp eq i8 addrspace (1)* %_74, %_75
  br i1 %_76, label %L13, label %L14
L11:
  %_65 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_53)
  %_66 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_54)
  %_67 = icmp ne i64 %_65, %_66
  store i1 %_67, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
L13:
  store i1 1, i1* %_8
  br label %L15
L14:
  %_77 = addrspacecast i8 addrspace (1)* %_74 to i8*
  %_78 = ptrtoint i8* %_77 to i64
  %_79 = and i64 %_78, 2233785415175766016
  %_80 = icmp eq i64 %_79, 504403158265495552
  %_81 = addrspacecast i8 addrspace (1)* %_75 to i8*
  %_82 = ptrtoint i8* %_81 to i64
  %_83 = and i64 %_82, 2233785415175766016
  %_84 = icmp eq i64 %_83, 504403158265495552
  %_85 = and i1 %_80, %_84
  br i1 %_85, label %L16, label %L17
L15:
  %_89 = load i1, i1* %_8
  %_90 = zext i1 %_89 to i64
  %_91 = or i64 %_90, 72057594037927936
  %_92 = getelementptr i8, i8 addrspace (1)* null, i64 %_91
  call void @_Bio__println (i8 addrspace (1)* %_92)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_93 = call i8 addrspace (1)* @_B_mkInt (i64 0)
  store i8 addrspace (1)* %_93, i8 addrspace (1)** %_13
  %_94 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_95 = zext i1 0 to i64
  %_96 = or i64 %_95, 72057594037927936
  %_97 = getelementptr i8, i8 addrspace (1)* null, i64 %_96
  %_98 = icmp ne i8 addrspace (1)* %_94, %_97
  store i1 %_98, i1* %_12
  %_99 = load i1, i1* %_12
  %_100 = zext i1 %_99 to i64
  %_101 = or i64 %_100, 72057594037927936
  %_102 = getelementptr i8, i8 addrspace (1)* null, i64 %_101
  call void @_Bio__println (i8 addrspace (1)* %_102)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_103 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_103, i8 addrspace (1)** %_16
  %_104 = load i8 addrspace (1)*, i8 addrspace (1)** %_16
  %_105 = addrspacecast i8 addrspace (1)* %_104 to i8*
  %_106 = ptrtoint i8* %_105 to i64
  %_107 = and i64 %_106, 2233785415175766016
  %_108 = icmp eq i64 %_107, 504403158265495552
  br i1 %_108, label %L18, label %L19
L16:
  %_86 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_74)
  %_87 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_75)
  %_88 = icmp eq i64 %_86, %_87
  store i1 %_88, i1* %_8
  br label %L15
L17:
  store i1 0, i1* %_8
  br label %L15
L18:
  %_109 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_104)
  %_110 = icmp eq i64 %_109, 1
  store i1 %_110, i1* %_15
  br label %L20
L19:
  store i1 0, i1* %_15
  br label %L20
L20:
  %_111 = load i1, i1* %_15
  %_112 = zext i1 %_111 to i64
  %_113 = or i64 %_112, 72057594037927936
  %_114 = getelementptr i8, i8 addrspace (1)* null, i64 %_113
  call void @_Bio__println (i8 addrspace (1)* %_114)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_115 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_115, i8 addrspace (1)** %_19
  %_116 = load i8 addrspace (1)*, i8 addrspace (1)** %_19
  %_117 = addrspacecast i8 addrspace (1)* %_116 to i8*
  %_118 = ptrtoint i8* %_117 to i64
  %_119 = and i64 %_118, 2233785415175766016
  %_120 = icmp eq i64 %_119, 504403158265495552
  br i1 %_120, label %L21, label %L22
L21:
  %_121 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_116)
  %_122 = icmp ne i64 %_121, 0
  store i1 %_122, i1* %_18
  br label %L23
L22:
  store i1 1, i1* %_18
  br label %L23
L23:
  %_123 = load i1, i1* %_18
  %_124 = zext i1 %_123 to i64
  %_125 = or i64 %_124, 72057594037927936
  %_126 = getelementptr i8, i8 addrspace (1)* null, i64 %_125
  call void @_Bio__println (i8 addrspace (1)* %_126)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_127 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_127, i8 addrspace (1)** %_22
  %_128 = load i8 addrspace (1)*, i8 addrspace (1)** %_22
  %_129 = zext i1 1 to i64
  %_130 = or i64 %_129, 72057594037927936
  %_131 = getelementptr i8, i8 addrspace (1)* null, i64 %_130
  %_132 = icmp eq i8 addrspace (1)* %_128, %_131
  store i1 %_132, i1* %_21
  %_133 = load i1, i1* %_21
  %_134 = zext i1 %_133 to i64
  %_135 = or i64 %_134, 72057594037927936
  %_136 = getelementptr i8, i8 addrspace (1)* null, i64 %_135
  call void @_Bio__println (i8 addrspace (1)* %_136)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_137 = call i8 addrspace (1)* @_B_mkInt (i64 0)
  store i8 addrspace (1)* %_137, i8 addrspace (1)** %_25
  %_138 = load i8 addrspace (1)*, i8 addrspace (1)** %_25
  %_139 = zext i1 0 to i64
  %_140 = or i64 %_139, 72057594037927936
  %_141 = getelementptr i8, i8 addrspace (1)* null, i64 %_140
  %_142 = icmp ne i8 addrspace (1)* %_138, %_141
  store i1 %_142, i1* %_24
  %_143 = load i1, i1* %_24
  %_144 = zext i1 %_143 to i64
  %_145 = or i64 %_144, 72057594037927936
  %_146 = getelementptr i8, i8 addrspace (1)* null, i64 %_145
  call void @_Bio__println (i8 addrspace (1)* %_146)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
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
  call void @_bal_panic (i64 3588)
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
  call void @_bal_panic (i64 4612)
  unreachable
}
