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
  %_7 = alloca i1
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i1
  %_12 = alloca i8 addrspace (1)*
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
  %_30 = call i8 addrspace (1)* @_B_mkInt (i64 0)
  store i8 addrspace (1)* %_30, i8 addrspace (1)** %_1
  %_31 = call i8 addrspace (1)* @_B_mkNil ()
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
  %_51 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_51, i8 addrspace (1)** %_5
  %_52 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_53 = addrspacecast i8 addrspace (1)* %_52 to i8*
  %_54 = ptrtoint i8* %_53 to i64
  %_55 = and i64 %_54, 2233785415175766016
  %_56 = icmp eq i64 %_55, 504403158265495552
  br i1 %_56, label %L8, label %L9
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
  %_57 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_52)
  %_58 = icmp ne i64 %_57, 0
  store i1 %_58, i1* %_4
  br label %L10
L9:
  store i1 1, i1* %_4
  br label %L10
L10:
  %_59 = load i1, i1* %_4
  %_60 = zext i1 %_59 to i64
  %_61 = or i64 %_60, 72057594037927936
  %_62 = getelementptr i8, i8 addrspace (1)* null, i64 %_61
  call void @_Bio__println (i8 addrspace (1)* %_62)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_63 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_63, i8 addrspace (1)** %_8
  %_64 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_64, i8 addrspace (1)** %_9
  %_65 = load i8 addrspace (1)*, i8 addrspace (1)** %_8
  %_66 = load i8 addrspace (1)*, i8 addrspace (1)** %_9
  %_67 = icmp eq i8 addrspace (1)* %_65, %_66
  br i1 %_67, label %L11, label %L12
L11:
  store i1 1, i1* %_7
  br label %L13
L12:
  %_68 = addrspacecast i8 addrspace (1)* %_65 to i8*
  %_69 = ptrtoint i8* %_68 to i64
  %_70 = and i64 %_69, 2233785415175766016
  %_71 = icmp eq i64 %_70, 504403158265495552
  %_72 = addrspacecast i8 addrspace (1)* %_66 to i8*
  %_73 = ptrtoint i8* %_72 to i64
  %_74 = and i64 %_73, 2233785415175766016
  %_75 = icmp eq i64 %_74, 504403158265495552
  %_76 = and i1 %_71, %_75
  br i1 %_76, label %L14, label %L15
L13:
  %_80 = load i1, i1* %_7
  %_81 = zext i1 %_80 to i64
  %_82 = or i64 %_81, 72057594037927936
  %_83 = getelementptr i8, i8 addrspace (1)* null, i64 %_82
  call void @_Bio__println (i8 addrspace (1)* %_83)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_84 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_84, i8 addrspace (1)** %_12
  %_85 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_85, i8 addrspace (1)** %_13
  %_86 = load i8 addrspace (1)*, i8 addrspace (1)** %_12
  %_87 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_88 = icmp eq i8 addrspace (1)* %_86, %_87
  br i1 %_88, label %L16, label %L17
L14:
  %_77 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_65)
  %_78 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_66)
  %_79 = icmp eq i64 %_77, %_78
  store i1 %_79, i1* %_7
  br label %L13
L15:
  store i1 0, i1* %_7
  br label %L13
L16:
  store i1 0, i1* %_11
  br label %L18
L17:
  %_89 = addrspacecast i8 addrspace (1)* %_86 to i8*
  %_90 = ptrtoint i8* %_89 to i64
  %_91 = and i64 %_90, 2233785415175766016
  %_92 = icmp eq i64 %_91, 504403158265495552
  %_93 = addrspacecast i8 addrspace (1)* %_87 to i8*
  %_94 = ptrtoint i8* %_93 to i64
  %_95 = and i64 %_94, 2233785415175766016
  %_96 = icmp eq i64 %_95, 504403158265495552
  %_97 = and i1 %_92, %_96
  br i1 %_97, label %L19, label %L20
L18:
  %_101 = load i1, i1* %_11
  %_102 = zext i1 %_101 to i64
  %_103 = or i64 %_102, 72057594037927936
  %_104 = getelementptr i8, i8 addrspace (1)* null, i64 %_103
  call void @_Bio__println (i8 addrspace (1)* %_104)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_105 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_105, i8 addrspace (1)** %_16
  %_106 = load i8 addrspace (1)*, i8 addrspace (1)** %_16
  %_107 = zext i1 0 to i64
  %_108 = or i64 %_107, 72057594037927936
  %_109 = getelementptr i8, i8 addrspace (1)* null, i64 %_108
  %_110 = icmp ne i8 addrspace (1)* %_106, %_109
  store i1 %_110, i1* %_15
  %_111 = load i1, i1* %_15
  %_112 = zext i1 %_111 to i64
  %_113 = or i64 %_112, 72057594037927936
  %_114 = getelementptr i8, i8 addrspace (1)* null, i64 %_113
  call void @_Bio__println (i8 addrspace (1)* %_114)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_115 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_115, i8 addrspace (1)** %_19
  %_116 = load i8 addrspace (1)*, i8 addrspace (1)** %_19
  %_117 = zext i1 1 to i64
  %_118 = or i64 %_117, 72057594037927936
  %_119 = getelementptr i8, i8 addrspace (1)* null, i64 %_118
  %_120 = icmp ne i8 addrspace (1)* %_116, %_119
  store i1 %_120, i1* %_18
  %_121 = load i1, i1* %_18
  %_122 = zext i1 %_121 to i64
  %_123 = or i64 %_122, 72057594037927936
  %_124 = getelementptr i8, i8 addrspace (1)* null, i64 %_123
  call void @_Bio__println (i8 addrspace (1)* %_124)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_125 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_125, i8 addrspace (1)** %_22
  %_126 = load i8 addrspace (1)*, i8 addrspace (1)** %_22
  %_127 = zext i1 1 to i64
  %_128 = or i64 %_127, 72057594037927936
  %_129 = getelementptr i8, i8 addrspace (1)* null, i64 %_128
  %_130 = icmp eq i8 addrspace (1)* %_126, %_129
  store i1 %_130, i1* %_21
  %_131 = load i1, i1* %_21
  %_132 = zext i1 %_131 to i64
  %_133 = or i64 %_132, 72057594037927936
  %_134 = getelementptr i8, i8 addrspace (1)* null, i64 %_133
  call void @_Bio__println (i8 addrspace (1)* %_134)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_135 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_135, i8 addrspace (1)** %_25
  %_136 = load i8 addrspace (1)*, i8 addrspace (1)** %_25
  %_137 = zext i1 0 to i64
  %_138 = or i64 %_137, 72057594037927936
  %_139 = getelementptr i8, i8 addrspace (1)* null, i64 %_138
  %_140 = icmp ne i8 addrspace (1)* %_136, %_139
  store i1 %_140, i1* %_24
  %_141 = load i1, i1* %_24
  %_142 = zext i1 %_141 to i64
  %_143 = or i64 %_142, 72057594037927936
  %_144 = getelementptr i8, i8 addrspace (1)* null, i64 %_143
  call void @_Bio__println (i8 addrspace (1)* %_144)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  ret void
L19:
  %_98 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_86)
  %_99 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_87)
  %_100 = icmp ne i64 %_98, %_99
  store i1 %_100, i1* %_11
  br label %L18
L20:
  store i1 1, i1* %_11
  br label %L18
}
define internal i8 addrspace (1)* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8 addrspace (1)* null
L2:
  call void @_bal_panic (i64 3588)
  unreachable
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
