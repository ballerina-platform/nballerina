@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i1
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i1
  %_13 = alloca i8*
  %_14 = alloca i1
  %_15 = alloca i8*
  %_16 = alloca i1
  %_17 = alloca i8*
  %_18 = alloca i1
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i1
  %_22 = alloca i64
  %_23 = alloca i8*
  %_24 = alloca i1
  %_25 = alloca i8*
  %_26 = alloca i1
  %_27 = alloca i8*
  %_28 = alloca i1
  %_29 = alloca i8*
  %_30 = alloca i1
  %_31 = alloca i64
  %_32 = alloca i8*
  %_33 = alloca i1
  %_34 = alloca i64
  %_35 = alloca i8*
  %_36 = alloca i1
  %_37 = alloca i64
  %_38 = alloca i8*
  %_39 = alloca i1
  %_40 = alloca i64
  %_41 = alloca i8*
  %_42 = alloca i1
  %_43 = alloca i64
  %_44 = alloca i8*
  %_45 = alloca i1
  %_46 = alloca i64
  %_47 = alloca i64
  %_48 = alloca i8*
  %_49 = alloca i1
  %_50 = alloca i64
  %_51 = alloca i64
  %_52 = alloca i8*
  %_53 = alloca i1
  %_54 = alloca i64
  %_55 = alloca i8*
  %_56 = alloca i1
  %_57 = alloca i64
  %_58 = alloca i8*
  %_59 = alloca i1
  %_60 = alloca i64
  %_61 = alloca i8*
  %_62 = alloca i1
  %_63 = alloca i64
  %_64 = alloca i64
  %_65 = alloca i8*
  %_66 = alloca i1
  %_67 = alloca i64
  %_68 = alloca i64
  %_69 = alloca i8*
  %_70 = alloca i8
  %_71 = load i8*, i8** @_bal_stack_guard
  %_72 = icmp ult i8* %_70, %_71
  br i1 %_72, label %L2, label %L1
