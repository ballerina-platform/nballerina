@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_alloc (i64)
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
  %_37 = and i64 %_36, 9151314442816847872
  %_38 = icmp eq i64 %_37, 504403158265495552
  %_39 = addrspacecast i8 addrspace (1)* %_33 to i8*
  %_40 = ptrtoint i8* %_39 to i64
  %_41 = and i64 %_40, 9151314442816847872
  %_42 = icmp eq i64 %_41, 504403158265495552
  %_43 = and i1 %_38, %_42
  br i1 %_43, label %L6, label %L7
L5:
  %_51 = load i1, i1* %_0
  %_52 = zext i1 %_51 to i64
  %_53 = or i64 %_52, 72057594037927936
  %_54 = getelementptr i8, i8 addrspace (1)* null, i64 %_53
  call void @_Bio__println (i8 addrspace (1)* %_54)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_55 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_55, i8 addrspace (1)** %_5
  %_56 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_57 = addrspacecast i8 addrspace (1)* %_56 to i8*
  %_58 = ptrtoint i8* %_57 to i64
  %_59 = and i64 %_58, 9151314442816847872
  %_60 = icmp eq i64 %_59, 504403158265495552
  br i1 %_60, label %L8, label %L9
L6:
  %_44 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_32, i64 72057594037927935)
  %_45 = bitcast i8 addrspace (1)* %_44 to i64 addrspace (1)*
  %_46 = load i64, i64 addrspace (1)* %_45, align 8
  %_47 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_33, i64 72057594037927935)
  %_48 = bitcast i8 addrspace (1)* %_47 to i64 addrspace (1)*
  %_49 = load i64, i64 addrspace (1)* %_48, align 8
  %_50 = icmp eq i64 %_46, %_49
  store i1 %_50, i1* %_0
  br label %L5
L7:
  store i1 0, i1* %_0
  br label %L5
L8:
  %_61 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_56, i64 72057594037927935)
  %_62 = bitcast i8 addrspace (1)* %_61 to i64 addrspace (1)*
  %_63 = load i64, i64 addrspace (1)* %_62, align 8
  %_64 = icmp ne i64 %_63, 0
  store i1 %_64, i1* %_4
  br label %L10
L9:
  store i1 1, i1* %_4
  br label %L10
L10:
  %_65 = load i1, i1* %_4
  %_66 = zext i1 %_65 to i64
  %_67 = or i64 %_66, 72057594037927936
  %_68 = getelementptr i8, i8 addrspace (1)* null, i64 %_67
  call void @_Bio__println (i8 addrspace (1)* %_68)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_69 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_69, i8 addrspace (1)** %_8
  %_70 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_70, i8 addrspace (1)** %_9
  %_71 = load i8 addrspace (1)*, i8 addrspace (1)** %_8
  %_72 = load i8 addrspace (1)*, i8 addrspace (1)** %_9
  %_73 = icmp eq i8 addrspace (1)* %_71, %_72
  br i1 %_73, label %L11, label %L12
L11:
  store i1 1, i1* %_7
  br label %L13
L12:
  %_74 = addrspacecast i8 addrspace (1)* %_71 to i8*
  %_75 = ptrtoint i8* %_74 to i64
  %_76 = and i64 %_75, 9151314442816847872
  %_77 = icmp eq i64 %_76, 504403158265495552
  %_78 = addrspacecast i8 addrspace (1)* %_72 to i8*
  %_79 = ptrtoint i8* %_78 to i64
  %_80 = and i64 %_79, 9151314442816847872
  %_81 = icmp eq i64 %_80, 504403158265495552
  %_82 = and i1 %_77, %_81
  br i1 %_82, label %L14, label %L15
L13:
  %_90 = load i1, i1* %_7
  %_91 = zext i1 %_90 to i64
  %_92 = or i64 %_91, 72057594037927936
  %_93 = getelementptr i8, i8 addrspace (1)* null, i64 %_92
  call void @_Bio__println (i8 addrspace (1)* %_93)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_94 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_94, i8 addrspace (1)** %_12
  %_95 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_95, i8 addrspace (1)** %_13
  %_96 = load i8 addrspace (1)*, i8 addrspace (1)** %_12
  %_97 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_98 = icmp eq i8 addrspace (1)* %_96, %_97
  br i1 %_98, label %L16, label %L17
L14:
  %_83 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_71, i64 72057594037927935)
  %_84 = bitcast i8 addrspace (1)* %_83 to i64 addrspace (1)*
  %_85 = load i64, i64 addrspace (1)* %_84, align 8
  %_86 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_72, i64 72057594037927935)
  %_87 = bitcast i8 addrspace (1)* %_86 to i64 addrspace (1)*
  %_88 = load i64, i64 addrspace (1)* %_87, align 8
  %_89 = icmp eq i64 %_85, %_88
  store i1 %_89, i1* %_7
  br label %L13
