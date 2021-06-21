declare void @_Bio__println (i64)
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
  call void @_Bio__println (i64 %_33)
  store i8* null, i8** %_1
  %_34 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_34, i64* %_2
  %_35 = load i64, i64* %_2
  %_36 = call i64 @_B_div (i64 %_35, i64 4)
  store i64 %_36, i64* %_3
  %_37 = load i64, i64* %_3
  call void @_Bio__println (i64 %_37)
  store i8* null, i8** %_4
  %_38 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_38, i64* %_5
  %_39 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_39, i64* %_6
  %_40 = load i64, i64* %_5
  %_41 = load i64, i64* %_6
  %_42 = call i64 @_B_div (i64 %_40, i64 %_41)
  store i64 %_42, i64* %_7
  %_43 = load i64, i64* %_7
  call void @_Bio__println (i64 %_43)
  store i8* null, i8** %_8
  %_44 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_44, i64* %_9
  %_45 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_45, i64* %_10
  %_46 = load i64, i64* %_9
  %_47 = load i64, i64* %_10
  %_48 = call i64 @_B_div (i64 %_46, i64 %_47)
  store i64 %_48, i64* %_11
  %_49 = load i64, i64* %_11
  call void @_Bio__println (i64 %_49)
  store i8* null, i8** %_12
  %_50 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_50, i64* %_13
  %_51 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_51, i64* %_14
  %_52 = load i64, i64* %_13
  %_53 = load i64, i64* %_14
  %_54 = call i64 @_B_div (i64 %_52, i64 %_53)
  store i64 %_54, i64* %_15
  %_55 = load i64, i64* %_15
  %_56 = call i64 @_B_div (i64 %_55, i64 2)
  store i64 %_56, i64* %_16
  %_57 = load i64, i64* %_16
  call void @_Bio__println (i64 %_57)
  store i8* null, i8** %_17
  %_58 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_58, i64* %_18
  %_59 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_59, i64* %_19
  %_60 = load i64, i64* %_18
  %_61 = load i64, i64* %_19
  %_62 = call i64 @_B_div (i64 %_60, i64 %_61)
  store i64 %_62, i64* %_20
  %_63 = call i64 @_B_div (i64 10, i64 5)
  store i64 %_63, i64* %_21
  %_64 = load i64, i64* %_20
  %_65 = load i64, i64* %_21
  %_66 = call i64 @_B_div (i64 %_64, i64 %_65)
  store i64 %_66, i64* %_22
  %_67 = load i64, i64* %_22
  call void @_Bio__println (i64 %_67)
  store i8* null, i8** %_23
  %_68 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_68, i64* %_24
  %_69 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_69, i64* %_25
  %_70 = load i64, i64* %_24
  %_71 = load i64, i64* %_25
  %_72 = call i64 @_B_div (i64 %_70, i64 %_71)
  store i64 %_72, i64* %_26
  %_73 = call i64 @_B_div (i64 400, i64 20)
  store i64 %_73, i64* %_27
  %_74 = call i64 @_B_div (i64 100, i64 10)
  store i64 %_74, i64* %_28
  %_75 = load i64, i64* %_27
  %_76 = load i64, i64* %_28
  %_77 = call i64 @_B_div (i64 %_75, i64 %_76)
  store i64 %_77, i64* %_29
  %_78 = load i64, i64* %_26
  %_79 = load i64, i64* %_29
  %_80 = call i64 @_B_div (i64 %_78, i64 %_79)
  store i64 %_80, i64* %_30
  %_81 = load i64, i64* %_30
  call void @_Bio__println (i64 %_81)
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
