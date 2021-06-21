declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i64
  %_8 = alloca i8*
  %_9 = alloca i64
  %_10 = alloca i8*
  %_11 = alloca i64
  %_12 = alloca i64
  %_13 = alloca i8*
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i8*
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i8*
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i8*
  %_31 = alloca i64
  %_32 = alloca i64
  %_33 = alloca i8*
  %_34 = alloca i64
  %_35 = alloca i64
  %_36 = alloca i8*
  %_37 = alloca i64
  %_38 = alloca i64
  %_39 = alloca i64
  %_40 = alloca i8*
  %_41 = call i64 @_B_mul (i64 9223372036854775806, i64 1)
  store i64 %_41, i64* %_0
  %_42 = load i64, i64* %_0
  call void @_Bio__println (i64 %_42)
  store i8* null, i8** %_1
  %_43 = call i64 @_B_mul (i64 9223372036854775806, i64 0)
  store i64 %_43, i64* %_2
  %_44 = load i64, i64* %_2
  call void @_Bio__println (i64 %_44)
  store i8* null, i8** %_3
  %_45 = call i64 @_B_mul (i64 9223372036854775806, i64 -1)
  store i64 %_45, i64* %_5
  %_46 = load i64, i64* %_5
  call void @_Bio__println (i64 %_46)
  store i8* null, i8** %_6
  %_47 = call i64 @_B_mul (i64 1, i64 1)
  store i64 %_47, i64* %_7
  %_48 = load i64, i64* %_7
  call void @_Bio__println (i64 %_48)
  store i8* null, i8** %_8
  %_49 = call i64 @_B_mul (i64 1, i64 0)
  store i64 %_49, i64* %_9
  %_50 = load i64, i64* %_9
  call void @_Bio__println (i64 %_50)
  store i8* null, i8** %_10
  %_51 = call i64 @_B_mul (i64 1, i64 -1)
  store i64 %_51, i64* %_12
  %_52 = load i64, i64* %_12
  call void @_Bio__println (i64 %_52)
  store i8* null, i8** %_13
  %_53 = call i64 @_B_mul (i64 0, i64 1)
  store i64 %_53, i64* %_14
  %_54 = load i64, i64* %_14
  call void @_Bio__println (i64 %_54)
  store i8* null, i8** %_15
  %_55 = call i64 @_B_mul (i64 0, i64 0)
  store i64 %_55, i64* %_16
  %_56 = load i64, i64* %_16
  call void @_Bio__println (i64 %_56)
  store i8* null, i8** %_17
  %_57 = call i64 @_B_mul (i64 0, i64 -1)
  store i64 %_57, i64* %_19
  %_58 = load i64, i64* %_19
  call void @_Bio__println (i64 %_58)
  store i8* null, i8** %_20
  %_59 = call i64 @_B_mul (i64 -1, i64 1)
  store i64 %_59, i64* %_22
  %_60 = load i64, i64* %_22
  call void @_Bio__println (i64 %_60)
  store i8* null, i8** %_23
  %_61 = call i64 @_B_mul (i64 -1, i64 0)
  store i64 %_61, i64* %_25
  %_62 = load i64, i64* %_25
  call void @_Bio__println (i64 %_62)
  store i8* null, i8** %_26
  %_63 = call i64 @_B_mul (i64 -1, i64 -1)
  store i64 %_63, i64* %_29
  %_64 = load i64, i64* %_29
  call void @_Bio__println (i64 %_64)
  store i8* null, i8** %_30
  %_65 = call i64 @_B_mul (i64 -9223372036854775806, i64 1)
  store i64 %_65, i64* %_32
  %_66 = load i64, i64* %_32
  call void @_Bio__println (i64 %_66)
  store i8* null, i8** %_33
  %_67 = call i64 @_B_mul (i64 -9223372036854775806, i64 0)
  store i64 %_67, i64* %_35
  %_68 = load i64, i64* %_35
  call void @_Bio__println (i64 %_68)
  store i8* null, i8** %_36
  %_69 = call i64 @_B_mul (i64 -9223372036854775806, i64 -1)
  store i64 %_69, i64* %_39
  %_70 = load i64, i64* %_39
  call void @_Bio__println (i64 %_70)
  store i8* null, i8** %_40
  ret void
}
define internal i64 @_B_mul (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_4 = load i64, i64* %a
  %_5 = load i64, i64* %b
  %_6 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_4, i64 %_5)
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