L15:
  store i1 0, i1* %_7
  br label %L13
L16:
  store i1 0, i1* %_11
  br label %L18
L17:
  %_99 = addrspacecast i8 addrspace (1)* %_96 to i8*
  %_100 = ptrtoint i8* %_99 to i64
  %_101 = and i64 %_100, 9151314442816847872
  %_102 = icmp eq i64 %_101, 504403158265495552
  %_103 = addrspacecast i8 addrspace (1)* %_97 to i8*
  %_104 = ptrtoint i8* %_103 to i64
  %_105 = and i64 %_104, 9151314442816847872
  %_106 = icmp eq i64 %_105, 504403158265495552
  %_107 = and i1 %_102, %_106
  br i1 %_107, label %L19, label %L20
L18:
  %_115 = load i1, i1* %_11
  %_116 = zext i1 %_115 to i64
  %_117 = or i64 %_116, 72057594037927936
  %_118 = getelementptr i8, i8 addrspace (1)* null, i64 %_117
  call void @_Bio__println (i8 addrspace (1)* %_118)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_119 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_119, i8 addrspace (1)** %_16
  %_120 = load i8 addrspace (1)*, i8 addrspace (1)** %_16
  %_121 = zext i1 0 to i64
  %_122 = or i64 %_121, 72057594037927936
  %_123 = getelementptr i8, i8 addrspace (1)* null, i64 %_122
  %_124 = icmp ne i8 addrspace (1)* %_120, %_123
  store i1 %_124, i1* %_15
  %_125 = load i1, i1* %_15
  %_126 = zext i1 %_125 to i64
  %_127 = or i64 %_126, 72057594037927936
  %_128 = getelementptr i8, i8 addrspace (1)* null, i64 %_127
  call void @_Bio__println (i8 addrspace (1)* %_128)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_129 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_129, i8 addrspace (1)** %_19
  %_130 = load i8 addrspace (1)*, i8 addrspace (1)** %_19
  %_131 = zext i1 1 to i64
  %_132 = or i64 %_131, 72057594037927936
  %_133 = getelementptr i8, i8 addrspace (1)* null, i64 %_132
  %_134 = icmp ne i8 addrspace (1)* %_130, %_133
  store i1 %_134, i1* %_18
  %_135 = load i1, i1* %_18
  %_136 = zext i1 %_135 to i64
  %_137 = or i64 %_136, 72057594037927936
  %_138 = getelementptr i8, i8 addrspace (1)* null, i64 %_137
  call void @_Bio__println (i8 addrspace (1)* %_138)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_139 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_139, i8 addrspace (1)** %_22
  %_140 = load i8 addrspace (1)*, i8 addrspace (1)** %_22
  %_141 = zext i1 1 to i64
  %_142 = or i64 %_141, 72057594037927936
  %_143 = getelementptr i8, i8 addrspace (1)* null, i64 %_142
  %_144 = icmp eq i8 addrspace (1)* %_140, %_143
  store i1 %_144, i1* %_21
  %_145 = load i1, i1* %_21
  %_146 = zext i1 %_145 to i64
  %_147 = or i64 %_146, 72057594037927936
  %_148 = getelementptr i8, i8 addrspace (1)* null, i64 %_147
  call void @_Bio__println (i8 addrspace (1)* %_148)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_149 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_149, i8 addrspace (1)** %_25
  %_150 = load i8 addrspace (1)*, i8 addrspace (1)** %_25
  %_151 = zext i1 0 to i64
  %_152 = or i64 %_151, 72057594037927936
  %_153 = getelementptr i8, i8 addrspace (1)* null, i64 %_152
  %_154 = icmp ne i8 addrspace (1)* %_150, %_153
  store i1 %_154, i1* %_24
  %_155 = load i1, i1* %_24
  %_156 = zext i1 %_155 to i64
  %_157 = or i64 %_156, 72057594037927936
  %_158 = getelementptr i8, i8 addrspace (1)* null, i64 %_157
  call void @_Bio__println (i8 addrspace (1)* %_158)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  ret void
L19:
  %_108 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_96, i64 72057594037927935)
  %_109 = bitcast i8 addrspace (1)* %_108 to i64 addrspace (1)*
  %_110 = load i64, i64 addrspace (1)* %_109, align 8
  %_111 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_97, i64 72057594037927935)
  %_112 = bitcast i8 addrspace (1)* %_111 to i64 addrspace (1)*
  %_113 = load i64, i64 addrspace (1)* %_112, align 8
  %_114 = icmp ne i64 %_110, %_113
  store i1 %_114, i1* %_11
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
