declare void @_Bio__println (i64)
define void @_B_main () {
  %_0 = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i64, align 8
  %_11 = alloca i1, align 8
  %_12 = alloca i1, align 8
  %_13 = alloca i1, align 8
  %_14 = alloca i1, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i1, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i1, align 8
  %_19 = alloca i64, align 8
  %_20 = alloca i1, align 8
  %_21 = alloca i1, align 8
  %_22 = alloca i64, align 8
  %_23 = alloca i1, align 8
  %_24 = alloca i1, align 8
  %_25 = alloca i1, align 8
  %_26 = alloca i1, align 8
  %_27 = alloca i1, align 8
  %_28 = alloca i1, align 8
  %_29 = alloca i1, align 8
  %_30 = alloca i1, align 8
  %_31 = alloca i64, align 8
  %_32 = alloca i1, align 8
  %_33 = alloca i1, align 8
  %_34 = alloca i64, align 8
  %_35 = alloca i1, align 8
  %_36 = alloca i1, align 8
  %_37 = alloca i64, align 8
  %_38 = alloca i1, align 8
  %_39 = alloca i1, align 8
  %_40 = alloca i64, align 8
  %_41 = alloca i1, align 8
  %_42 = alloca i1, align 8
  %_43 = alloca i64, align 8
  %_44 = alloca i1, align 8
  %_45 = alloca i1, align 8
  %_46 = alloca i64, align 8
  %_47 = alloca i64, align 8
  %_48 = alloca i1, align 8
  %_49 = alloca i1, align 8
  %_50 = alloca i64, align 8
  %_51 = alloca i64, align 8
  %_52 = alloca i1, align 8
  %_53 = alloca i1, align 8
  %_54 = alloca i64, align 8
  %_55 = alloca i1, align 8
  %_56 = alloca i1, align 8
  %_57 = alloca i64, align 8
  %_58 = alloca i1, align 8
  %_59 = alloca i1, align 8
  %_60 = alloca i64, align 8
  %_61 = alloca i1, align 8
  %_62 = alloca i1, align 8
  %_63 = alloca i64, align 8
  %_64 = alloca i64, align 8
  %_65 = alloca i1, align 8
  %_66 = alloca i1, align 8
  %_67 = alloca i64, align 8
  %_68 = alloca i64, align 8
  %_69 = alloca i1, align 8
  %_70 = icmp sgt i64 9223372036854775806, 9223372036854775806
  store i1 %_70, i1* %_0, align 8
  %_71 = load i1, i1* %_0, align 8
  call void @_B_printBoolean (i1 %_71)
  store i1 0, i1* %_1, align 8
  %_72 = icmp sgt i64 9223372036854775806, 1
  store i1 %_72, i1* %_2, align 8
  %_73 = load i1, i1* %_2, align 8
  call void @_B_printBoolean (i1 %_73)
  store i1 0, i1* %_3, align 8
  %_74 = icmp sgt i64 9223372036854775806, 0
  store i1 %_74, i1* %_4, align 8
  %_75 = load i1, i1* %_4, align 8
  call void @_B_printBoolean (i1 %_75)
  store i1 0, i1* %_5, align 8
  %_76 = icmp sgt i64 9223372036854775806, -1
  store i1 %_76, i1* %_6, align 8
  %_77 = load i1, i1* %_6, align 8
  call void @_B_printBoolean (i1 %_77)
  store i1 0, i1* %_8, align 8
  %_78 = icmp sgt i64 9223372036854775806, -9223372036854775806
  store i1 %_78, i1* %_9, align 8
  %_79 = load i1, i1* %_9, align 8
  call void @_B_printBoolean (i1 %_79)
  store i1 0, i1* %_11, align 8
  %_80 = icmp sgt i64 1, 9223372036854775806
  store i1 %_80, i1* %_12, align 8
  %_81 = load i1, i1* %_12, align 8
  call void @_B_printBoolean (i1 %_81)
  store i1 0, i1* %_13, align 8
  %_82 = icmp sgt i64 1, 1
  store i1 %_82, i1* %_14, align 8
  %_83 = load i1, i1* %_14, align 8
  call void @_B_printBoolean (i1 %_83)
  store i1 0, i1* %_15, align 8
  %_84 = icmp sgt i64 1, 0
  store i1 %_84, i1* %_16, align 8
  %_85 = load i1, i1* %_16, align 8
  call void @_B_printBoolean (i1 %_85)
  store i1 0, i1* %_17, align 8
  %_86 = icmp sgt i64 1, -1
  store i1 %_86, i1* %_18, align 8
  %_87 = load i1, i1* %_18, align 8
  call void @_B_printBoolean (i1 %_87)
  store i1 0, i1* %_20, align 8
  %_88 = icmp sgt i64 1, -9223372036854775806
  store i1 %_88, i1* %_21, align 8
  %_89 = load i1, i1* %_21, align 8
  call void @_B_printBoolean (i1 %_89)
  store i1 0, i1* %_23, align 8
  %_90 = icmp sgt i64 0, 9223372036854775806
  store i1 %_90, i1* %_24, align 8
  %_91 = load i1, i1* %_24, align 8
  call void @_B_printBoolean (i1 %_91)
  store i1 0, i1* %_25, align 8
  %_92 = icmp sgt i64 0, 1
  store i1 %_92, i1* %_26, align 8
  %_93 = load i1, i1* %_26, align 8
  call void @_B_printBoolean (i1 %_93)
  store i1 0, i1* %_27, align 8
  %_94 = icmp sgt i64 0, 0
  store i1 %_94, i1* %_28, align 8
  %_95 = load i1, i1* %_28, align 8
  call void @_B_printBoolean (i1 %_95)
  store i1 0, i1* %_29, align 8
  %_96 = icmp sgt i64 0, -1
  store i1 %_96, i1* %_30, align 8
  %_97 = load i1, i1* %_30, align 8
  call void @_B_printBoolean (i1 %_97)
  store i1 0, i1* %_32, align 8
  %_98 = icmp sgt i64 0, -9223372036854775806
  store i1 %_98, i1* %_33, align 8
  %_99 = load i1, i1* %_33, align 8
  call void @_B_printBoolean (i1 %_99)
  store i1 0, i1* %_35, align 8
  %_100 = icmp sgt i64 -1, 9223372036854775806
  store i1 %_100, i1* %_36, align 8
  %_101 = load i1, i1* %_36, align 8
  call void @_B_printBoolean (i1 %_101)
  store i1 0, i1* %_38, align 8
  %_102 = icmp sgt i64 -1, 1
  store i1 %_102, i1* %_39, align 8
  %_103 = load i1, i1* %_39, align 8
  call void @_B_printBoolean (i1 %_103)
  store i1 0, i1* %_41, align 8
  %_104 = icmp sgt i64 -1, 0
  store i1 %_104, i1* %_42, align 8
  %_105 = load i1, i1* %_42, align 8
  call void @_B_printBoolean (i1 %_105)
  store i1 0, i1* %_44, align 8
  %_106 = icmp sgt i64 -1, -1
  store i1 %_106, i1* %_45, align 8
  %_107 = load i1, i1* %_45, align 8
  call void @_B_printBoolean (i1 %_107)
  store i1 0, i1* %_48, align 8
  %_108 = icmp sgt i64 -1, -9223372036854775806
  store i1 %_108, i1* %_49, align 8
  %_109 = load i1, i1* %_49, align 8
  call void @_B_printBoolean (i1 %_109)
  store i1 0, i1* %_52, align 8
  %_110 = icmp sgt i64 -9223372036854775806, 9223372036854775806
  store i1 %_110, i1* %_53, align 8
  %_111 = load i1, i1* %_53, align 8
  call void @_B_printBoolean (i1 %_111)
  store i1 0, i1* %_55, align 8
  %_112 = icmp sgt i64 -9223372036854775806, 1
  store i1 %_112, i1* %_56, align 8
  %_113 = load i1, i1* %_56, align 8
  call void @_B_printBoolean (i1 %_113)
  store i1 0, i1* %_58, align 8
  %_114 = icmp sgt i64 -9223372036854775806, 0
  store i1 %_114, i1* %_59, align 8
  %_115 = load i1, i1* %_59, align 8
  call void @_B_printBoolean (i1 %_115)
  store i1 0, i1* %_61, align 8
  %_116 = icmp sgt i64 -9223372036854775806, -1
  store i1 %_116, i1* %_62, align 8
  %_117 = load i1, i1* %_62, align 8
  call void @_B_printBoolean (i1 %_117)
  store i1 0, i1* %_65, align 8
  %_118 = icmp sgt i64 -9223372036854775806, -9223372036854775806
  store i1 %_118, i1* %_66, align 8
  %_119 = load i1, i1* %_66, align 8
  call void @_B_printBoolean (i1 %_119)
  store i1 0, i1* %_69, align 8
  ret void
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  store i1 %_0, i1* %b, align 8
  %_3 = load i1, i1* %b, align 8
  br i1 %_3, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_2, align 8
  br label %L3
L3:
  ret void
}
