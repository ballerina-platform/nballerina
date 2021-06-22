declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8* @_bal_alloc (i64)
declare void @_Bio__println (i8*)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8*
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i8*
  %_12 = alloca i64
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = alloca i64
  %_18 = alloca i64
  %_19 = alloca i8*
  %_20 = alloca i64
  %_21 = call i64 @_B_foo ()
  store i64 %_21, i64* %_0
  %_22 = call i64 @_B_bar ()
  store i64 %_22, i64* %_1
  %_23 = load i64, i64* %_0
  %_24 = load i64, i64* %_1
  %_25 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_23, i64 %_24)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L3, label %L2
L1:
  %_80 = load i64, i64* %_20
  call void @_bal_panic (i64 %_80)
  unreachable
L2:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_2
  %_28 = load i64, i64* %_2
  %_29 = call i8* @_bal_alloc (i64 8)
  %_30 = bitcast i8* %_29 to i64*
  store i64 %_28, i64* %_30, align 8
  %_31 = getelementptr i8, i8* %_29, i64 144115188075855872
  call void @_Bio__println (i8* %_31)
  store i8* null, i8** %_3
  %_32 = call i64 @_B_foo ()
  store i64 %_32, i64* %_4
  %_33 = call i64 @_B_bar ()
  store i64 %_33, i64* %_5
  %_34 = load i64, i64* %_4
  %_35 = load i64, i64* %_5
  %_36 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_34, i64 %_35)
  %_37 = extractvalue {i64, i1} %_36, 1
  br i1 %_37, label %L5, label %L4
L3:
  store i64 1, i64* %_20
  br label %L1
L4:
  %_38 = extractvalue {i64, i1} %_36, 0
  store i64 %_38, i64* %_6
  %_39 = load i64, i64* %_6
  %_40 = call i8* @_bal_alloc (i64 8)
  %_41 = bitcast i8* %_40 to i64*
  store i64 %_39, i64* %_41, align 8
  %_42 = getelementptr i8, i8* %_40, i64 144115188075855872
  call void @_Bio__println (i8* %_42)
  store i8* null, i8** %_7
  %_43 = call i64 @_B_foo ()
  store i64 %_43, i64* %_8
  %_44 = call i64 @_B_bar ()
  store i64 %_44, i64* %_9
  %_45 = load i64, i64* %_8
  %_46 = load i64, i64* %_9
  %_47 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_45, i64 %_46)
  %_48 = extractvalue {i64, i1} %_47, 1
  br i1 %_48, label %L7, label %L6
L5:
  store i64 1, i64* %_20
  br label %L1
L6:
  %_49 = extractvalue {i64, i1} %_47, 0
  store i64 %_49, i64* %_10
  %_50 = load i64, i64* %_10
  %_51 = call i8* @_bal_alloc (i64 8)
  %_52 = bitcast i8* %_51 to i64*
  store i64 %_50, i64* %_52, align 8
  %_53 = getelementptr i8, i8* %_51, i64 144115188075855872
  call void @_Bio__println (i8* %_53)
  store i8* null, i8** %_11
  %_54 = call i64 @_B_foo ()
  store i64 %_54, i64* %_12
  %_55 = call i64 @_B_bar ()
  store i64 %_55, i64* %_13
  %_56 = load i64, i64* %_12
  %_57 = load i64, i64* %_13
  %_58 = icmp eq i64 %_57, 0
  br i1 %_58, label %L8, label %L9
L7:
  store i64 1, i64* %_20
  br label %L1
L8:
  store i64 2, i64* %_20
  br label %L1
L9:
  %_59 = icmp eq i64 %_56, -9223372036854775808
  %_60 = icmp eq i64 %_57, -1
  %_61 = and i1 %_59, %_60
  br i1 %_61, label %L11, label %L10
L10:
  %_62 = sdiv i64 %_56, %_57
  store i64 %_62, i64* %_14
  %_63 = load i64, i64* %_14
  %_64 = call i8* @_bal_alloc (i64 8)
  %_65 = bitcast i8* %_64 to i64*
  store i64 %_63, i64* %_65, align 8
  %_66 = getelementptr i8, i8* %_64, i64 144115188075855872
  call void @_Bio__println (i8* %_66)
  store i8* null, i8** %_15
  %_67 = call i64 @_B_foo ()
  store i64 %_67, i64* %_16
  %_68 = call i64 @_B_bar ()
  store i64 %_68, i64* %_17
  %_69 = load i64, i64* %_16
  %_70 = load i64, i64* %_17
  %_71 = icmp eq i64 %_70, 0
  br i1 %_71, label %L12, label %L13
L11:
  store i64 1, i64* %_20
  br label %L1
L12:
  store i64 2, i64* %_20
  br label %L1
L13:
  %_72 = icmp eq i64 %_69, -9223372036854775808
  %_73 = icmp eq i64 %_70, -1
  %_74 = and i1 %_72, %_73
  br i1 %_74, label %L15, label %L14
L14:
  %_75 = srem i64 %_69, %_70
  store i64 %_75, i64* %_18
  br label %L16
L15:
  store i64 0, i64* %_18
  br label %L16
L16:
  %_76 = load i64, i64* %_18
  %_77 = call i8* @_bal_alloc (i64 8)
  %_78 = bitcast i8* %_77 to i64*
  store i64 %_76, i64* %_78, align 8
  %_79 = getelementptr i8, i8* %_77, i64 144115188075855872
  call void @_Bio__println (i8* %_79)
  store i8* null, i8** %_19
  ret void
}
define internal i64 @_B_foo () {
  ret i64 105
}
define internal i64 @_B_bar () {
  ret i64 2
}
