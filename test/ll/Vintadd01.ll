@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
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
  %_35 = alloca i8
  %_36 = load i8*, i8** @_bal_stack_guard
  %_37 = icmp ult i8* %_35, %_36
  br i1 %_37, label %L2, label %L1
L1:
  %_38 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_38, i64* %_0
  %_39 = load i64, i64* %_0
  %_40 = call i8* @_bal_alloc (i64 8)
  %_41 = bitcast i8* %_40 to i64*
  store i64 %_39, i64* %_41, align 8
  %_42 = getelementptr i8, i8* %_40, i64 144115188075855872
  call void @_Bio__println (i8* %_42)
  store i8* null, i8** %_1
  %_43 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_43, i64* %_2
  %_44 = load i64, i64* %_2
  %_45 = call i64 @_B_add (i64 %_44, i64 11)
  store i64 %_45, i64* %_3
  %_46 = load i64, i64* %_3
  %_47 = call i8* @_bal_alloc (i64 8)
  %_48 = bitcast i8* %_47 to i64*
  store i64 %_46, i64* %_48, align 8
  %_49 = getelementptr i8, i8* %_47, i64 144115188075855872
  call void @_Bio__println (i8* %_49)
  store i8* null, i8** %_4
  %_50 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_50, i64* %_5
  %_51 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_51, i64* %_6
  %_52 = load i64, i64* %_5
  %_53 = load i64, i64* %_6
  %_54 = call i64 @_B_add (i64 %_52, i64 %_53)
  store i64 %_54, i64* %_7
  %_55 = load i64, i64* %_7
  %_56 = call i8* @_bal_alloc (i64 8)
  %_57 = bitcast i8* %_56 to i64*
  store i64 %_55, i64* %_57, align 8
  %_58 = getelementptr i8, i8* %_56, i64 144115188075855872
  call void @_Bio__println (i8* %_58)
  store i8* null, i8** %_8
  %_59 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_59, i64* %_9
  %_60 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_60, i64* %_10
  %_61 = load i64, i64* %_9
  %_62 = load i64, i64* %_10
  %_63 = call i64 @_B_add (i64 %_61, i64 %_62)
  store i64 %_63, i64* %_11
  %_64 = load i64, i64* %_11
  %_65 = call i64 @_B_add (i64 %_64, i64 12)
  store i64 %_65, i64* %_12
  %_66 = load i64, i64* %_12
  %_67 = call i8* @_bal_alloc (i64 8)
  %_68 = bitcast i8* %_67 to i64*
  store i64 %_66, i64* %_68, align 8
  %_69 = getelementptr i8, i8* %_67, i64 144115188075855872
  call void @_Bio__println (i8* %_69)
  store i8* null, i8** %_13
  %_70 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_70, i64* %_14
  %_71 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_71, i64* %_15
  %_72 = load i64, i64* %_14
  %_73 = load i64, i64* %_15
  %_74 = call i64 @_B_add (i64 %_72, i64 %_73)
  store i64 %_74, i64* %_16
  %_75 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_75, i64* %_17
  %_76 = load i64, i64* %_16
  %_77 = load i64, i64* %_17
  %_78 = call i64 @_B_add (i64 %_76, i64 %_77)
  store i64 %_78, i64* %_18
  %_79 = load i64, i64* %_18
  %_80 = call i8* @_bal_alloc (i64 8)
  %_81 = bitcast i8* %_80 to i64*
  store i64 %_79, i64* %_81, align 8
  %_82 = getelementptr i8, i8* %_80, i64 144115188075855872
  call void @_Bio__println (i8* %_82)
  store i8* null, i8** %_19
  %_83 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_83, i64* %_20
  %_84 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_84, i64* %_21
  %_85 = load i64, i64* %_20
  %_86 = load i64, i64* %_21
  %_87 = call i64 @_B_add (i64 %_85, i64 %_86)
  store i64 %_87, i64* %_22
  %_88 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_88, i64* %_23
  %_89 = load i64, i64* %_23
  %_90 = call i64 @_B_add (i64 %_89, i64 5)
  store i64 %_90, i64* %_24
  %_91 = load i64, i64* %_22
  %_92 = load i64, i64* %_24
  %_93 = call i64 @_B_add (i64 %_91, i64 %_92)
  store i64 %_93, i64* %_25
  %_94 = load i64, i64* %_25
  %_95 = call i8* @_bal_alloc (i64 8)
  %_96 = bitcast i8* %_95 to i64*
  store i64 %_94, i64* %_96, align 8
  %_97 = getelementptr i8, i8* %_95, i64 144115188075855872
  call void @_Bio__println (i8* %_97)
  store i8* null, i8** %_26
  %_98 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_98, i64* %_27
  %_99 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_99, i64* %_28
  %_100 = load i64, i64* %_27
  %_101 = load i64, i64* %_28
  %_102 = call i64 @_B_add (i64 %_100, i64 %_101)
  store i64 %_102, i64* %_29
  %_103 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_103, i64* %_30
  %_104 = call i64 @_B_add (i64 23, i64 50)
  store i64 %_104, i64* %_31
  %_105 = load i64, i64* %_30
  %_106 = load i64, i64* %_31
  %_107 = call i64 @_B_add (i64 %_105, i64 %_106)
  store i64 %_107, i64* %_32
  %_108 = load i64, i64* %_29
  %_109 = load i64, i64* %_32
  %_110 = call i64 @_B_add (i64 %_108, i64 %_109)
  store i64 %_110, i64* %_33
  %_111 = load i64, i64* %_33
  %_112 = call i8* @_bal_alloc (i64 8)
  %_113 = bitcast i8* %_112 to i64*
  store i64 %_111, i64* %_113, align 8
  %_114 = getelementptr i8, i8* %_112, i64 144115188075855872
  call void @_Bio__println (i8* %_114)
  store i8* null, i8** %_34
  ret void
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
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
  %_9 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_7, i64 %_8)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_13 = load i64, i64* %_3
  call void @_bal_panic (i64 %_13)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_2
  %_12 = load i64, i64* %_2
  ret i64 %_12
L5:
  store i64 1, i64* %_3
  br label %L2
}
