declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i1, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i64, align 8
  %_10 = alloca i64, align 8
  %_11 = alloca i64, align 8
  %_12 = alloca i64, align 8
  %_13 = alloca i1, align 8
  %_14 = alloca i64, align 8
  %_15 = alloca i64, align 8
  %_16 = alloca i64, align 8
  %_17 = alloca i64, align 8
  %_18 = alloca i64, align 8
  %_19 = alloca i1, align 8
  %_20 = alloca i64, align 8
  %_21 = alloca i64, align 8
  %_22 = alloca i64, align 8
  %_23 = alloca i64, align 8
  %_24 = alloca i64, align 8
  %_25 = alloca i64, align 8
  %_26 = alloca i1, align 8
  %_27 = alloca i64, align 8
  %_28 = alloca i64, align 8
  %_29 = alloca i64, align 8
  %_30 = alloca i64, align 8
  %_31 = alloca i64, align 8
  %_32 = alloca i64, align 8
  %_33 = alloca i64, align 8
  %_34 = alloca i1, align 8
  %_35 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_35, i64* %_0, align 8
  %_36 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_36)
  store i1 0, i1* %_1, align 8
  %_37 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_37, i64* %_2, align 8
  %_38 = load i64, i64* %_2, align 8
  %_39 = call i64 @_B_add (i64 %_38, i64 11)
  store i64 %_39, i64* %_3, align 8
  %_40 = load i64, i64* %_3, align 8
  call void @_Bio__println (i64 %_40)
  store i1 0, i1* %_4, align 8
  %_41 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_41, i64* %_5, align 8
  %_42 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_42, i64* %_6, align 8
  %_43 = load i64, i64* %_5, align 8
  %_44 = load i64, i64* %_6, align 8
  %_45 = call i64 @_B_add (i64 %_43, i64 %_44)
  store i64 %_45, i64* %_7, align 8
  %_46 = load i64, i64* %_7, align 8
  call void @_Bio__println (i64 %_46)
  store i1 0, i1* %_8, align 8
  %_47 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_47, i64* %_9, align 8
  %_48 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_48, i64* %_10, align 8
  %_49 = load i64, i64* %_9, align 8
  %_50 = load i64, i64* %_10, align 8
  %_51 = call i64 @_B_add (i64 %_49, i64 %_50)
  store i64 %_51, i64* %_11, align 8
  %_52 = load i64, i64* %_11, align 8
  %_53 = call i64 @_B_add (i64 %_52, i64 12)
  store i64 %_53, i64* %_12, align 8
  %_54 = load i64, i64* %_12, align 8
  call void @_Bio__println (i64 %_54)
  store i1 0, i1* %_13, align 8
  %_55 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_55, i64* %_14, align 8
  %_56 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_56, i64* %_15, align 8
  %_57 = load i64, i64* %_14, align 8
  %_58 = load i64, i64* %_15, align 8
  %_59 = call i64 @_B_add (i64 %_57, i64 %_58)
  store i64 %_59, i64* %_16, align 8
  %_60 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_60, i64* %_17, align 8
  %_61 = load i64, i64* %_16, align 8
  %_62 = load i64, i64* %_17, align 8
  %_63 = call i64 @_B_add (i64 %_61, i64 %_62)
  store i64 %_63, i64* %_18, align 8
  %_64 = load i64, i64* %_18, align 8
  call void @_Bio__println (i64 %_64)
  store i1 0, i1* %_19, align 8
  %_65 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_65, i64* %_20, align 8
  %_66 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_66, i64* %_21, align 8
  %_67 = load i64, i64* %_20, align 8
  %_68 = load i64, i64* %_21, align 8
  %_69 = call i64 @_B_add (i64 %_67, i64 %_68)
  store i64 %_69, i64* %_22, align 8
  %_70 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_70, i64* %_23, align 8
  %_71 = load i64, i64* %_23, align 8
  %_72 = call i64 @_B_add (i64 %_71, i64 5)
  store i64 %_72, i64* %_24, align 8
  %_73 = load i64, i64* %_22, align 8
  %_74 = load i64, i64* %_24, align 8
  %_75 = call i64 @_B_add (i64 %_73, i64 %_74)
  store i64 %_75, i64* %_25, align 8
  %_76 = load i64, i64* %_25, align 8
  call void @_Bio__println (i64 %_76)
  store i1 0, i1* %_26, align 8
  %_77 = call i64 @_B_add (i64 3, i64 5)
  store i64 %_77, i64* %_27, align 8
  %_78 = call i64 @_B_add (i64 5, i64 9)
  store i64 %_78, i64* %_28, align 8
  %_79 = load i64, i64* %_27, align 8
  %_80 = load i64, i64* %_28, align 8
  %_81 = call i64 @_B_add (i64 %_79, i64 %_80)
  store i64 %_81, i64* %_29, align 8
  %_82 = call i64 @_B_add (i64 4, i64 7)
  store i64 %_82, i64* %_30, align 8
  %_83 = call i64 @_B_add (i64 23, i64 50)
  store i64 %_83, i64* %_31, align 8
  %_84 = load i64, i64* %_30, align 8
  %_85 = load i64, i64* %_31, align 8
  %_86 = call i64 @_B_add (i64 %_84, i64 %_85)
  store i64 %_86, i64* %_32, align 8
  %_87 = load i64, i64* %_29, align 8
  %_88 = load i64, i64* %_32, align 8
  %_89 = call i64 @_B_add (i64 %_87, i64 %_88)
  store i64 %_89, i64* %_33, align 8
  %_90 = load i64, i64* %_33, align 8
  call void @_Bio__println (i64 %_90)
  store i1 0, i1* %_34, align 8
  ret void
}
define internal i64 @_B_add (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_6 = load i64, i64* %x, align 8
  %_7 = load i64, i64* %y, align 8
  %_8 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_6, i64 %_7)
  %_9 = extractvalue {i64, i1} %_8, 1
  br i1 %_9, label %L3, label %L2
L1:
  %_12 = load i64, i64* %_5, align 8
  call void @_bal_panic (i64 %_12)
  unreachable
L2:
  %_10 = extractvalue {i64, i1} %_8, 0
  store i64 %_10, i64* %_4, align 8
  %_11 = load i64, i64* %_4, align 8
  ret i64 %_11
L3:
  store i64 1, i64* %_5, align 8
  br label %L1
}
