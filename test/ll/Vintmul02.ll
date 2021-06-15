declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i1, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i64, align 8
  %_6 = alloca i1, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i1, align 8
  %_9 = alloca i64, align 8
  %_10 = alloca i1, align 8
  %_11 = alloca i64, align 8
  %_12 = alloca i64, align 8
  %_13 = alloca i1, align 8
  %_14 = alloca i64, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i64, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i64, align 8
  %_19 = alloca i64, align 8
  %_20 = alloca i1, align 8
  %_21 = alloca i64, align 8
  %_22 = alloca i64, align 8
  %_23 = alloca i1, align 8
  %_24 = alloca i64, align 8
  %_25 = alloca i64, align 8
  %_26 = alloca i1, align 8
  %_27 = alloca i64, align 8
  %_28 = alloca i64, align 8
  %_29 = alloca i64, align 8
  %_30 = alloca i1, align 8
  %_31 = alloca i64, align 8
  %_32 = alloca i64, align 8
  %_33 = alloca i1, align 8
  %_34 = alloca i64, align 8
  %_35 = alloca i64, align 8
  %_36 = alloca i1, align 8
  %_37 = alloca i64, align 8
  %_38 = alloca i64, align 8
  %_39 = alloca i64, align 8
  %_40 = alloca i1, align 8
  %_41 = call i64 @_B_mul (i64 9223372036854775806, i64 1)
  store i64 %_41, i64* %_0, align 8
  %_42 = load i64, i64* %_0, align 8
  call void @_Bio__println (i64 %_42)
  store i1 0, i1* %_1, align 8
  %_43 = call i64 @_B_mul (i64 9223372036854775806, i64 0)
  store i64 %_43, i64* %_2, align 8
  %_44 = load i64, i64* %_2, align 8
  call void @_Bio__println (i64 %_44)
  store i1 0, i1* %_3, align 8
  %_45 = call i64 @_B_mul (i64 9223372036854775806, i64 -1)
  store i64 %_45, i64* %_5, align 8
  %_46 = load i64, i64* %_5, align 8
  call void @_Bio__println (i64 %_46)
  store i1 0, i1* %_6, align 8
  %_47 = call i64 @_B_mul (i64 1, i64 1)
  store i64 %_47, i64* %_7, align 8
  %_48 = load i64, i64* %_7, align 8
  call void @_Bio__println (i64 %_48)
  store i1 0, i1* %_8, align 8
  %_49 = call i64 @_B_mul (i64 1, i64 0)
  store i64 %_49, i64* %_9, align 8
  %_50 = load i64, i64* %_9, align 8
  call void @_Bio__println (i64 %_50)
  store i1 0, i1* %_10, align 8
  %_51 = call i64 @_B_mul (i64 1, i64 -1)
  store i64 %_51, i64* %_12, align 8
  %_52 = load i64, i64* %_12, align 8
  call void @_Bio__println (i64 %_52)
  store i1 0, i1* %_13, align 8
  %_53 = call i64 @_B_mul (i64 0, i64 1)
  store i64 %_53, i64* %_14, align 8
  %_54 = load i64, i64* %_14, align 8
  call void @_Bio__println (i64 %_54)
  store i1 0, i1* %_15, align 8
  %_55 = call i64 @_B_mul (i64 0, i64 0)
  store i64 %_55, i64* %_16, align 8
  %_56 = load i64, i64* %_16, align 8
  call void @_Bio__println (i64 %_56)
  store i1 0, i1* %_17, align 8
  %_57 = call i64 @_B_mul (i64 0, i64 -1)
  store i64 %_57, i64* %_19, align 8
  %_58 = load i64, i64* %_19, align 8
  call void @_Bio__println (i64 %_58)
  store i1 0, i1* %_20, align 8
  %_59 = call i64 @_B_mul (i64 -1, i64 1)
  store i64 %_59, i64* %_22, align 8
  %_60 = load i64, i64* %_22, align 8
  call void @_Bio__println (i64 %_60)
  store i1 0, i1* %_23, align 8
  %_61 = call i64 @_B_mul (i64 -1, i64 0)
  store i64 %_61, i64* %_25, align 8
  %_62 = load i64, i64* %_25, align 8
  call void @_Bio__println (i64 %_62)
  store i1 0, i1* %_26, align 8
  %_63 = call i64 @_B_mul (i64 -1, i64 -1)
  store i64 %_63, i64* %_29, align 8
  %_64 = load i64, i64* %_29, align 8
  call void @_Bio__println (i64 %_64)
  store i1 0, i1* %_30, align 8
  %_65 = call i64 @_B_mul (i64 -9223372036854775806, i64 1)
  store i64 %_65, i64* %_32, align 8
  %_66 = load i64, i64* %_32, align 8
  call void @_Bio__println (i64 %_66)
  store i1 0, i1* %_33, align 8
  %_67 = call i64 @_B_mul (i64 -9223372036854775806, i64 0)
  store i64 %_67, i64* %_35, align 8
  %_68 = load i64, i64* %_35, align 8
  call void @_Bio__println (i64 %_68)
  store i1 0, i1* %_36, align 8
  %_69 = call i64 @_B_mul (i64 -9223372036854775806, i64 -1)
  store i64 %_69, i64* %_39, align 8
  %_70 = load i64, i64* %_39, align 8
  call void @_Bio__println (i64 %_70)
  store i1 0, i1* %_40, align 8
  ret void
}
define internal i64 @_B_mul (i64 %_0, i64 %_1) {
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %_2 = alloca i64, align 8
  %_3 = alloca i64, align 8
  store i64 %_0, i64* %a, align 8
  store i64 %_1, i64* %b, align 8
  %_4 = load i64, i64* %a, align 8
  %_5 = load i64, i64* %b, align 8
  %_6 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_4, i64 %_5)
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
