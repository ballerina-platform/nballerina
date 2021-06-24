declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i8*
  %x = alloca i8*
  %y = alloca i8*
  %_1 = alloca i1
  %_2 = alloca i8*
  %_3 = alloca i1
  %_4 = alloca i8*
  %_5 = call i8* @_B_mkInt (i64 2)
  store i8* %_5, i8** %_0
  %_6 = load i8*, i8** %_0
  store i8* %_6, i8** %x
  %_7 = load i8*, i8** %x
  store i8* %_7, i8** %y
  %_8 = load i8*, i8** %x
  %_9 = load i8*, i8** %y
  %_10 = icmp eq i8* %_8, %_9
  br i1 %_10, label %L1, label %L2
L1:
  store i1 1, i1* %_1
  br label %L3
L2:
  %_11 = ptrtoint i8* %_8 to i64
  %_12 = and i64 %_11, 9151314442816847872
  %_13 = icmp eq i64 %_12, 144115188075855872
  %_14 = ptrtoint i8* %_9 to i64
  %_15 = and i64 %_14, 9151314442816847872
  %_16 = icmp eq i64 %_15, 144115188075855872
  %_17 = and i1 %_13, %_16
  br i1 %_17, label %L4, label %L5
L3:
  %_25 = load i1, i1* %_1
  %_26 = zext i1 %_25 to i64
  %_27 = or i64 %_26, 72057594037927936
  %_28 = getelementptr i8, i8* null, i64 %_27
  call void @_Bio__println (i8* %_28)
  store i8* null, i8** %_2
  %_29 = load i8*, i8** %x
  %_30 = load i8*, i8** %y
  %_31 = icmp eq i8* %_29, %_30
  br i1 %_31, label %L6, label %L7
L4:
  %_18 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_8, i64 72057594037927935)
  %_19 = bitcast i8* %_18 to i64*
  %_20 = load i64, i64* %_19, align 8
  %_21 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_9, i64 72057594037927935)
  %_22 = bitcast i8* %_21 to i64*
  %_23 = load i64, i64* %_22, align 8
  %_24 = icmp eq i64 %_20, %_23
  store i1 %_24, i1* %_1
  br label %L3
L5:
  store i1 0, i1* %_1
  br label %L3
L6:
  store i1 0, i1* %_3
  br label %L8
L7:
  %_32 = ptrtoint i8* %_29 to i64
  %_33 = and i64 %_32, 9151314442816847872
  %_34 = icmp eq i64 %_33, 144115188075855872
  %_35 = ptrtoint i8* %_30 to i64
  %_36 = and i64 %_35, 9151314442816847872
  %_37 = icmp eq i64 %_36, 144115188075855872
  %_38 = and i1 %_34, %_37
  br i1 %_38, label %L9, label %L10
L8:
  %_46 = load i1, i1* %_3
  %_47 = zext i1 %_46 to i64
  %_48 = or i64 %_47, 72057594037927936
  %_49 = getelementptr i8, i8* null, i64 %_48
  call void @_Bio__println (i8* %_49)
  store i8* null, i8** %_4
  ret void
L9:
  %_39 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_29, i64 72057594037927935)
  %_40 = bitcast i8* %_39 to i64*
  %_41 = load i64, i64* %_40, align 8
  %_42 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_30, i64 72057594037927935)
  %_43 = bitcast i8* %_42 to i64*
  %_44 = load i64, i64* %_43, align 8
  %_45 = icmp ne i64 %_41, %_44
  store i1 %_45, i1* %_3
  br label %L8
L10:
  store i1 1, i1* %_3
  br label %L8
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
