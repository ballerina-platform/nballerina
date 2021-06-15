declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i64, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i64, align 8
  %_11 = alloca i64, align 8
  %_12 = alloca i64, align 8
  %_13 = alloca i64, align 8
  %_14 = alloca i64, align 8
  %_15 = alloca i64, align 8
  %_16 = alloca i64, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i64, align 8
  %_19 = alloca i64, align 8
  %_20 = alloca i64, align 8
  %_21 = alloca i64, align 8
  %_22 = alloca i64, align 8
  %_23 = alloca i64, align 8
  %_24 = alloca i64, align 8
  %_25 = alloca i64, align 8
  %_26 = alloca i64, align 8
  %_27 = alloca i1, align 8
  %_28 = alloca i64, align 8
  %_29 = alloca i64, align 8
  %_30 = alloca i64, align 8
  %_31 = alloca i64, align 8
  %_32 = alloca i64, align 8
  %_33 = alloca i64, align 8
  %_34 = alloca i64, align 8
  %_35 = alloca i64, align 8
  %_36 = alloca i64, align 8
  %_37 = alloca i64, align 8
  %_38 = alloca i64, align 8
  %_39 = alloca i1, align 8
  %_40 = alloca i64, align 8
  %_41 = alloca i64, align 8
  %_42 = alloca i64, align 8
  %_43 = alloca i64, align 8
  %_44 = alloca i64, align 8
  %_45 = alloca i64, align 8
  %_46 = alloca i64, align 8
  %_47 = alloca i64, align 8
  %_48 = alloca i64, align 8
  %_49 = alloca i64, align 8
  %_50 = alloca i64, align 8
  %_51 = alloca i64, align 8
  %_52 = alloca i64, align 8
  %_53 = alloca i1, align 8
  %_54 = alloca i64, align 8
  %_55 = alloca i64, align 8
  %_56 = alloca i64, align 8
  %_57 = alloca i64, align 8
  %_58 = alloca i64, align 8
  %_59 = alloca i64, align 8
  %_60 = alloca i64, align 8
  %_61 = alloca i64, align 8
  %_62 = alloca i64, align 8
  %_63 = alloca i64, align 8
  %_64 = alloca i64, align 8
  %_65 = alloca i64, align 8
  %_66 = alloca i64, align 8
  %_67 = alloca i64, align 8
  %_68 = alloca i64, align 8
  %_69 = alloca i1, align 8
  %_70 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_70, i64* %_2, align 8
  %_71 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_71)
  store i1 0, i1* %_3, align 8
  %_72 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_72, i64* %_6, align 8
  %_73 = load i64, i64* %_6, align 8
  %_74 = call i64 @_B_add (i64 %_73, i64 -11)
  store i64 %_74, i64* %_8, align 8
  %_75 = load i64, i64* %_8, align 8
  call void @_Bio__println (i64 %_75)
  store i1 0, i1* %_9, align 8
  %_76 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_76, i64* %_12, align 8
  %_77 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_77, i64* %_15, align 8
  %_78 = load i64, i64* %_12, align 8
  %_79 = load i64, i64* %_15, align 8
  %_80 = call i64 @_B_add (i64 %_78, i64 %_79)
  store i64 %_80, i64* %_16, align 8
  %_81 = load i64, i64* %_16, align 8
  call void @_Bio__println (i64 %_81)
  store i1 0, i1* %_17, align 8
  %_82 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_82, i64* %_20, align 8
  %_83 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_83, i64* %_23, align 8
  %_84 = load i64, i64* %_20, align 8
  %_85 = load i64, i64* %_23, align 8
  %_86 = call i64 @_B_add (i64 %_84, i64 %_85)
  store i64 %_86, i64* %_24, align 8
  %_87 = load i64, i64* %_24, align 8
  %_88 = call i64 @_B_add (i64 %_87, i64 -12)
  store i64 %_88, i64* %_26, align 8
  %_89 = load i64, i64* %_26, align 8
  call void @_Bio__println (i64 %_89)
  store i1 0, i1* %_27, align 8
  %_90 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_90, i64* %_30, align 8
  %_91 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_91, i64* %_33, align 8
  %_92 = load i64, i64* %_30, align 8
  %_93 = load i64, i64* %_33, align 8
  %_94 = call i64 @_B_add (i64 %_92, i64 %_93)
  store i64 %_94, i64* %_34, align 8
  %_95 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_95, i64* %_37, align 8
  %_96 = load i64, i64* %_34, align 8
  %_97 = load i64, i64* %_37, align 8
  %_98 = call i64 @_B_add (i64 %_96, i64 %_97)
  store i64 %_98, i64* %_38, align 8
  %_99 = load i64, i64* %_38, align 8
  call void @_Bio__println (i64 %_99)
  store i1 0, i1* %_39, align 8
  %_100 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_100, i64* %_42, align 8
  %_101 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_101, i64* %_45, align 8
  %_102 = load i64, i64* %_42, align 8
  %_103 = load i64, i64* %_45, align 8
  %_104 = call i64 @_B_add (i64 %_102, i64 %_103)
  store i64 %_104, i64* %_46, align 8
  %_105 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_105, i64* %_49, align 8
  %_106 = load i64, i64* %_49, align 8
  %_107 = call i64 @_B_add (i64 %_106, i64 -5)
  store i64 %_107, i64* %_51, align 8
  %_108 = load i64, i64* %_46, align 8
  %_109 = load i64, i64* %_51, align 8
  %_110 = call i64 @_B_add (i64 %_108, i64 %_109)
  store i64 %_110, i64* %_52, align 8
  %_111 = load i64, i64* %_52, align 8
  call void @_Bio__println (i64 %_111)
  store i1 0, i1* %_53, align 8
  %_112 = call i64 @_B_add (i64 -3, i64 -5)
  store i64 %_112, i64* %_56, align 8
  %_113 = call i64 @_B_add (i64 -5, i64 -9)
  store i64 %_113, i64* %_59, align 8
  %_114 = load i64, i64* %_56, align 8
  %_115 = load i64, i64* %_59, align 8
  %_116 = call i64 @_B_add (i64 %_114, i64 %_115)
  store i64 %_116, i64* %_60, align 8
  %_117 = call i64 @_B_add (i64 -4, i64 -7)
  store i64 %_117, i64* %_63, align 8
  %_118 = call i64 @_B_add (i64 -23, i64 -50)
  store i64 %_118, i64* %_66, align 8
  %_119 = load i64, i64* %_63, align 8
  %_120 = load i64, i64* %_66, align 8
  %_121 = call i64 @_B_add (i64 %_119, i64 %_120)
  store i64 %_121, i64* %_67, align 8
  %_122 = load i64, i64* %_60, align 8
  %_123 = load i64, i64* %_67, align 8
  %_124 = call i64 @_B_add (i64 %_122, i64 %_123)
  store i64 %_124, i64* %_68, align 8
  %_125 = load i64, i64* %_68, align 8
  call void @_Bio__println (i64 %_125)
  store i1 0, i1* %_69, align 8
  ret void
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_4 = load i64, i64* %x, align 8
  %_5 = load i64, i64* %y, align 8
  %_6 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_4, i64 %_5)
  %_7 = extractvalue {i64, i1} %_6, 1
  br i1 %_7, label %L3, label %L2
L1:
  %_10 = load i64, i64* %_3, align 8
  call void @_bal_panic (i64 %_10)
  unreachable
L2:
  %_8 = extractvalue {i64, i1} %_6, 0
  store i64 %_8, i64* %_2, align 8
  %_9 = load i64, i64* %_2, align 8
  ret i64 %_9
L3:
  store i64 1, i64* %_3, align 8
  br label %L1
}
