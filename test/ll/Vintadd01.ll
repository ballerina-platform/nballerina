declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i64
  %_18 = alloca i64
  %_19 = alloca i8*
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i64
  %_34 = alloca i8*
  %_35 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_35, i64* %_0
  %_36 = load i64, i64* %_0
  %_37 = call i8* @_bal_alloc (i64 8)
  %_38 = bitcast i8* %_37 to i64*
  store i64 %_36, i64* %_38, align 8
  %_39 = getelementptr i8, i8* %_37, i64 144115188075855872
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_1
  %_40 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_40, i64* %_2
  %_41 = load i64, i64* %_2
  %_42 = call i64 @_B_add (i64 %_41, i64 11)
  store i64 %_42, i64* %_3
  %_43 = load i64, i64* %_3
  %_44 = call i8* @_bal_alloc (i64 8)
  %_45 = bitcast i8* %_44 to i64*
  store i64 %_43, i64* %_45, align 8
  %_46 = getelementptr i8, i8* %_44, i64 144115188075855872
  call void @_Bio__println (i8* %_46)
  store i8* null, i8** %_4
  %_47 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_47, i64* %_5
  %_48 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_48, i64* %_6
  %_49 = load i64, i64* %_5
  %_50 = load i64, i64* %_6
  %_51 = call i64 @_B_add (i64 %_49, i64 %_50)
  store i64 %_51, i64* %_7
  %_52 = load i64, i64* %_7
  %_53 = call i8* @_bal_alloc (i64 8)
  %_54 = bitcast i8* %_53 to i64*
  store i64 %_52, i64* %_54, align 8
  %_55 = getelementptr i8, i8* %_53, i64 144115188075855872
  call void @_Bio__println (i8* %_55)
  store i8* null, i8** %_8
  %_56 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_56, i64* %_9
  %_57 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_57, i64* %_10
  %_58 = load i64, i64* %_9
  %_59 = load i64, i64* %_10
  %_60 = call i64 @_B_add (i64 %_58, i64 %_59)
  store i64 %_60, i64* %_11
  %_61 = load i64, i64* %_11
  %_62 = call i64 @_B_add (i64 %_61, i64 12)
  store i64 %_62, i64* %_12
  %_63 = load i64, i64* %_12
  %_64 = call i8* @_bal_alloc (i64 8)
  %_65 = bitcast i8* %_64 to i64*
  store i64 %_63, i64* %_65, align 8
  %_66 = getelementptr i8, i8* %_64, i64 144115188075855872
  call void @_Bio__println (i8* %_66)
  store i8* null, i8** %_13
  %_67 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_67, i64* %_14
  %_68 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_68, i64* %_15
  %_69 = load i64, i64* %_14
  %_70 = load i64, i64* %_15
  %_71 = call i64 @_B_add (i64 %_69, i64 %_70)
  store i64 %_71, i64* %_16
  %_72 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_72, i64* %_17
  %_73 = load i64, i64* %_16
  %_74 = load i64, i64* %_17
  %_75 = call i64 @_B_add (i64 %_73, i64 %_74)
  store i64 %_75, i64* %_18
  %_76 = load i64, i64* %_18
  %_77 = call i8* @_bal_alloc (i64 8)
  %_78 = bitcast i8* %_77 to i64*
  store i64 %_76, i64* %_78, align 8
  %_79 = getelementptr i8, i8* %_77, i64 144115188075855872
  call void @_Bio__println (i8* %_79)
  store i8* null, i8** %_19
  %_80 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_80, i64* %_20
  %_81 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_81, i64* %_21
  %_82 = load i64, i64* %_20
  %_83 = load i64, i64* %_21
  %_84 = call i64 @_B_add (i64 %_82, i64 %_83)
  store i64 %_84, i64* %_22
  %_85 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_85, i64* %_23
  %_86 = load i64, i64* %_23
  %_87 = call i64 @_B_add (i64 %_86, i64 5)
  store i64 %_87, i64* %_24
  %_88 = load i64, i64* %_22
  %_89 = load i64, i64* %_24
  %_90 = call i64 @_B_add (i64 %_88, i64 %_89)
  store i64 %_90, i64* %_25
  %_91 = load i64, i64* %_25
  %_92 = call i8* @_bal_alloc (i64 8)
  %_93 = bitcast i8* %_92 to i64*
  store i64 %_91, i64* %_93, align 8
  %_94 = getelementptr i8, i8* %_92, i64 144115188075855872
  call void @_Bio__println (i8* %_94)
  store i8* null, i8** %_26
  %_95 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_95, i64* %_27
  %_96 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_96, i64* %_28
  %_97 = load i64, i64* %_27
  %_98 = load i64, i64* %_28
  %_99 = call i64 @_B_add (i64 %_97, i64 %_98)
  store i64 %_99, i64* %_29
  %_100 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_100, i64* %_30
  %_101 = call i64 @_B_add (i64 23, i64 50)
  store i64 %_101, i64* %_31
  %_102 = load i64, i64* %_30
  %_103 = load i64, i64* %_31
  %_104 = call i64 @_B_add (i64 %_102, i64 %_103)
  store i64 %_104, i64* %_32
  %_105 = load i64, i64* %_29
  %_106 = load i64, i64* %_32
  %_107 = call i64 @_B_add (i64 %_105, i64 %_106)
  store i64 %_107, i64* %_33
  %_108 = load i64, i64* %_33
  %_109 = call i8* @_bal_alloc (i64 8)
  %_110 = bitcast i8* %_109 to i64*
  store i64 %_108, i64* %_110, align 8
  %_111 = getelementptr i8, i8* %_109, i64 144115188075855872
  call void @_Bio__println (i8* %_111)
  store i8* null, i8** %_34
  ret void
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_4 = load i64, i64* %x
  %_5 = load i64, i64* %y
  %_6 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_4, i64 %_5)
  %_7 = extractvalue {i64, i1} %_6, 1
  br i1 %_7, label %L3, label %L2
L1:
  %_10 = load i64, i64* %_3
  call void @_bal_panic (i64 %_10)
  unreachable
L2:
  %_8 = extractvalue {i64, i1} %_6, 0
  store i64 %_8, i64* %_2
  %_9 = load i64, i64* %_2
  ret i64 %_9
L3:
  store i64 1, i64* %_3
  br label %L1
}
