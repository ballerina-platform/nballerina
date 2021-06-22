declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_12 = alloca i8*
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i8*
  %_32 = call i64 @_B_div (i64 60, i64 2)
  store i64 %_32, i64* %_0
  %_33 = load i64, i64* %_0
  %_34 = call i8* @_bal_alloc (i64 8)
  %_35 = bitcast i8* %_34 to i64*
  store i64 %_33, i64* %_35, align 8
  %_36 = getelementptr i8, i8* %_34, i64 144115188075855872
  call void @_Bio__println (i8* %_36)
  store i8* null, i8** %_1
  %_37 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_37, i64* %_2
  %_38 = load i64, i64* %_2
  %_39 = call i64 @_B_div (i64 %_38, i64 4)
  store i64 %_39, i64* %_3
  %_40 = load i64, i64* %_3
  %_41 = call i8* @_bal_alloc (i64 8)
  %_42 = bitcast i8* %_41 to i64*
  store i64 %_40, i64* %_42, align 8
  %_43 = getelementptr i8, i8* %_41, i64 144115188075855872
  call void @_Bio__println (i8* %_43)
  store i8* null, i8** %_4
  %_44 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_44, i64* %_5
  %_45 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_45, i64* %_6
  %_46 = load i64, i64* %_5
  %_47 = load i64, i64* %_6
  %_48 = call i64 @_B_div (i64 %_46, i64 %_47)
  store i64 %_48, i64* %_7
  %_49 = load i64, i64* %_7
  %_50 = call i8* @_bal_alloc (i64 8)
  %_51 = bitcast i8* %_50 to i64*
  store i64 %_49, i64* %_51, align 8
  %_52 = getelementptr i8, i8* %_50, i64 144115188075855872
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_8
  %_53 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_53, i64* %_9
  %_54 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_54, i64* %_10
  %_55 = load i64, i64* %_9
  %_56 = load i64, i64* %_10
  %_57 = call i64 @_B_div (i64 %_55, i64 %_56)
  store i64 %_57, i64* %_11
  %_58 = load i64, i64* %_11
  %_59 = call i8* @_bal_alloc (i64 8)
  %_60 = bitcast i8* %_59 to i64*
  store i64 %_58, i64* %_60, align 8
  %_61 = getelementptr i8, i8* %_59, i64 144115188075855872
  call void @_Bio__println (i8* %_61)
  store i8* null, i8** %_12
  %_62 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_62, i64* %_13
  %_63 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_63, i64* %_14
  %_64 = load i64, i64* %_13
  %_65 = load i64, i64* %_14
  %_66 = call i64 @_B_div (i64 %_64, i64 %_65)
  store i64 %_66, i64* %_15
  %_67 = load i64, i64* %_15
  %_68 = call i64 @_B_div (i64 %_67, i64 2)
  store i64 %_68, i64* %_16
  %_69 = load i64, i64* %_16
  %_70 = call i8* @_bal_alloc (i64 8)
  %_71 = bitcast i8* %_70 to i64*
  store i64 %_69, i64* %_71, align 8
  %_72 = getelementptr i8, i8* %_70, i64 144115188075855872
  call void @_Bio__println (i8* %_72)
  store i8* null, i8** %_17
  %_73 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_73, i64* %_18
  %_74 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_74, i64* %_19
  %_75 = load i64, i64* %_18
  %_76 = load i64, i64* %_19
  %_77 = call i64 @_B_div (i64 %_75, i64 %_76)
  store i64 %_77, i64* %_20
  %_78 = call i64 @_B_div (i64 10, i64 5)
  store i64 %_78, i64* %_21
  %_79 = load i64, i64* %_20
  %_80 = load i64, i64* %_21
  %_81 = call i64 @_B_div (i64 %_79, i64 %_80)
  store i64 %_81, i64* %_22
  %_82 = load i64, i64* %_22
  %_83 = call i8* @_bal_alloc (i64 8)
  %_84 = bitcast i8* %_83 to i64*
  store i64 %_82, i64* %_84, align 8
  %_85 = getelementptr i8, i8* %_83, i64 144115188075855872
  call void @_Bio__println (i8* %_85)
  store i8* null, i8** %_23
  %_86 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_86, i64* %_24
  %_87 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_87, i64* %_25
  %_88 = load i64, i64* %_24
  %_89 = load i64, i64* %_25
  %_90 = call i64 @_B_div (i64 %_88, i64 %_89)
  store i64 %_90, i64* %_26
  %_91 = call i64 @_B_div (i64 400, i64 20)
  store i64 %_91, i64* %_27
  %_92 = call i64 @_B_div (i64 100, i64 10)
  store i64 %_92, i64* %_28
  %_93 = load i64, i64* %_27
  %_94 = load i64, i64* %_28
  %_95 = call i64 @_B_div (i64 %_93, i64 %_94)
  store i64 %_95, i64* %_29
  %_96 = load i64, i64* %_26
  %_97 = load i64, i64* %_29
  %_98 = call i64 @_B_div (i64 %_96, i64 %_97)
  store i64 %_98, i64* %_30
  %_99 = load i64, i64* %_30
  %_100 = call i8* @_bal_alloc (i64 8)
  %_101 = bitcast i8* %_100 to i64*
  store i64 %_99, i64* %_101, align 8
  %_102 = getelementptr i8, i8* %_100, i64 144115188075855872
  call void @_Bio__println (i8* %_102)
  store i8* null, i8** %_31
  ret void
}
define internal i64 @_B_div (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_4 = load i64, i64* %x
  %_5 = load i64, i64* %y
  %_6 = icmp eq i64 %_5, 0
  br i1 %_6, label %L2, label %L3
L1:
  %_12 = load i64, i64* %_3
  call void @_bal_panic (i64 %_12)
  unreachable
L2:
  store i64 2, i64* %_3
  br label %L1
L3:
  %_7 = icmp eq i64 %_4, -9223372036854775808
  %_8 = icmp eq i64 %_5, -1
  %_9 = and i1 %_7, %_8
  br i1 %_9, label %L5, label %L4
L4:
  %_10 = sdiv i64 %_4, %_5
  store i64 %_10, i64* %_2
  %_11 = load i64, i64* %_2
  ret i64 %_11
L5:
  store i64 1, i64* %_3
  br label %L1
}
