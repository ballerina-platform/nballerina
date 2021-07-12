@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i64
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i8 addrspace (1)*
  %_20 = alloca i64
  %_21 = alloca i8 addrspace (1)*
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i8 addrspace (1)*
  %_26 = alloca i64
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i8 addrspace (1)*
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i8 addrspace (1)*
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i8 addrspace (1)*
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i8 addrspace (1)*
  %_39 = alloca i64
  %_40 = alloca i64
  %_41 = alloca i64
  %_42 = alloca i64
  %_43 = alloca i8 addrspace (1)*
  %_44 = alloca i64
  %_45 = alloca i8 addrspace (1)*
  %_46 = alloca i64
  %_47 = alloca i8 addrspace (1)*
  %_48 = alloca i64
  %_49 = alloca i8 addrspace (1)*
  %_50 = alloca i64
  %_51 = alloca i8
  %_52 = load i8*, i8** @_bal_stack_guard
  %_53 = icmp ult i8* %_51, %_52
  br i1 %_53, label %L3, label %L1
L1:
  %_54 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_54, i64* %_0
  %_55 = load i64, i64* %_0
  %_56 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_55)
  call void @_Bio__println (i8 addrspace (1)* %_56)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_57 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_57, i64* %_2
  %_58 = load i64, i64* %_2
  %_59 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_58)
  call void @_Bio__println (i8 addrspace (1)* %_59)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_60 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_60, i64* %_4
  %_61 = load i64, i64* %_4
  %_62 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_61)
  call void @_Bio__println (i8 addrspace (1)* %_62)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_63 = call i64 @_B_sub (i64 9223372036854775806, i64 1)
  store i64 %_63, i64* %_6
  %_64 = load i64, i64* %_6
  %_65 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_64)
  call void @_Bio__println (i8 addrspace (1)* %_65)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  %_66 = call i64 @_B_sub (i64 1, i64 1)
  store i64 %_66, i64* %_8
  %_67 = load i64, i64* %_8
  %_68 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_67)
  call void @_Bio__println (i8 addrspace (1)* %_68)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_69 = call i64 @_B_sub (i64 0, i64 1)
  store i64 %_69, i64* %_10
  %_70 = load i64, i64* %_10
  %_71 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_70)
  call void @_Bio__println (i8 addrspace (1)* %_71)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_72 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_73 = extractvalue {i64, i1} %_72, 1
  br i1 %_73, label %L5, label %L4
L2:
  %_159 = load i64, i64* %_50
  call void @_bal_panic (i64 %_159)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_74 = extractvalue {i64, i1} %_72, 0
  store i64 %_74, i64* %_12
  %_75 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_76 = extractvalue {i64, i1} %_75, 1
  br i1 %_76, label %L7, label %L6
L5:
  store i64 2817, i64* %_50
  br label %L2
L6:
  %_77 = extractvalue {i64, i1} %_75, 0
  store i64 %_77, i64* %_13
  %_78 = load i64, i64* %_12
  %_79 = load i64, i64* %_13
  %_80 = call i64 @_B_sub (i64 %_78, i64 %_79)
  store i64 %_80, i64* %_14
  %_81 = load i64, i64* %_14
  %_82 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_81)
  call void @_Bio__println (i8 addrspace (1)* %_82)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  %_83 = call i64 @_B_sub (i64 9223372036854775806, i64 0)
  store i64 %_83, i64* %_16
  %_84 = load i64, i64* %_16
  %_85 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_84)
  call void @_Bio__println (i8 addrspace (1)* %_85)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_86 = call i64 @_B_sub (i64 1, i64 0)
  store i64 %_86, i64* %_18
  %_87 = load i64, i64* %_18
  %_88 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_87)
  call void @_Bio__println (i8 addrspace (1)* %_88)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_19
  %_89 = call i64 @_B_sub (i64 0, i64 0)
  store i64 %_89, i64* %_20
  %_90 = load i64, i64* %_20
  %_91 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_90)
  call void @_Bio__println (i8 addrspace (1)* %_91)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_21
  %_92 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_93 = extractvalue {i64, i1} %_92, 1
  br i1 %_93, label %L9, label %L8
L7:
  store i64 2817, i64* %_50
  br label %L2
L8:
  %_94 = extractvalue {i64, i1} %_92, 0
  store i64 %_94, i64* %_22
  %_95 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 0)
  %_96 = extractvalue {i64, i1} %_95, 1
  br i1 %_96, label %L11, label %L10
L9:
  store i64 4097, i64* %_50
  br label %L2
L10:
  %_97 = extractvalue {i64, i1} %_95, 0
  store i64 %_97, i64* %_23
  %_98 = load i64, i64* %_22
  %_99 = load i64, i64* %_23
  %_100 = call i64 @_B_sub (i64 %_98, i64 %_99)
  store i64 %_100, i64* %_24
  %_101 = load i64, i64* %_24
  %_102 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_101)
  call void @_Bio__println (i8 addrspace (1)* %_102)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_25
  %_103 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_104 = extractvalue {i64, i1} %_103, 1
  br i1 %_104, label %L13, label %L12
