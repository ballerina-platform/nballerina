@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
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
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L2, label %L1
L1:
  %_8 = call i8* @_B_mkInt (i64 2)
  store i8* %_8, i8** %_0
  %_9 = load i8*, i8** %_0
  store i8* %_9, i8** %x
  %_10 = load i8*, i8** %x
  store i8* %_10, i8** %y
  %_11 = load i8*, i8** %x
  %_12 = load i8*, i8** %y
  %_13 = icmp eq i8* %_11, %_12
  br i1 %_13, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_1
  br label %L5
L4:
  %_14 = ptrtoint i8* %_11 to i64
  %_15 = and i64 %_14, 9151314442816847872
  %_16 = icmp eq i64 %_15, 144115188075855872
  %_17 = ptrtoint i8* %_12 to i64
  %_18 = and i64 %_17, 9151314442816847872
  %_19 = icmp eq i64 %_18, 144115188075855872
  %_20 = and i1 %_16, %_19
  br i1 %_20, label %L6, label %L7
L5:
  %_28 = load i1, i1* %_1
  %_29 = zext i1 %_28 to i64
  %_30 = or i64 %_29, 72057594037927936
  %_31 = getelementptr i8, i8* null, i64 %_30
  call void @_Bio__println (i8* %_31)
  store i8* null, i8** %_2
  %_32 = load i8*, i8** %x
  %_33 = load i8*, i8** %y
  %_34 = icmp eq i8* %_32, %_33
  br i1 %_34, label %L8, label %L9
L6:
  %_21 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_11, i64 72057594037927935)
  %_22 = bitcast i8* %_21 to i64*
  %_23 = load i64, i64* %_22, align 8
  %_24 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_12, i64 72057594037927935)
  %_25 = bitcast i8* %_24 to i64*
  %_26 = load i64, i64* %_25, align 8
  %_27 = icmp eq i64 %_23, %_26
  store i1 %_27, i1* %_1
  br label %L5
L7:
  store i1 0, i1* %_1
  br label %L5
L8:
  store i1 0, i1* %_3
  br label %L10
L9:
  %_35 = ptrtoint i8* %_32 to i64
  %_36 = and i64 %_35, 9151314442816847872
  %_37 = icmp eq i64 %_36, 144115188075855872
  %_38 = ptrtoint i8* %_33 to i64
  %_39 = and i64 %_38, 9151314442816847872
  %_40 = icmp eq i64 %_39, 144115188075855872
  %_41 = and i1 %_37, %_40
  br i1 %_41, label %L11, label %L12
L10:
  %_49 = load i1, i1* %_3
  %_50 = zext i1 %_49 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8* null, i64 %_51
  call void @_Bio__println (i8* %_52)
  store i8* null, i8** %_4
  ret void
L11:
  %_42 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_32, i64 72057594037927935)
  %_43 = bitcast i8* %_42 to i64*
  %_44 = load i64, i64* %_43, align 8
  %_45 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_33, i64 72057594037927935)
  %_46 = bitcast i8* %_45 to i64*
  %_47 = load i64, i64* %_46, align 8
  %_48 = icmp ne i64 %_44, %_47
  store i1 %_48, i1* %_3
  br label %L10
L12:
  store i1 1, i1* %_3
  br label %L10
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
  call void @_bal_panic (i64 2564)
  unreachable
}
