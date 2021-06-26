@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
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
  %_32 = alloca i8
  %_33 = load i8*, i8** @_bal_stack_guard
  %_34 = icmp ult i8* %_32, %_33
  br i1 %_34, label %L2, label %L1
L1:
  %_35 = call i64 @_B_div (i64 60, i64 2)
  store i64 %_35, i64* %_0
  %_36 = load i64, i64* %_0
  %_37 = call i8* @_bal_alloc (i64 8)
  %_38 = bitcast i8* %_37 to i64*
  store i64 %_36, i64* %_38, align 8
  %_39 = getelementptr i8, i8* %_37, i64 144115188075855872
  call void @_Bio__println (i8* %_39)
  store i8* null, i8** %_1
  %_40 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_40, i64* %_2
  %_41 = load i64, i64* %_2
  %_42 = call i64 @_B_div (i64 %_41, i64 4)
  store i64 %_42, i64* %_3
  %_43 = load i64, i64* %_3
  %_44 = call i8* @_bal_alloc (i64 8)
  %_45 = bitcast i8* %_44 to i64*
  store i64 %_43, i64* %_45, align 8
  %_46 = getelementptr i8, i8* %_44, i64 144115188075855872
  call void @_Bio__println (i8* %_46)
  store i8* null, i8** %_4
  %_47 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_47, i64* %_5
  %_48 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_48, i64* %_6
  %_49 = load i64, i64* %_5
  %_50 = load i64, i64* %_6
  %_51 = call i64 @_B_div (i64 %_49, i64 %_50)
  store i64 %_51, i64* %_7
  %_52 = load i64, i64* %_7
  %_53 = call i8* @_bal_alloc (i64 8)
  %_54 = bitcast i8* %_53 to i64*
  store i64 %_52, i64* %_54, align 8
  %_55 = getelementptr i8, i8* %_53, i64 144115188075855872
  call void @_Bio__println (i8* %_55)
  store i8* null, i8** %_8
  %_56 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_56, i64* %_9
  %_57 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_57, i64* %_10
  %_58 = load i64, i64* %_9
  %_59 = load i64, i64* %_10
  %_60 = call i64 @_B_div (i64 %_58, i64 %_59)
  store i64 %_60, i64* %_11
  %_61 = load i64, i64* %_11
  %_62 = call i8* @_bal_alloc (i64 8)
  %_63 = bitcast i8* %_62 to i64*
  store i64 %_61, i64* %_63, align 8
  %_64 = getelementptr i8, i8* %_62, i64 144115188075855872
  call void @_Bio__println (i8* %_64)
  store i8* null, i8** %_12
  %_65 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_65, i64* %_13
  %_66 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_66, i64* %_14
  %_67 = load i64, i64* %_13
  %_68 = load i64, i64* %_14
  %_69 = call i64 @_B_div (i64 %_67, i64 %_68)
  store i64 %_69, i64* %_15
  %_70 = load i64, i64* %_15
  %_71 = call i64 @_B_div (i64 %_70, i64 2)
  store i64 %_71, i64* %_16
  %_72 = load i64, i64* %_16
  %_73 = call i8* @_bal_alloc (i64 8)
  %_74 = bitcast i8* %_73 to i64*
  store i64 %_72, i64* %_74, align 8
  %_75 = getelementptr i8, i8* %_73, i64 144115188075855872
  call void @_Bio__println (i8* %_75)
  store i8* null, i8** %_17
  %_76 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_76, i64* %_18
  %_77 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_77, i64* %_19
  %_78 = load i64, i64* %_18
  %_79 = load i64, i64* %_19
  %_80 = call i64 @_B_div (i64 %_78, i64 %_79)
  store i64 %_80, i64* %_20
  %_81 = call i64 @_B_div (i64 10, i64 5)
  store i64 %_81, i64* %_21
  %_82 = load i64, i64* %_20
  %_83 = load i64, i64* %_21
  %_84 = call i64 @_B_div (i64 %_82, i64 %_83)
  store i64 %_84, i64* %_22
  %_85 = load i64, i64* %_22
  %_86 = call i8* @_bal_alloc (i64 8)
  %_87 = bitcast i8* %_86 to i64*
  store i64 %_85, i64* %_87, align 8
  %_88 = getelementptr i8, i8* %_86, i64 144115188075855872
  call void @_Bio__println (i8* %_88)
  store i8* null, i8** %_23
  %_89 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_89, i64* %_24
  %_90 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_90, i64* %_25
  %_91 = load i64, i64* %_24
  %_92 = load i64, i64* %_25
  %_93 = call i64 @_B_div (i64 %_91, i64 %_92)
  store i64 %_93, i64* %_26
  %_94 = call i64 @_B_div (i64 400, i64 20)
  store i64 %_94, i64* %_27
  %_95 = call i64 @_B_div (i64 100, i64 10)
  store i64 %_95, i64* %_28
  %_96 = load i64, i64* %_27
  %_97 = load i64, i64* %_28
  %_98 = call i64 @_B_div (i64 %_96, i64 %_97)
  store i64 %_98, i64* %_29
  %_99 = load i64, i64* %_26
  %_100 = load i64, i64* %_29
  %_101 = call i64 @_B_div (i64 %_99, i64 %_100)
  store i64 %_101, i64* %_30
  %_102 = load i64, i64* %_30
  %_103 = call i8* @_bal_alloc (i64 8)
  %_104 = bitcast i8* %_103 to i64*
  store i64 %_102, i64* %_104, align 8
  %_105 = getelementptr i8, i8* %_103, i64 144115188075855872
  call void @_Bio__println (i8* %_105)
  store i8* null, i8** %_31
  ret void
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
define internal i64 @_B_div (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_7 = load i64, i64* %x
  %_8 = load i64, i64* %y
  %_9 = icmp eq i64 %_8, 0
  br i1 %_9, label %L4, label %L5
L2:
  %_15 = load i64, i64* %_3
  call void @_bal_panic (i64 %_15)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  store i64 2, i64* %_3
  br label %L2
L5:
  %_10 = icmp eq i64 %_7, -9223372036854775808
  %_11 = icmp eq i64 %_8, -1
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %L7, label %L6
L6:
  %_13 = sdiv i64 %_7, %_8
  store i64 %_13, i64* %_2
  %_14 = load i64, i64* %_2
  ret i64 %_14
L7:
  store i64 1, i64* %_3
  br label %L2
}
