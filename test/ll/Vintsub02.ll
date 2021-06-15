declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i1, align 8
  %_8 = alloca i64, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i64, align 8
  %_11 = alloca i1, align 8
  %_12 = alloca i64, align 8
  %_13 = alloca i64, align 8
  %_14 = alloca i64, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i64, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i64, align 8
  %_19 = alloca i1, align 8
  %_20 = alloca i64, align 8
  %_21 = alloca i1, align 8
  %_22 = alloca i64, align 8
  %_23 = alloca i64, align 8
  %_24 = alloca i64, align 8
  %_25 = alloca i1, align 8
  %_26 = alloca i64, align 8
  %_27 = alloca i64, align 8
  %_28 = alloca i64, align 8
  %_29 = alloca i1, align 8
  %_30 = alloca i64, align 8
  %_31 = alloca i64, align 8
  %_32 = alloca i1, align 8
  %_33 = alloca i64, align 8
  %_34 = alloca i64, align 8
  %_35 = alloca i1, align 8
  %_36 = alloca i64, align 8
  %_37 = alloca i64, align 8
  %_38 = alloca i1, align 8
  %_39 = alloca i64, align 8
  %_40 = alloca i64, align 8
  %_41 = alloca i64, align 8
  %_42 = alloca i64, align 8
  %_43 = alloca i1, align 8
  %_44 = alloca i64, align 8
  %_45 = alloca i1, align 8
  %_46 = alloca i64, align 8
  %_47 = alloca i1, align 8
  %_48 = alloca i64, align 8
  %_49 = alloca i1, align 8
  %_50 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_50, i64* %_0, align 8
  %_51 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_51)
  store i1 0, i1* %_1, align 8
  %_52 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_52, i64* %_2, align 8
  %_53 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_53)
  store i1 0, i1* %_3, align 8
  %_54 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_54, i64* %_4, align 8
  %_55 = load i64, i64* %_4, align 8
  call void @_Bio__println (i64 %_55)
  store i1 0, i1* %_5, align 8
  %_56 = call i64 @_B_sub (i64 9223372036854775806, i64 1)
  store i64 %_56, i64* %_6, align 8
  %_57 = load i64, i64* %_6, align 8
  call void @_Bio__println (i64 %_57)
  store i1 0, i1* %_7, align 8
  %_58 = call i64 @_B_sub (i64 1, i64 1)
  store i64 %_58, i64* %_8, align 8
  %_59 = load i64, i64* %_8, align 8
  call void @_Bio__println (i64 %_59)
  store i1 0, i1* %_9, align 8
  %_60 = call i64 @_B_sub (i64 0, i64 1)
  store i64 %_60, i64* %_10, align 8
  %_61 = load i64, i64* %_10, align 8
  call void @_Bio__println (i64 %_61)
  store i1 0, i1* %_11, align 8
  %_62 = call i64 @_B_sub (i64 -1, i64 -1)
  store i64 %_62, i64* %_14, align 8
  %_63 = load i64, i64* %_14, align 8
  call void @_Bio__println (i64 %_63)
  store i1 0, i1* %_15, align 8
  %_64 = call i64 @_B_sub (i64 9223372036854775806, i64 0)
  store i64 %_64, i64* %_16, align 8
  %_65 = load i64, i64* %_16, align 8
  call void @_Bio__println (i64 %_65)
  store i1 0, i1* %_17, align 8
  %_66 = call i64 @_B_sub (i64 1, i64 0)
  store i64 %_66, i64* %_18, align 8
  %_67 = load i64, i64* %_18, align 8
  call void @_Bio__println (i64 %_67)
  store i1 0, i1* %_19, align 8
  %_68 = call i64 @_B_sub (i64 0, i64 0)
  store i64 %_68, i64* %_20, align 8
  %_69 = load i64, i64* %_20, align 8
  call void @_Bio__println (i64 %_69)
  store i1 0, i1* %_21, align 8
  %_70 = call i64 @_B_sub (i64 -1, i64 0)
  store i64 %_70, i64* %_24, align 8
  %_71 = load i64, i64* %_24, align 8
  call void @_Bio__println (i64 %_71)
  store i1 0, i1* %_25, align 8
  %_72 = call i64 @_B_sub (i64 -9223372036854775806, i64 0)
  store i64 %_72, i64* %_28, align 8
  %_73 = load i64, i64* %_28, align 8
  call void @_Bio__println (i64 %_73)
  store i1 0, i1* %_29, align 8
  %_74 = call i64 @_B_sub (i64 9223372036854775806, i64 -1)
  store i64 %_74, i64* %_31, align 8
  %_75 = load i64, i64* %_31, align 8
  call void @_Bio__println (i64 %_75)
  store i1 0, i1* %_32, align 8
  %_76 = call i64 @_B_sub (i64 1, i64 -1)
  store i64 %_76, i64* %_34, align 8
  %_77 = load i64, i64* %_34, align 8
  call void @_Bio__println (i64 %_77)
  store i1 0, i1* %_35, align 8
  %_78 = call i64 @_B_sub (i64 0, i64 -1)
  store i64 %_78, i64* %_37, align 8
  %_79 = load i64, i64* %_37, align 8
  call void @_Bio__println (i64 %_79)
  store i1 0, i1* %_38, align 8
  %_80 = call i64 @_B_sub (i64 -1, i64 1)
  store i64 %_80, i64* %_42, align 8
  %_81 = load i64, i64* %_42, align 8
  call void @_Bio__println (i64 %_81)
  store i1 0, i1* %_43, align 8
  %_82 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_82, i64* %_44, align 8
  %_83 = load i64, i64* %_44, align 8
  call void @_Bio__println (i64 %_83)
  store i1 0, i1* %_45, align 8
  %_84 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_84, i64* %_46, align 8
  %_85 = load i64, i64* %_46, align 8
  call void @_Bio__println (i64 %_85)
  store i1 0, i1* %_47, align 8
  %_86 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_86, i64* %_48, align 8
  %_87 = load i64, i64* %_48, align 8
  call void @_Bio__println (i64 %_87)
  store i1 0, i1* %_49, align 8
  ret void
}
define internal i64 @_B_sub (i64 %_0, i64 %_1) {
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %a, align 8
  store i64 %_1, i64* %b, align 8
  %_4 = load i64, i64* %a, align 8
  %_5 = load i64, i64* %b, align 8
  %_6 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_4, i64 %_5)
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
