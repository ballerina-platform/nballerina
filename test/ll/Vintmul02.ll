@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i64
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i8 addrspace (1)*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8 addrspace (1)*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8 addrspace (1)*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i8 addrspace (1)*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8 addrspace (1)*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8 addrspace (1)*
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i64
  %_40 = alloca i8 addrspace (1)*
  %_41 = alloca i64
  %_42 = alloca i8
  %_43 = load i8*, i8** @_bal_stack_guard
  %_44 = icmp ult i8* %_42, %_43
  br i1 %_44, label %L3, label %L1
L1:
  %_45 = call i64 @_B_mul (i64 9223372036854775806, i64 1)
  store i64 %_45, i64* %_0
  %_46 = load i64, i64* %_0
  %_47 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_48 = bitcast i8 addrspace (1)* %_47 to i64 addrspace (1)*
  store i64 %_46, i64 addrspace (1)* %_48, align 8
  %_49 = getelementptr i8, i8 addrspace (1)* %_47, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_49)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_50 = call i64 @_B_mul (i64 9223372036854775806, i64 0)
  store i64 %_50, i64* %_2
  %_51 = load i64, i64* %_2
  %_52 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_53 = bitcast i8 addrspace (1)* %_52 to i64 addrspace (1)*
  store i64 %_51, i64 addrspace (1)* %_53, align 8
  %_54 = getelementptr i8, i8 addrspace (1)* %_52, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_54)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_55 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_56 = extractvalue {i64, i1} %_55, 1
  br i1 %_56, label %L5, label %L4
L2:
  %_164 = load i64, i64* %_41
  call void @_bal_panic (i64 %_164)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_57 = extractvalue {i64, i1} %_55, 0
  store i64 %_57, i64* %_4
  %_58 = load i64, i64* %_4
  %_59 = call i64 @_B_mul (i64 9223372036854775806, i64 %_58)
  store i64 %_59, i64* %_5
  %_60 = load i64, i64* %_5
  %_61 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_62 = bitcast i8 addrspace (1)* %_61 to i64 addrspace (1)*
  store i64 %_60, i64 addrspace (1)* %_62, align 8
  %_63 = getelementptr i8, i8 addrspace (1)* %_61, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_63)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_64 = call i64 @_B_mul (i64 1, i64 1)
  store i64 %_64, i64* %_7
  %_65 = load i64, i64* %_7
  %_66 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_67 = bitcast i8 addrspace (1)* %_66 to i64 addrspace (1)*
  store i64 %_65, i64 addrspace (1)* %_67, align 8
  %_68 = getelementptr i8, i8 addrspace (1)* %_66, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_68)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_69 = call i64 @_B_mul (i64 1, i64 0)
  store i64 %_69, i64* %_9
  %_70 = load i64, i64* %_9
  %_71 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_72 = bitcast i8 addrspace (1)* %_71 to i64 addrspace (1)*
  store i64 %_70, i64 addrspace (1)* %_72, align 8
  %_73 = getelementptr i8, i8 addrspace (1)* %_71, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_73)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_74 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_75 = extractvalue {i64, i1} %_74, 1
  br i1 %_75, label %L7, label %L6
L5:
  store i64 1537, i64* %_41
  br label %L2
L6:
  %_76 = extractvalue {i64, i1} %_74, 0
  store i64 %_76, i64* %_11
  %_77 = load i64, i64* %_11
  %_78 = call i64 @_B_mul (i64 1, i64 %_77)
  store i64 %_78, i64* %_12
  %_79 = load i64, i64* %_12
  %_80 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_81 = bitcast i8 addrspace (1)* %_80 to i64 addrspace (1)*
  store i64 %_79, i64 addrspace (1)* %_81, align 8
  %_82 = getelementptr i8, i8 addrspace (1)* %_80, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_82)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  %_83 = call i64 @_B_mul (i64 0, i64 1)
  store i64 %_83, i64* %_14
  %_84 = load i64, i64* %_14
  %_85 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_86 = bitcast i8 addrspace (1)* %_85 to i64 addrspace (1)*
  store i64 %_84, i64 addrspace (1)* %_86, align 8
  %_87 = getelementptr i8, i8 addrspace (1)* %_85, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_87)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  %_88 = call i64 @_B_mul (i64 0, i64 0)
  store i64 %_88, i64* %_16
  %_89 = load i64, i64* %_16
  %_90 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_91 = bitcast i8 addrspace (1)* %_90 to i64 addrspace (1)*
  store i64 %_89, i64 addrspace (1)* %_91, align 8
  %_92 = getelementptr i8, i8 addrspace (1)* %_90, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_92)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_93 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_94 = extractvalue {i64, i1} %_93, 1
  br i1 %_94, label %L9, label %L8
L7:
  store i64 2561, i64* %_41
  br label %L2
L8:
  %_95 = extractvalue {i64, i1} %_93, 0
  store i64 %_95, i64* %_18
  %_96 = load i64, i64* %_18
  %_97 = call i64 @_B_mul (i64 0, i64 %_96)
  store i64 %_97, i64* %_19
  %_98 = load i64, i64* %_19
  %_99 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_100 = bitcast i8 addrspace (1)* %_99 to i64 addrspace (1)*
  store i64 %_98, i64 addrspace (1)* %_100, align 8
  %_101 = getelementptr i8, i8 addrspace (1)* %_99, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_101)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_102 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_103 = extractvalue {i64, i1} %_102, 1
  br i1 %_103, label %L11, label %L10
