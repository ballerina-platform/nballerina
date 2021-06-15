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
  %_12 = alloca i1, align 8
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
  %_23 = alloca i1, align 8
  %_24 = alloca i64, align 8
  %_25 = alloca i64, align 8
  %_26 = alloca i64, align 8
  %_27 = alloca i64, align 8
  %_28 = alloca i64, align 8
  %_29 = alloca i64, align 8
  %_30 = alloca i64, align 8
  %_31 = alloca i1, align 8
  %_32 = call i64 @_B_div (i64 60, i64 2)
  store i64 %_32, i64* %_0, align 8
  %_33 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_33)
  store i1 0, i1* %_1, align 8
  %_34 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_34, i64* %_2, align 8
  %_35 = load i64, i64* %_2, align 8
  %_36 = call i64 @_B_div (i64 %_35, i64 4)
  store i64 %_36, i64* %_3, align 8
  %_37 = load i64, i64* %_3, align 8
  call void @_Bio__println (i64 %_37)
  store i1 0, i1* %_4, align 8
  %_38 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_38, i64* %_5, align 8
  %_39 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_39, i64* %_6, align 8
  %_40 = load i64, i64* %_5, align 8
  %_41 = load i64, i64* %_6, align 8
  %_42 = call i64 @_B_div (i64 %_40, i64 %_41)
  store i64 %_42, i64* %_7, align 8
  %_43 = load i64, i64* %_7, align 8
  call void @_Bio__println (i64 %_43)
  store i1 0, i1* %_8, align 8
  %_44 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_44, i64* %_9, align 8
  %_45 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_45, i64* %_10, align 8
  %_46 = load i64, i64* %_9, align 8
  %_47 = load i64, i64* %_10, align 8
  %_48 = call i64 @_B_div (i64 %_46, i64 %_47)
  store i64 %_48, i64* %_11, align 8
  %_49 = load i64, i64* %_11, align 8
  call void @_Bio__println (i64 %_49)
  store i1 0, i1* %_12, align 8
  %_50 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_50, i64* %_13, align 8
  %_51 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_51, i64* %_14, align 8
  %_52 = load i64, i64* %_13, align 8
  %_53 = load i64, i64* %_14, align 8
  %_54 = call i64 @_B_div (i64 %_52, i64 %_53)
  store i64 %_54, i64* %_15, align 8
  %_55 = load i64, i64* %_15, align 8
  %_56 = call i64 @_B_div (i64 %_55, i64 2)
  store i64 %_56, i64* %_16, align 8
  %_57 = load i64, i64* %_16, align 8
  call void @_Bio__println (i64 %_57)
  store i1 0, i1* %_17, align 8
  %_58 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_58, i64* %_18, align 8
  %_59 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_59, i64* %_19, align 8
  %_60 = load i64, i64* %_18, align 8
  %_61 = load i64, i64* %_19, align 8
  %_62 = call i64 @_B_div (i64 %_60, i64 %_61)
  store i64 %_62, i64* %_20, align 8
  %_63 = call i64 @_B_div (i64 10, i64 5)
  store i64 %_63, i64* %_21, align 8
  %_64 = load i64, i64* %_20, align 8
  %_65 = load i64, i64* %_21, align 8
  %_66 = call i64 @_B_div (i64 %_64, i64 %_65)
  store i64 %_66, i64* %_22, align 8
  %_67 = load i64, i64* %_22, align 8
  call void @_Bio__println (i64 %_67)
  store i1 0, i1* %_23, align 8
  %_68 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_68, i64* %_24, align 8
  %_69 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_69, i64* %_25, align 8
  %_70 = load i64, i64* %_24, align 8
  %_71 = load i64, i64* %_25, align 8
  %_72 = call i64 @_B_div (i64 %_70, i64 %_71)
  store i64 %_72, i64* %_26, align 8
  %_73 = call i64 @_B_div (i64 400, i64 20)
  store i64 %_73, i64* %_27, align 8
  %_74 = call i64 @_B_div (i64 100, i64 10)
  store i64 %_74, i64* %_28, align 8
  %_75 = load i64, i64* %_27, align 8
  %_76 = load i64, i64* %_28, align 8
  %_77 = call i64 @_B_div (i64 %_75, i64 %_76)
  store i64 %_77, i64* %_29, align 8
  %_78 = load i64, i64* %_26, align 8
  %_79 = load i64, i64* %_29, align 8
  %_80 = call i64 @_B_div (i64 %_78, i64 %_79)
  store i64 %_80, i64* %_30, align 8
  %_81 = load i64, i64* %_30, align 8
  call void @_Bio__println (i64 %_81)
  store i1 0, i1* %_31, align 8
  ret void
}
define internal i64 @_B_div (i64 %_0, i64 %_1) {
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  store i64 %_0, i64* %x, align 8
  store i64 %_1, i64* %y, align 8
  %_6 = load i64, i64* %x, align 8
  %_7 = load i64, i64* %y, align 8
  %_8 = icmp eq i64 %_7, 0
  br i1 %_8, label %L2, label %L3
L1:
  %_14 = load i64, i64* %_5, align 8
  call void @_bal_panic (i64 %_14)
  unreachable
L2:
  store i64 2, i64* %_5, align 8
  br label %L1
L3:
  %_9 = icmp eq i64 %_6, -9223372036854775808
  %_10 = icmp eq i64 %_7, -1
  %_11 = and i1 %_9, %_10
  br i1 %_11, label %L5, label %L4
L4:
  %_12 = sdiv i64 %_6, %_7
  store i64 %_12, i64* %_4, align 8
  %_13 = load i64, i64* %_4, align 8
  ret i64 %_13
L5:
  store i64 1, i64* %_5, align 8
  br label %L1
}
