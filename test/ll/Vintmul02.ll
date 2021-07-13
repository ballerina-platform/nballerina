@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
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
  %_47 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_46)
  call void @_Bio__println (i8 addrspace (1)* %_47)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_48 = call i64 @_B_mul (i64 9223372036854775806, i64 0)
  store i64 %_48, i64* %_2
  %_49 = load i64, i64* %_2
  %_50 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_49)
  call void @_Bio__println (i8 addrspace (1)* %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_51 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_52 = extractvalue {i64, i1} %_51, 1
  br i1 %_52, label %L5, label %L4
L2:
  %_134 = load i64, i64* %_41
  call void @_bal_panic (i64 %_134)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_53 = extractvalue {i64, i1} %_51, 0
  store i64 %_53, i64* %_4
  %_54 = load i64, i64* %_4
  %_55 = call i64 @_B_mul (i64 9223372036854775806, i64 %_54)
  store i64 %_55, i64* %_5
  %_56 = load i64, i64* %_5
  %_57 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_56)
  call void @_Bio__println (i8 addrspace (1)* %_57)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_58 = call i64 @_B_mul (i64 1, i64 1)
  store i64 %_58, i64* %_7
  %_59 = load i64, i64* %_7
  %_60 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_59)
  call void @_Bio__println (i8 addrspace (1)* %_60)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_61 = call i64 @_B_mul (i64 1, i64 0)
  store i64 %_61, i64* %_9
  %_62 = load i64, i64* %_9
  %_63 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_62)
  call void @_Bio__println (i8 addrspace (1)* %_63)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  %_64 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_65 = extractvalue {i64, i1} %_64, 1
  br i1 %_65, label %L7, label %L6
L5:
  store i64 1537, i64* %_41
  br label %L2
L6:
  %_66 = extractvalue {i64, i1} %_64, 0
  store i64 %_66, i64* %_11
  %_67 = load i64, i64* %_11
  %_68 = call i64 @_B_mul (i64 1, i64 %_67)
  store i64 %_68, i64* %_12
  %_69 = load i64, i64* %_12
  %_70 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_69)
  call void @_Bio__println (i8 addrspace (1)* %_70)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  %_71 = call i64 @_B_mul (i64 0, i64 1)
  store i64 %_71, i64* %_14
  %_72 = load i64, i64* %_14
  %_73 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_72)
  call void @_Bio__println (i8 addrspace (1)* %_73)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  %_74 = call i64 @_B_mul (i64 0, i64 0)
  store i64 %_74, i64* %_16
  %_75 = load i64, i64* %_16
  %_76 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_75)
  call void @_Bio__println (i8 addrspace (1)* %_76)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_77 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_78 = extractvalue {i64, i1} %_77, 1
  br i1 %_78, label %L9, label %L8
L7:
  store i64 2561, i64* %_41
  br label %L2
L8:
  %_79 = extractvalue {i64, i1} %_77, 0
  store i64 %_79, i64* %_18
  %_80 = load i64, i64* %_18
  %_81 = call i64 @_B_mul (i64 0, i64 %_80)
  store i64 %_81, i64* %_19
  %_82 = load i64, i64* %_19
  %_83 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_82)
  call void @_Bio__println (i8 addrspace (1)* %_83)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_20
  %_84 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_85 = extractvalue {i64, i1} %_84, 1
  br i1 %_85, label %L11, label %L10
L9:
  store i64 3585, i64* %_41
  br label %L2
L10:
  %_86 = extractvalue {i64, i1} %_84, 0
  store i64 %_86, i64* %_21
  %_87 = load i64, i64* %_21
  %_88 = call i64 @_B_mul (i64 %_87, i64 1)
  store i64 %_88, i64* %_22
  %_89 = load i64, i64* %_22
  %_90 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_89)
  call void @_Bio__println (i8 addrspace (1)* %_90)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_91 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_92 = extractvalue {i64, i1} %_91, 1
  br i1 %_92, label %L13, label %L12
L11:
  store i64 4097, i64* %_41
  br label %L2
L12:
  %_93 = extractvalue {i64, i1} %_91, 0
  store i64 %_93, i64* %_24
  %_94 = load i64, i64* %_24
  %_95 = call i64 @_B_mul (i64 %_94, i64 0)
  store i64 %_95, i64* %_25
  %_96 = load i64, i64* %_25
  %_97 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_96)
  call void @_Bio__println (i8 addrspace (1)* %_97)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_26
  %_98 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_99 = extractvalue {i64, i1} %_98, 1
  br i1 %_99, label %L15, label %L14
L13:
  store i64 4353, i64* %_41
  br label %L2
L14:
  %_100 = extractvalue {i64, i1} %_98, 0
  store i64 %_100, i64* %_27
  %_101 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_102 = extractvalue {i64, i1} %_101, 1
  br i1 %_102, label %L17, label %L16
L15:
  store i64 4609, i64* %_41
  br label %L2
L16:
  %_103 = extractvalue {i64, i1} %_101, 0
  store i64 %_103, i64* %_28
  %_104 = load i64, i64* %_27
  %_105 = load i64, i64* %_28
  %_106 = call i64 @_B_mul (i64 %_104, i64 %_105)
  store i64 %_106, i64* %_29
  %_107 = load i64, i64* %_29
  %_108 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_107)
  call void @_Bio__println (i8 addrspace (1)* %_108)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_30
  %_109 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_110 = extractvalue {i64, i1} %_109, 1
  br i1 %_110, label %L19, label %L18
L17:
  store i64 4609, i64* %_41
  br label %L2
L18:
  %_111 = extractvalue {i64, i1} %_109, 0
  store i64 %_111, i64* %_31
  %_112 = load i64, i64* %_31
  %_113 = call i64 @_B_mul (i64 %_112, i64 1)
  store i64 %_113, i64* %_32
  %_114 = load i64, i64* %_32
  %_115 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_114)
  call void @_Bio__println (i8 addrspace (1)* %_115)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_33
  %_116 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_117 = extractvalue {i64, i1} %_116, 1
  br i1 %_117, label %L21, label %L20
L19:
  store i64 5121, i64* %_41
  br label %L2
L20:
  %_118 = extractvalue {i64, i1} %_116, 0
  store i64 %_118, i64* %_34
  %_119 = load i64, i64* %_34
  %_120 = call i64 @_B_mul (i64 %_119, i64 0)
  store i64 %_120, i64* %_35
  %_121 = load i64, i64* %_35
  %_122 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_121)
  call void @_Bio__println (i8 addrspace (1)* %_122)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_36
  %_123 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775806)
  %_124 = extractvalue {i64, i1} %_123, 1
  br i1 %_124, label %L23, label %L22
L21:
  store i64 5377, i64* %_41
  br label %L2
L22:
  %_125 = extractvalue {i64, i1} %_123, 0
  store i64 %_125, i64* %_37
  %_126 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_127 = extractvalue {i64, i1} %_126, 1
  br i1 %_127, label %L25, label %L24
L23:
  store i64 5633, i64* %_41
  br label %L2
L24:
  %_128 = extractvalue {i64, i1} %_126, 0
  store i64 %_128, i64* %_38
  %_129 = load i64, i64* %_37
  %_130 = load i64, i64* %_38
  %_131 = call i64 @_B_mul (i64 %_129, i64 %_130)
  store i64 %_131, i64* %_39
  %_132 = load i64, i64* %_39
  %_133 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_132)
  call void @_Bio__println (i8 addrspace (1)* %_133)
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
