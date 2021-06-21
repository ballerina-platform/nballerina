declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i8*
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i8*
  %_18 = alloca i64
  %_19 = alloca i8*
  %_20 = alloca i64
  %_21 = alloca i8*
  %_22 = alloca i64
  %_23 = alloca i64
  %_24 = alloca i64
  %_25 = alloca i8*
  %_26 = alloca i64
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i8*
  %_30 = alloca i64
  %_31 = alloca i64
  %_32 = alloca i8*
  %_33 = alloca i64
  %_34 = alloca i64
  %_35 = alloca i8*
  %_36 = alloca i64
  %_37 = alloca i64
  %_38 = alloca i8*
  %_39 = alloca i64
  %_40 = alloca i64
  %_41 = alloca i64
  %_42 = alloca i64
  %_43 = alloca i8*
  %_44 = alloca i64
  %_45 = alloca i8*
  %_46 = alloca i64
  %_47 = alloca i8*
  %_48 = alloca i64
  %_49 = alloca i8*
  %_50 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_50, i64* %_0
  %_51 = load i64, i64* %_0
  call void @_Bio__println (i64 %_51)
  store i8* null, i8** %_1
  %_52 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_52, i64* %_2
  %_53 = load i64, i64* %_2
  call void @_Bio__println (i64 %_53)
  store i8* null, i8** %_3
  %_54 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_54, i64* %_4
  %_55 = load i64, i64* %_4
  call void @_Bio__println (i64 %_55)
  store i8* null, i8** %_5
  %_56 = call i64 @_B_sub (i64 9223372036854775806, i64 1)
  store i64 %_56, i64* %_6
  %_57 = load i64, i64* %_6
  call void @_Bio__println (i64 %_57)
  store i8* null, i8** %_7
  %_58 = call i64 @_B_sub (i64 1, i64 1)
  store i64 %_58, i64* %_8
  %_59 = load i64, i64* %_8
  call void @_Bio__println (i64 %_59)
  store i8* null, i8** %_9
  %_60 = call i64 @_B_sub (i64 0, i64 1)
  store i64 %_60, i64* %_10
  %_61 = load i64, i64* %_10
  call void @_Bio__println (i64 %_61)
  store i8* null, i8** %_11
  %_62 = call i64 @_B_sub (i64 -1, i64 -1)
  store i64 %_62, i64* %_14
  %_63 = load i64, i64* %_14
  call void @_Bio__println (i64 %_63)
  store i8* null, i8** %_15
  %_64 = call i64 @_B_sub (i64 9223372036854775806, i64 0)
  store i64 %_64, i64* %_16
  %_65 = load i64, i64* %_16
  call void @_Bio__println (i64 %_65)
  store i8* null, i8** %_17
  %_66 = call i64 @_B_sub (i64 1, i64 0)
  store i64 %_66, i64* %_18
  %_67 = load i64, i64* %_18
  call void @_Bio__println (i64 %_67)
  store i8* null, i8** %_19
  %_68 = call i64 @_B_sub (i64 0, i64 0)
  store i64 %_68, i64* %_20
  %_69 = load i64, i64* %_20
  call void @_Bio__println (i64 %_69)
  store i8* null, i8** %_21
  %_70 = call i64 @_B_sub (i64 -1, i64 0)
  store i64 %_70, i64* %_24
  %_71 = load i64, i64* %_24
  call void @_Bio__println (i64 %_71)
  store i8* null, i8** %_25
  %_72 = call i64 @_B_sub (i64 -9223372036854775806, i64 0)
  store i64 %_72, i64* %_28
  %_73 = load i64, i64* %_28
  call void @_Bio__println (i64 %_73)
  store i8* null, i8** %_29
  %_74 = call i64 @_B_sub (i64 9223372036854775806, i64 -1)
  store i64 %_74, i64* %_31
  %_75 = load i64, i64* %_31
  call void @_Bio__println (i64 %_75)
  store i8* null, i8** %_32
  %_76 = call i64 @_B_sub (i64 1, i64 -1)
  store i64 %_76, i64* %_34
  %_77 = load i64, i64* %_34
  call void @_Bio__println (i64 %_77)
  store i8* null, i8** %_35
  %_78 = call i64 @_B_sub (i64 0, i64 -1)
  store i64 %_78, i64* %_37
  %_79 = load i64, i64* %_37
  call void @_Bio__println (i64 %_79)
  store i8* null, i8** %_38
  %_80 = call i64 @_B_sub (i64 -1, i64 1)
  store i64 %_80, i64* %_42
  %_81 = load i64, i64* %_42
  call void @_Bio__println (i64 %_81)
  store i8* null, i8** %_43
  %_82 = call i64 @_B_sub (i64 9223372036854775806, i64 9223372036854775806)
  store i64 %_82, i64* %_44
  %_83 = load i64, i64* %_44
  call void @_Bio__println (i64 %_83)
  store i8* null, i8** %_45
  %_84 = call i64 @_B_sub (i64 1, i64 9223372036854775806)
  store i64 %_84, i64* %_46
  %_85 = load i64, i64* %_46
  call void @_Bio__println (i64 %_85)
  store i8* null, i8** %_47
  %_86 = call i64 @_B_sub (i64 0, i64 9223372036854775806)
  store i64 %_86, i64* %_48
  %_87 = load i64, i64* %_48
  call void @_Bio__println (i64 %_87)
  store i8* null, i8** %_49
  ret void
}
define internal i64 @_B_sub (i64 %_0, i64 %_1) {
  %a = alloca i64
  %b = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  store i64 %_0, i64* %a
  store i64 %_1, i64* %b
  %_4 = load i64, i64* %a
  %_5 = load i64, i64* %b
  %_6 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_4, i64 %_5)
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