L1:
  %_73 = icmp slt i64 9223372036854775806, 9223372036854775806
  store i1 %_73, i1* %_0
  %_74 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_74)
  store i8* null, i8** %_1
  %_75 = icmp slt i64 9223372036854775806, 1
  store i1 %_75, i1* %_2
  %_76 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_76)
  store i8* null, i8** %_3
  %_77 = icmp slt i64 9223372036854775806, 0
  store i1 %_77, i1* %_4
  %_78 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_78)
  store i8* null, i8** %_5
  %_79 = icmp slt i64 9223372036854775806, -1
  store i1 %_79, i1* %_6
  %_80 = load i1, i1* %_6
  call void @_B_printBoolean (i1 %_80)
  store i8* null, i8** %_8
  %_81 = icmp slt i64 9223372036854775806, -9223372036854775806
  store i1 %_81, i1* %_9
  %_82 = load i1, i1* %_9
  call void @_B_printBoolean (i1 %_82)
  store i8* null, i8** %_11
  %_83 = icmp slt i64 1, 9223372036854775806
  store i1 %_83, i1* %_12
  %_84 = load i1, i1* %_12
  call void @_B_printBoolean (i1 %_84)
  store i8* null, i8** %_13
  %_85 = icmp slt i64 1, 1
  store i1 %_85, i1* %_14
  %_86 = load i1, i1* %_14
  call void @_B_printBoolean (i1 %_86)
  store i8* null, i8** %_15
  %_87 = icmp slt i64 1, 0
  store i1 %_87, i1* %_16
  %_88 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_88)
  store i8* null, i8** %_17
  %_89 = icmp slt i64 1, -1
  store i1 %_89, i1* %_18
  %_90 = load i1, i1* %_18
  call void @_B_printBoolean (i1 %_90)
  store i8* null, i8** %_20
  %_91 = icmp slt i64 1, -9223372036854775806
  store i1 %_91, i1* %_21
  %_92 = load i1, i1* %_21
  call void @_B_printBoolean (i1 %_92)
  store i8* null, i8** %_23
  %_93 = icmp slt i64 0, 9223372036854775806
  store i1 %_93, i1* %_24
  %_94 = load i1, i1* %_24
  call void @_B_printBoolean (i1 %_94)
  store i8* null, i8** %_25
  %_95 = icmp slt i64 0, 1
  store i1 %_95, i1* %_26
  %_96 = load i1, i1* %_26
  call void @_B_printBoolean (i1 %_96)
  store i8* null, i8** %_27
  %_97 = icmp slt i64 0, 0
  store i1 %_97, i1* %_28
  %_98 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_98)
  store i8* null, i8** %_29
  %_99 = icmp slt i64 0, -1
  store i1 %_99, i1* %_30
  %_100 = load i1, i1* %_30
  call void @_B_printBoolean (i1 %_100)
  store i8* null, i8** %_32
  %_101 = icmp slt i64 0, -9223372036854775806
  store i1 %_101, i1* %_33
  %_102 = load i1, i1* %_33
  call void @_B_printBoolean (i1 %_102)
  store i8* null, i8** %_35
  %_103 = icmp slt i64 -1, 9223372036854775806
  store i1 %_103, i1* %_36
  %_104 = load i1, i1* %_36
  call void @_B_printBoolean (i1 %_104)
  store i8* null, i8** %_38
  %_105 = icmp slt i64 -1, 1
  store i1 %_105, i1* %_39
  %_106 = load i1, i1* %_39
  call void @_B_printBoolean (i1 %_106)
  store i8* null, i8** %_41
  %_107 = icmp slt i64 -1, 0
  store i1 %_107, i1* %_42
  %_108 = load i1, i1* %_42
  call void @_B_printBoolean (i1 %_108)
  store i8* null, i8** %_44
  %_109 = icmp slt i64 -1, -1
  store i1 %_109, i1* %_45
  %_110 = load i1, i1* %_45
  call void @_B_printBoolean (i1 %_110)
  store i8* null, i8** %_48
  %_111 = icmp slt i64 -1, -9223372036854775806
  store i1 %_111, i1* %_49
  %_112 = load i1, i1* %_49
  call void @_B_printBoolean (i1 %_112)
  store i8* null, i8** %_52
  %_113 = icmp slt i64 -9223372036854775806, 9223372036854775806
  store i1 %_113, i1* %_53
  %_114 = load i1, i1* %_53
  call void @_B_printBoolean (i1 %_114)
  store i8* null, i8** %_55
  %_115 = icmp slt i64 -9223372036854775806, 1
  store i1 %_115, i1* %_56
  %_116 = load i1, i1* %_56
  call void @_B_printBoolean (i1 %_116)
  store i8* null, i8** %_58
  %_117 = icmp slt i64 -9223372036854775806, 0
  store i1 %_117, i1* %_59
  %_118 = load i1, i1* %_59
  call void @_B_printBoolean (i1 %_118)
  store i8* null, i8** %_61
  %_119 = icmp slt i64 -9223372036854775806, -1
  store i1 %_119, i1* %_62
  %_120 = load i1, i1* %_62
  call void @_B_printBoolean (i1 %_120)
  store i8* null, i8** %_65
  %_121 = icmp slt i64 -9223372036854775806, -9223372036854775806
  store i1 %_121, i1* %_66
  %_122 = load i1, i1* %_66
  call void @_B_printBoolean (i1 %_122)
  store i8* null, i8** %_69
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L5, label %L1
L1:
  store i1 %_0, i1* %b
  %_6 = load i1, i1* %b
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = call i8* @_bal_alloc (i64 8)
  %_8 = bitcast i8* %_7 to i64*
  store i64 1, i64* %_8, align 8
  %_9 = getelementptr i8, i8* %_7, i64 504403158265495552
  call void @_Bio__println (i8* %_9)
  store i8* null, i8** %_1
  br label %L4
L3:
  %_10 = call i8* @_bal_alloc (i64 8)
  %_11 = bitcast i8* %_10 to i64*
  store i64 0, i64* %_11, align 8
  %_12 = getelementptr i8, i8* %_10, i64 504403158265495552
  call void @_Bio__println (i8* %_12)
  store i8* null, i8** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 8964)
  unreachable
}
