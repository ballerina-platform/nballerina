@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
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
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L2, label %L1
L1:
  %_15 = call i8* @_B_mkInt (i64 2)
  store i8* %_15, i8** %_1
  %_16 = load i8*, i8** %_1
  %_17 = ptrtoint i8* %_16 to i64
  %_18 = and i64 %_17, 9151314442816847872
  %_19 = icmp eq i64 %_18, 144115188075855872
  br i1 %_19, label %L3, label %L4
L2:
  call void @_bal_panic (i64 4)
  unreachable
L3:
  %_20 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_16, i64 72057594037927935)
  %_21 = bitcast i8* %_20 to i64*
  %_22 = load i64, i64* %_21, align 8
  %_23 = icmp eq i64 %_22, 2
  store i1 %_23, i1* %_0
  br label %L5
L4:
  store i1 0, i1* %_0
  br label %L5
L5:
  %_24 = load i1, i1* %_0
  %_25 = zext i1 %_24 to i64
  %_26 = or i64 %_25, 72057594037927936
  %_27 = getelementptr i8, i8* null, i64 %_26
  call void @_Bio__println (i8* %_27)
  store i8* null, i8** %_2
  %_28 = call i8* @_B_mkInt (i64 17)
  store i8* %_28, i8** %_4
  %_29 = load i8*, i8** %_4
  %_30 = ptrtoint i8* %_29 to i64
  %_31 = and i64 %_30, 9151314442816847872
  %_32 = icmp eq i64 %_31, 144115188075855872
  br i1 %_32, label %L6, label %L7
L6:
  %_33 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_29, i64 72057594037927935)
  %_34 = bitcast i8* %_33 to i64*
  %_35 = load i64, i64* %_34, align 8
  %_36 = icmp ne i64 %_35, 17
  store i1 %_36, i1* %_3
  br label %L8
L7:
  store i1 1, i1* %_3
  br label %L8
L8:
  %_37 = load i1, i1* %_3
  %_38 = zext i1 %_37 to i64
  %_39 = or i64 %_38, 72057594037927936
  %_40 = getelementptr i8, i8* null, i64 %_39
  call void @_Bio__println (i8* %_40)
  store i8* null, i8** %_5
  %_41 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_41, i8** %_7
  %_42 = load i8*, i8** %_7
  %_43 = zext i1 1 to i64
  %_44 = or i64 %_43, 72057594037927936
  %_45 = getelementptr i8, i8* null, i64 %_44
  %_46 = icmp eq i8* %_42, %_45
  store i1 %_46, i1* %_6
  %_47 = load i1, i1* %_6
  %_48 = zext i1 %_47 to i64
  %_49 = or i64 %_48, 72057594037927936
  %_50 = getelementptr i8, i8* null, i64 %_49
  call void @_Bio__println (i8* %_50)
  store i8* null, i8** %_8
  %_51 = call i8* @_B_mkBoolean (i1 0)
  store i8* %_51, i8** %_10
  %_52 = load i8*, i8** %_10
  %_53 = zext i1 0 to i64
  %_54 = or i64 %_53, 72057594037927936
  %_55 = getelementptr i8, i8* null, i64 %_54
  %_56 = icmp ne i8* %_52, %_55
  store i1 %_56, i1* %_9
  %_57 = load i1, i1* %_9
  %_58 = zext i1 %_57 to i64
  %_59 = or i64 %_58, 72057594037927936
  %_60 = getelementptr i8, i8* null, i64 %_59
  call void @_Bio__println (i8* %_60)
  store i8* null, i8** %_11
  ret void
}
define internal i8* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8* null
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
define internal i8* @_B_mkInt (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8* @_bal_alloc (i64 8)
  %_6 = bitcast i8* %_5 to i64*
  store i64 %_4, i64* %_6, align 8
  %_7 = getelementptr i8, i8* %_5, i64 144115188075855872
  ret i8* %_7
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
define internal i8* @_B_mkBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i1 %_0, i1* %b
  %_4 = load i1, i1* %b
  %_5 = zext i1 %_4 to i64
  %_6 = or i64 %_5, 72057594037927936
  %_7 = getelementptr i8, i8* null, i64 %_6
  ret i8* %_7
L2:
  call void @_bal_panic (i64 4)
  unreachable
}
