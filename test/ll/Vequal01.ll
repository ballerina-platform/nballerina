declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = alloca i8*
  %_6 = alloca i1
  %_7 = alloca i8*
  %_8 = alloca i8*
  %_9 = alloca i1
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = call i8* @_B_mkInt (i64 2)
  store i8* %_12, i8** %_1
  %_13 = load i8*, i8** %_1
  %_14 = ptrtoint i8* %_13 to i64
  %_15 = and i64 %_14, 9151314442816847872
  %_16 = icmp eq i64 %_15, 144115188075855872
  br i1 %_16, label %L1, label %L2
L1:
  %_17 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_13, i64 72057594037927935)
  %_18 = bitcast i8* %_17 to i64*
  %_19 = load i64, i64* %_18, align 8
  %_20 = icmp eq i64 %_19, 2
  store i1 %_20, i1* %_0
  br label %L3
L2:
  store i1 0, i1* %_0
  br label %L3
L3:
  %_21 = load i1, i1* %_0
  %_22 = zext i1 %_21 to i64
  %_23 = or i64 %_22, 72057594037927936
  %_24 = getelementptr i8, i8* null, i64 %_23
  call void @_Bio__println (i8* %_24)
  store i8* null, i8** %_2
  %_25 = call i8* @_B_mkInt (i64 17)
  store i8* %_25, i8** %_4
  %_26 = load i8*, i8** %_4
  %_27 = ptrtoint i8* %_26 to i64
  %_28 = and i64 %_27, 9151314442816847872
  %_29 = icmp eq i64 %_28, 144115188075855872
  br i1 %_29, label %L4, label %L5
L4:
  %_30 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_26, i64 72057594037927935)
  %_31 = bitcast i8* %_30 to i64*
  %_32 = load i64, i64* %_31, align 8
  %_33 = icmp ne i64 %_32, 17
  store i1 %_33, i1* %_3
  br label %L6
L5:
  store i1 1, i1* %_3
  br label %L6
L6:
  %_34 = load i1, i1* %_3
  %_35 = zext i1 %_34 to i64
  %_36 = or i64 %_35, 72057594037927936
  %_37 = getelementptr i8, i8* null, i64 %_36
  call void @_Bio__println (i8* %_37)
  store i8* null, i8** %_5
  %_38 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_38, i8** %_7
  %_39 = load i8*, i8** %_7
  %_40 = zext i1 1 to i64
  %_41 = or i64 %_40, 72057594037927936
  %_42 = getelementptr i8, i8* null, i64 %_41
  %_43 = icmp eq i8* %_39, %_42
  store i1 %_43, i1* %_6
  %_44 = load i1, i1* %_6
  %_45 = zext i1 %_44 to i64
  %_46 = or i64 %_45, 72057594037927936
  %_47 = getelementptr i8, i8* null, i64 %_46
  call void @_Bio__println (i8* %_47)
  store i8* null, i8** %_8
  %_48 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_48, i8** %_10
  %_49 = load i8*, i8** %_10
  %_50 = zext i1 0 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8* null, i64 %_51
  %_53 = icmp ne i8* %_49, %_52
  store i1 %_53, i1* %_9
  %_54 = load i1, i1* %_9
  %_55 = zext i1 %_54 to i64
  %_56 = or i64 %_55, 72057594037927936
  %_57 = getelementptr i8, i8* null, i64 %_56
  call void @_Bio__println (i8* %_57)
  store i8* null, i8** %_11
  ret void
}
define internal i8* @_B_mkNil () {
  ret i8* null
}
define internal i8* @_B_mkInt (i64 %_0) {
  %n = alloca i64
  store i64 %_0, i64* %n
  %_1 = load i64, i64* %n
  %_2 = call i8* @_bal_alloc (i64 8)
  %_3 = bitcast i8* %_2 to i64*
  store i64 %_1, i64* %_3, align 8
  %_4 = getelementptr i8, i8* %_2, i64 144115188075855872
  ret i8* %_4
}
define internal i8* @_B_mkBoolean (i1 %_0) {
  %b = alloca i1
  store i1 %_0, i1* %b
  %_1 = load i1, i1* %b
  %_2 = zext i1 %_1 to i64
  %_3 = or i64 %_2, 72057594037927936
  %_4 = getelementptr i8, i8* null, i64 %_3
  ret i8* %_4
}
