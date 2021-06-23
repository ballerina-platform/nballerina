declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i8*
  %_5 = alloca i64
  %_6 = alloca i8*
  %_7 = alloca i8*
  %_8 = alloca i64
  %x = alloca i64
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i1
  %_12 = alloca i8*
  %_13 = alloca i8*
  %_14 = alloca i1
  %b = alloca i1
  %_15 = alloca i8*
  %_16 = alloca i64
  %_17 = call i8* @_B_ifElse (i1 1, i64 17, i1 0)
  store i8* %_17, i8** %_0
  %_18 = load i8*, i8** %_0
  call void @_Bio__println (i8* %_18)
  store i8* null, i8** %_1
  %_19 = call i8* @_B_ifElse (i1 0, i64 32, i1 1)
  store i8* %_19, i8** %_2
  %_20 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_20)
  store i8* null, i8** %_3
  %_21 = call i8* @_B_ifElse (i1 1, i64 32, i1 1)
  store i8* %_21, i8** %_4
  %_22 = load i8*, i8** %_4
  %_23 = ptrtoint i8* %_22 to i64
  %_24 = and i64 %_23, 9151314442816847872
  %_25 = icmp eq i64 %_24, 144115188075855872
  br i1 %_25, label %L2, label %L3
L1:
  %_67 = load i64, i64* %_16
  call void @_bal_panic (i64 %_67)
  unreachable
L2:
  %_26 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_22, i64 72057594037927935)
  %_27 = bitcast i8* %_26 to i64*
  %_28 = load i64, i64* %_27, align 8
  store i64 %_28, i64* %_5
  %_29 = load i64, i64* %_5
  %_30 = call i8* @_bal_alloc (i64 8)
  %_31 = bitcast i8* %_30 to i64*
  store i64 %_29, i64* %_31, align 8
  %_32 = getelementptr i8, i8* %_30, i64 144115188075855872
  call void @_Bio__println (i8* %_32)
  store i8* null, i8** %_6
  %_33 = call i8* @_B_ifElse (i1 1, i64 42, i1 0)
  store i8* %_33, i8** %_7
  %_34 = load i8*, i8** %_7
  %_35 = ptrtoint i8* %_34 to i64
  %_36 = and i64 %_35, 9151314442816847872
  %_37 = icmp eq i64 %_36, 144115188075855872
  br i1 %_37, label %L4, label %L5
L3:
  store i64 3, i64* %_16
  br label %L1
L4:
  %_38 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_34, i64 72057594037927935)
  %_39 = bitcast i8* %_38 to i64*
  %_40 = load i64, i64* %_39, align 8
  store i64 %_40, i64* %_8
  %_41 = load i64, i64* %_8
  store i64 %_41, i64* %x
  %_42 = load i64, i64* %x
  %_43 = call i8* @_bal_alloc (i64 8)
  %_44 = bitcast i8* %_43 to i64*
  store i64 %_42, i64* %_44, align 8
  %_45 = getelementptr i8, i8* %_43, i64 144115188075855872
  call void @_Bio__println (i8* %_45)
  store i8* null, i8** %_9
  %_46 = call i8* @_B_ifElse (i1 0, i64 21, i1 1)
  store i8* %_46, i8** %_10
  %_47 = load i8*, i8** %_10
  %_48 = ptrtoint i8* %_47 to i64
  %_49 = and i64 %_48, 9151314442816847872
  %_50 = icmp eq i64 %_49, 72057594037927936
  br i1 %_50, label %L6, label %L7
L5:
  store i64 3, i64* %_16
  br label %L1
L6:
  %_51 = trunc i64 %_48 to i1
  store i1 %_51, i1* %_11
  %_52 = load i1, i1* %_11
  %_53 = zext i1 %_52 to i64
  %_54 = or i64 %_53, 72057594037927936
  %_55 = getelementptr i8, i8* null, i64 %_54
  call void @_Bio__println (i8* %_55)
  store i8* null, i8** %_12
  %_56 = call i8* @_B_ifElse (i1 0, i64 21, i1 0)
  store i8* %_56, i8** %_13
  %_57 = load i8*, i8** %_13
  %_58 = ptrtoint i8* %_57 to i64
  %_59 = and i64 %_58, 9151314442816847872
  %_60 = icmp eq i64 %_59, 72057594037927936
  br i1 %_60, label %L8, label %L9
L7:
  store i64 3, i64* %_16
  br label %L1
L8:
  %_61 = trunc i64 %_58 to i1
  store i1 %_61, i1* %_14
  %_62 = load i1, i1* %_14
  store i1 %_62, i1* %b
  %_63 = load i1, i1* %b
  %_64 = zext i1 %_63 to i64
  %_65 = or i64 %_64, 72057594037927936
  %_66 = getelementptr i8, i8* null, i64 %_65
  call void @_Bio__println (i8* %_66)
  store i8* null, i8** %_15
  ret void
L9:
  store i64 3, i64* %_16
  br label %L1
}
define internal i8* @_B_ifElse (i1 %_0, i64 %_1, i1 %_2) {
  %t = alloca i1
  %n = alloca i64
  %b = alloca i1
  store i1 %_0, i1* %t
  store i64 %_1, i64* %n
  store i1 %_2, i1* %b
  %_3 = load i1, i1* %t
  br i1 %_3, label %L1, label %L2
L1:
  %_4 = load i64, i64* %n
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  ret i8* %_7
L2:
  %_8 = load i1, i1* %b
  %_9 = zext i1 %_8 to i64
  %_10 = or i64 %_9, 72057594037927936
  %_11 = getelementptr i8, i8* null, i64 %_10
  ret i8* %_11
}
