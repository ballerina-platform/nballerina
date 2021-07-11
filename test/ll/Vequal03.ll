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
  %_55 = call i8 addrspace (1)* @_B_mkInt (i64 0)
  store i8 addrspace (1)* %_55, i8 addrspace (1)** %_5
  %_56 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_56, i8 addrspace (1)** %_6
  %_57 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_58 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  %_59 = icmp eq i8 addrspace (1)* %_57, %_58
  br i1 %_59, label %L8, label %L9
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
  store i1 0, i1* %_4
  br label %L10
L9:
  %_60 = addrspacecast i8 addrspace (1)* %_57 to i8*
  %_61 = ptrtoint i8* %_60 to i64
  %_62 = and i64 %_61, 9151314442816847872
  %_63 = icmp eq i64 %_62, 504403158265495552
  %_64 = addrspacecast i8 addrspace (1)* %_58 to i8*
  %_65 = ptrtoint i8* %_64 to i64
  %_66 = and i64 %_65, 9151314442816847872
  %_67 = icmp eq i64 %_66, 504403158265495552
  %_68 = and i1 %_63, %_67
  br i1 %_68, label %L11, label %L12
L10:
  %_76 = load i1, i1* %_4
  %_77 = zext i1 %_76 to i64
  %_78 = or i64 %_77, 72057594037927936
  %_79 = getelementptr i8, i8 addrspace (1)* null, i64 %_78
  call void @_Bio__println (i8 addrspace (1)* %_79)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  %_80 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_80, i8 addrspace (1)** %_9
  %_81 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_81, i8 addrspace (1)** %_10
  %_82 = load i8 addrspace (1)*, i8 addrspace (1)** %_9
  %_83 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_84 = icmp eq i8 addrspace (1)* %_82, %_83
  br i1 %_84, label %L13, label %L14
L11:
  %_69 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_57, i64 72057594037927935)
  %_70 = bitcast i8 addrspace (1)* %_69 to i64 addrspace (1)*
  %_71 = load i64, i64 addrspace (1)* %_70, align 8
  %_72 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_58, i64 72057594037927935)
  %_73 = bitcast i8 addrspace (1)* %_72 to i64 addrspace (1)*
  %_74 = load i64, i64 addrspace (1)* %_73, align 8
  %_75 = icmp ne i64 %_71, %_74
  store i1 %_75, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
L13:
  store i1 1, i1* %_8
  br label %L15
L14:
  %_85 = addrspacecast i8 addrspace (1)* %_82 to i8*
  %_86 = ptrtoint i8* %_85 to i64
  %_87 = and i64 %_86, 9151314442816847872
  %_88 = icmp eq i64 %_87, 504403158265495552
  %_89 = addrspacecast i8 addrspace (1)* %_83 to i8*
  %_90 = ptrtoint i8* %_89 to i64
  %_91 = and i64 %_90, 9151314442816847872
  %_92 = icmp eq i64 %_91, 504403158265495552
  %_93 = and i1 %_88, %_92
  br i1 %_93, label %L16, label %L17
L15:
  %_101 = load i1, i1* %_8
  %_102 = zext i1 %_101 to i64
  %_103 = or i64 %_102, 72057594037927936
  %_104 = getelementptr i8, i8 addrspace (1)* null, i64 %_103
  call void @_Bio__println (i8 addrspace (1)* %_104)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_105 = call i8 addrspace (1)* @_B_mkInt (i64 0)
  store i8 addrspace (1)* %_105, i8 addrspace (1)** %_13
  %_106 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_107 = zext i1 0 to i64
  %_108 = or i64 %_107, 72057594037927936
  %_109 = getelementptr i8, i8 addrspace (1)* null, i64 %_108
  %_110 = icmp ne i8 addrspace (1)* %_106, %_109
  store i1 %_110, i1* %_12
  %_111 = load i1, i1* %_12
  %_112 = zext i1 %_111 to i64
  %_113 = or i64 %_112, 72057594037927936
  %_114 = getelementptr i8, i8 addrspace (1)* null, i64 %_113
  call void @_Bio__println (i8 addrspace (1)* %_114)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  %_115 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_115, i8 addrspace (1)** %_16
  %_116 = load i8 addrspace (1)*, i8 addrspace (1)** %_16
  %_117 = addrspacecast i8 addrspace (1)* %_116 to i8*
  %_118 = ptrtoint i8* %_117 to i64
  %_119 = and i64 %_118, 9151314442816847872
  %_120 = icmp eq i64 %_119, 504403158265495552
  br i1 %_120, label %L18, label %L19