L9:
  store i64 3585, i64* %_41
  br label %L2
L10:
  %_104 = extractvalue {i64, i1} %_102, 0
  store i64 %_104, i64* %_21
  %_105 = load i64, i64* %_21
  %_106 = call i64 @_B_mul (i64 %_105, i64 1)
  store i64 %_106, i64* %_22
  %_107 = load i64, i64* %_22
  %_108 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_109 = bitcast i8 addrspace (1)* %_108 to i64 addrspace (1)*
  store i64 %_107, i64 addrspace (1)* %_109, align 8
  %_110 = getelementptr i8, i8 addrspace (1)* %_108, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_110)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_111 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_112 = extractvalue {i64, i1} %_111, 1
  br i1 %_112, label %L13, label %L12
L11:
  store i64 4097, i64* %_41
  br label %L2
L12:
  %_113 = extractvalue {i64, i1} %_111, 0
  store i64 %_113, i64* %_24
  %_114 = load i64, i64* %_24
  %_115 = call i64 @_B_mul (i64 %_114, i64 0)
  store i64 %_115, i64* %_25
  %_116 = load i64, i64* %_25
  %_117 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_118 = bitcast i8 addrspace (1)* %_117 to i64 addrspace (1)*
  store i64 %_116, i64 addrspace (1)* %_118, align 8
  %_119 = getelementptr i8, i8 addrspace (1)* %_117, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_119)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  %_120 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_121 = extractvalue {i64, i1} %_120, 1
  br i1 %_121, label %L15, label %L14
L13:
  store i64 4353, i64* %_41
  br label %L2
L14:
  %_122 = extractvalue {i64, i1} %_120, 0
  store i64 %_122, i64* %_27
  %_123 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_124 = extractvalue {i64, i1} %_123, 1
  br i1 %_124, label %L17, label %L16
L15:
  store i64 4609, i64* %_41
  br label %L2
L16:
  %_125 = extractvalue {i64, i1} %_123, 0
  store i64 %_125, i64* %_28
  %_126 = load i64, i64* %_27
  %_127 = load i64, i64* %_28
  %_128 = call i64 @_B_mul (i64 %_126, i64 %_127)
  store i64 %_128, i64* %_29
  %_129 = load i64, i64* %_29
  %_130 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_131 = bitcast i8 addrspace (1)* %_130 to i64 addrspace (1)*
  store i64 %_129, i64 addrspace (1)* %_131, align 8
  %_132 = getelementptr i8, i8 addrspace (1)* %_130, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_132)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_30
  %_133 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_134 = extractvalue {i64, i1} %_133, 1
  br i1 %_134, label %L19, label %L18
L17:
  store i64 4609, i64* %_41
  br label %L2
L18:
  %_135 = extractvalue {i64, i1} %_133, 0
  store i64 %_135, i64* %_31
  %_136 = load i64, i64* %_31
  %_137 = call i64 @_B_mul (i64 %_136, i64 1)
  store i64 %_137, i64* %_32
  %_138 = load i64, i64* %_32
  %_139 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_140 = bitcast i8 addrspace (1)* %_139 to i64 addrspace (1)*
  store i64 %_138, i64 addrspace (1)* %_140, align 8
  %_141 = getelementptr i8, i8 addrspace (1)* %_139, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_141)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_33
  %_142 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_143 = extractvalue {i64, i1} %_142, 1
  br i1 %_143, label %L21, label %L20
L19:
  store i64 5121, i64* %_41
  br label %L2
L20:
  %_144 = extractvalue {i64, i1} %_142, 0
  store i64 %_144, i64* %_34
  %_145 = load i64, i64* %_34
  %_146 = call i64 @_B_mul (i64 %_145, i64 0)
  store i64 %_146, i64* %_35
  %_147 = load i64, i64* %_35
  %_148 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_149 = bitcast i8 addrspace (1)* %_148 to i64 addrspace (1)*
  store i64 %_147, i64 addrspace (1)* %_149, align 8
  %_150 = getelementptr i8, i8 addrspace (1)* %_148, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_150)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_36
  %_151 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_152 = extractvalue {i64, i1} %_151, 1
  br i1 %_152, label %L23, label %L22
L21:
  store i64 5377, i64* %_41
  br label %L2
L22:
  %_153 = extractvalue {i64, i1} %_151, 0
  store i64 %_153, i64* %_37
  %_154 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_155 = extractvalue {i64, i1} %_154, 1
  br i1 %_155, label %L25, label %L24
L23:
  store i64 5633, i64* %_41
  br label %L2
L24:
  %_156 = extractvalue {i64, i1} %_154, 0
  store i64 %_156, i64* %_38
  %_157 = load i64, i64* %_37
  %_158 = load i64, i64* %_38
  %_159 = call i64 @_B_mul (i64 %_157, i64 %_158)
  store i64 %_159, i64* %_39
  %_160 = load i64, i64* %_39
  %_161 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_162 = bitcast i8 addrspace (1)* %_161 to i64 addrspace (1)*
  store i64 %_160, i64 addrspace (1)* %_162, align 8
  %_163 = getelementptr i8, i8 addrspace (1)* %_161, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_163)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_40
  ret void
L25:
  store i64 5633, i64* %_41
  br label %L2
}
define internal i64 @_B_mul (i64 %_0, i64 %_1) {
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
  %_9 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 6404)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 6657, i64* %_3
  br label %L2
}