L11:
  store i64 4097, i64* %_50
  br label %L2
L12:
  %_105 = extractvalue {i64, i1} %_103, 0
  store i64 %_105, i64* %_26
  %_106 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 0)
  %_107 = extractvalue {i64, i1} %_106, 1
  br i1 %_107, label %L15, label %L14
L13:
  store i64 4353, i64* %_50
  br label %L2
L14:
  %_108 = extractvalue {i64, i1} %_106, 0
  store i64 %_108, i64* %_27
  %_109 = load i64, i64* %_26
  %_110 = load i64, i64* %_27
  %_111 = call i64 @_B_sub (i64 %_109, i64 %_110)
  store i64 %_111, i64* %_28
  %_112 = load i64, i64* %_28
  %_113 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_112)
  call void @_Bio__println (i8 addrspace (1)* %_113)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_29
  %_114 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_115 = extractvalue {i64, i1} %_114, 1
  br i1 %_115, label %L17, label %L16
L15:
  store i64 4353, i64* %_50
  br label %L2
L16:
  %_116 = extractvalue {i64, i1} %_114, 0
  store i64 %_116, i64* %_30
  %_117 = load i64, i64* %_30
  %_118 = call i64 @_B_sub (i64 9223372036854775806, i64 %_117)
  store i64 %_118, i64* %_31
  %_119 = load i64, i64* %_31
  %_120 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_119)
  call void @_Bio__println (i8 addrspace (1)* %_120)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_32
  %_121 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_122 = extractvalue {i64, i1} %_121, 1
  br i1 %_122, label %L19, label %L18
L17:
  store i64 4865, i64* %_50
  br label %L2
L18:
  %_123 = extractvalue {i64, i1} %_121, 0
  store i64 %_123, i64* %_33
  %_124 = load i64, i64* %_33
  %_125 = call i64 @_B_sub (i64 1, i64 %_124)
  store i64 %_125, i64* %_34
  %_126 = load i64, i64* %_34
  %_127 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_126)
  call void @_Bio__println (i8 addrspace (1)* %_127)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_35
  %_128 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_129 = extractvalue {i64, i1} %_128, 1
  br i1 %_129, label %L21, label %L20
L19:
  store i64 5121, i64* %_50
  br label %L2
L20:
  %_130 = extractvalue {i64, i1} %_128, 0
  store i64 %_130, i64* %_36
  %_131 = load i64, i64* %_36
  %_132 = call i64 @_B_sub (i64 0, i64 %_131)
  store i64 %_132, i64* %_37
  %_133 = load i64, i64* %_37
  %_134 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_133)
  call void @_Bio__println (i8 addrspace (1)* %_134)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_38
  %_135 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_136 = extractvalue {i64, i1} %_135, 1
  br i1 %_136, label %L23, label %L22
L21:
  store i64 5377, i64* %_50
  br label %L2
L22:
  %_137 = extractvalue {i64, i1} %_135, 0
  store i64 %_137, i64* %_39
  %_138 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_139 = extractvalue {i64, i1} %_138, 1
  br i1 %_139, label %L25, label %L24
L23:
  store i64 5633, i64* %_50
  br label %L2
L24:
  %_140 = extractvalue {i64, i1} %_138, 0
  store i64 %_140, i64* %_40
  %_141 = load i64, i64* %_40
  %_142 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_141)
  %_143 = extractvalue {i64, i1} %_142, 1
  br i1 %_143, label %L27, label %L26
L25:
  store i64 5633, i64* %_50
  br label %L2
L26:
  %_144 = extractvalue {i64, i1} %_142, 0
  store i64 %_144, i64* %_41
  %_145 = load i64, i64* %_39
  %_146 = load i64, i64* %_41
  %_147 = call i64 @_B_sub (i64 %_145, i64 %_146)
  store i64 %_147, i64* %_42
  %_148 = load i64, i64* %_42
  %_149 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_148)
  call void @_Bio__println (i8 addrspace (1)* %_149)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_43
  %_150 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_150, i64* %_44
  %_151 = load i64, i64* %_44
  %_152 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_151)
  call void @_Bio__println (i8 addrspace (1)* %_152)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_45
  %_153 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_153, i64* %_46
  %_154 = load i64, i64* %_46
  %_155 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_154)
  call void @_Bio__println (i8 addrspace (1)* %_155)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_47
  %_156 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_156, i64* %_48
  %_157 = load i64, i64* %_48
  %_158 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_157)
  call void @_Bio__println (i8 addrspace (1)* %_158)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_49
  ret void
L27:
  store i64 5633, i64* %_50
  br label %L2
}
define internal i64 @_B_sub (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_7 = load i64, i64* %a
  %_8 = load i64, i64* %b
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 7428)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 7681, i64* %_3
  br label %L2
}