L16:
  %_94 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_82, i64 72057594037927935)
  %_95 = bitcast i8 addrspace (1)* %_94 to i64 addrspace (1)*
  %_96 = load i64, i64 addrspace (1)* %_95, align 8
  %_97 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_83, i64 72057594037927935)
  %_98 = bitcast i8 addrspace (1)* %_97 to i64 addrspace (1)*
  %_99 = load i64, i64 addrspace (1)* %_98, align 8
  %_100 = icmp eq i64 %_96, %_99
  store i1 %_100, i1* %_8
  br label %L15
L17:
  store i1 0, i1* %_8
  br label %L15
L18:
  %_121 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_116, i64 72057594037927935)
  %_122 = bitcast i8 addrspace (1)* %_121 to i64 addrspace (1)*
  %_123 = load i64, i64 addrspace (1)* %_122, align 8
  %_124 = icmp eq i64 %_123, 1
  store i1 %_124, i1* %_15
  br label %L20
L19:
  store i1 0, i1* %_15
  br label %L20
L20:
  %_125 = load i1, i1* %_15
  %_126 = zext i1 %_125 to i64
  %_127 = or i64 %_126, 72057594037927936
  %_128 = getelementptr i8, i8 addrspace (1)* null, i64 %_127
  call void @_Bio__println (i8 addrspace (1)* %_128)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_129 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_129, i8 addrspace (1)** %_19
  %_130 = load i8 addrspace (1)*, i8 addrspace (1)** %_19
  %_131 = addrspacecast i8 addrspace (1)* %_130 to i8*
  %_132 = ptrtoint i8* %_131 to i64
  %_133 = and i64 %_132, 9151314442816847872
  %_134 = icmp eq i64 %_133, 504403158265495552
  br i1 %_134, label %L21, label %L22
L21:
  %_135 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_130, i64 72057594037927935)
  %_136 = bitcast i8 addrspace (1)* %_135 to i64 addrspace (1)*
  %_137 = load i64, i64 addrspace (1)* %_136, align 8
  %_138 = icmp ne i64 %_137, 0
  store i1 %_138, i1* %_18
  br label %L23
L22:
  store i1 1, i1* %_18
  br label %L23
L23:
  %_139 = load i1, i1* %_18
  %_140 = zext i1 %_139 to i64
  %_141 = or i64 %_140, 72057594037927936
  %_142 = getelementptr i8, i8 addrspace (1)* null, i64 %_141
  call void @_Bio__println (i8 addrspace (1)* %_142)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_143 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_143, i8 addrspace (1)** %_22
  %_144 = load i8 addrspace (1)*, i8 addrspace (1)** %_22
  %_145 = zext i1 1 to i64
  %_146 = or i64 %_145, 72057594037927936
  %_147 = getelementptr i8, i8 addrspace (1)* null, i64 %_146
  %_148 = icmp eq i8 addrspace (1)* %_144, %_147
  store i1 %_148, i1* %_21
  %_149 = load i1, i1* %_21
  %_150 = zext i1 %_149 to i64
  %_151 = or i64 %_150, 72057594037927936
  %_152 = getelementptr i8, i8 addrspace (1)* null, i64 %_151
  call void @_Bio__println (i8 addrspace (1)* %_152)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_153 = call i8 addrspace (1)* @_B_mkInt (i64 0)
  store i8 addrspace (1)* %_153, i8 addrspace (1)** %_25
  %_154 = load i8 addrspace (1)*, i8 addrspace (1)** %_25
  %_155 = zext i1 0 to i64
  %_156 = or i64 %_155, 72057594037927936
  %_157 = getelementptr i8, i8 addrspace (1)* null, i64 %_156
  %_158 = icmp ne i8 addrspace (1)* %_154, %_157
  store i1 %_158, i1* %_24
  %_159 = load i1, i1* %_24
  %_160 = zext i1 %_159 to i64
  %_161 = or i64 %_160, 72057594037927936
  %_162 = getelementptr i8, i8 addrspace (1)* null, i64 %_161
  call void @_Bio__println (i8 addrspace (1)* %_162)
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
  %_5 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_6 = bitcast i8 addrspace (1)* %_5 to i64 addrspace (1)*
  store i64 %_4, i64 addrspace (1)* %_6, align 8
  %_7 = getelementptr i8, i8 addrspace (1)* %_5, i64 504403158265495552
  ret i8 addrspace (1)* %_7
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
