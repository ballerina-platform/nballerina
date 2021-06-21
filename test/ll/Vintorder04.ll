declare void @_Bio__println (i64)
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
  %_70 = icmp sge i64 9223372036854775806, 9223372036854775806
  store i1 %_70, i1* %_0
  %_71 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_71)
  store i8* null, i8** %_1
  %_72 = icmp sge i64 9223372036854775806, 1
  store i1 %_72, i1* %_2
  %_73 = load i1, i1* %_2
  call void @_B_printBoolean (i1 %_73)
  store i8* null, i8** %_3
  %_74 = icmp sge i64 9223372036854775806, 0
  store i1 %_74, i1* %_4
  %_75 = load i1, i1* %_4
  call void @_B_printBoolean (i1 %_75)
  store i8* null, i8** %_5
  %_76 = icmp sge i64 9223372036854775806, -1
  store i1 %_76, i1* %_6
  %_77 = load i1, i1* %_6
  call void @_B_printBoolean (i1 %_77)
  store i8* null, i8** %_8
  %_78 = icmp sge i64 9223372036854775806, -9223372036854775806
  store i1 %_78, i1* %_9
  %_79 = load i1, i1* %_9
  call void @_B_printBoolean (i1 %_79)
  store i8* null, i8** %_11
  %_80 = icmp sge i64 1, 9223372036854775806
  store i1 %_80, i1* %_12
  %_81 = load i1, i1* %_12
  call void @_B_printBoolean (i1 %_81)
  store i8* null, i8** %_13
  %_82 = icmp sge i64 1, 1
  store i1 %_82, i1* %_14
  %_83 = load i1, i1* %_14
  call void @_B_printBoolean (i1 %_83)
  store i8* null, i8** %_15
  %_84 = icmp sge i64 1, 0
  store i1 %_84, i1* %_16
  %_85 = load i1, i1* %_16
  call void @_B_printBoolean (i1 %_85)
  store i8* null, i8** %_17
  %_86 = icmp sge i64 1, -1
  store i1 %_86, i1* %_18
  %_87 = load i1, i1* %_18
  call void @_B_printBoolean (i1 %_87)
  store i8* null, i8** %_20
  %_88 = icmp sge i64 1, -9223372036854775806
  store i1 %_88, i1* %_21
  %_89 = load i1, i1* %_21
  call void @_B_printBoolean (i1 %_89)
  store i8* null, i8** %_23
  %_90 = icmp sge i64 0, 9223372036854775806
  store i1 %_90, i1* %_24
  %_91 = load i1, i1* %_24
  call void @_B_printBoolean (i1 %_91)
  store i8* null, i8** %_25
  %_92 = icmp sge i64 0, 1
  store i1 %_92, i1* %_26
  %_93 = load i1, i1* %_26
  call void @_B_printBoolean (i1 %_93)
  store i8* null, i8** %_27
  %_94 = icmp sge i64 0, 0
  store i1 %_94, i1* %_28
  %_95 = load i1, i1* %_28
  call void @_B_printBoolean (i1 %_95)
  store i8* null, i8** %_29
  %_96 = icmp sge i64 0, -1
  store i1 %_96, i1* %_30
  %_97 = load i1, i1* %_30
  call void @_B_printBoolean (i1 %_97)
  store i8* null, i8** %_32
  %_98 = icmp sge i64 0, -9223372036854775806
  store i1 %_98, i1* %_33
  %_99 = load i1, i1* %_33
  call void @_B_printBoolean (i1 %_99)
  store i8* null, i8** %_35
  %_100 = icmp sge i64 -1, 9223372036854775806
  store i1 %_100, i1* %_36
  %_101 = load i1, i1* %_36
  call void @_B_printBoolean (i1 %_101)
  store i8* null, i8** %_38
  %_102 = icmp sge i64 -1, 1
  store i1 %_102, i1* %_39
  %_103 = load i1, i1* %_39
  call void @_B_printBoolean (i1 %_103)
  store i8* null, i8** %_41
  %_104 = icmp sge i64 -1, 0
  store i1 %_104, i1* %_42
  %_105 = load i1, i1* %_42
  call void @_B_printBoolean (i1 %_105)
  store i8* null, i8** %_44
  %_106 = icmp sge i64 -1, -1
  store i1 %_106, i1* %_45
  %_107 = load i1, i1* %_45
  call void @_B_printBoolean (i1 %_107)
  store i8* null, i8** %_48
  %_108 = icmp sge i64 -1, -9223372036854775806
  store i1 %_108, i1* %_49
  %_109 = load i1, i1* %_49
  call void @_B_printBoolean (i1 %_109)
  store i8* null, i8** %_52
  %_110 = icmp sge i64 -9223372036854775806, 9223372036854775806
  store i1 %_110, i1* %_53
  %_111 = load i1, i1* %_53
  call void @_B_printBoolean (i1 %_111)
  store i8* null, i8** %_55
  %_112 = icmp sge i64 -9223372036854775806, 1
  store i1 %_112, i1* %_56
  %_113 = load i1, i1* %_56
  call void @_B_printBoolean (i1 %_113)
  store i8* null, i8** %_58
  %_114 = icmp sge i64 -9223372036854775806, 0
  store i1 %_114, i1* %_59
  %_115 = load i1, i1* %_59
  call void @_B_printBoolean (i1 %_115)
  store i8* null, i8** %_61
  %_116 = icmp sge i64 -9223372036854775806, -1
  store i1 %_116, i1* %_62
  %_117 = load i1, i1* %_62
  call void @_B_printBoolean (i1 %_117)
  store i8* null, i8** %_65
  %_118 = icmp sge i64 -9223372036854775806, -9223372036854775806
  store i1 %_118, i1* %_66
  %_119 = load i1, i1* %_66
  call void @_B_printBoolean (i1 %_119)
  store i8* null, i8** %_69
  ret void
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  store i1 %_0, i1* %b
  %_3 = load i1, i1* %b
  br i1 %_3, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i8* null, i8** %_1
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i8* null, i8** %_2
  br label %L3
L3:
  ret void
}
