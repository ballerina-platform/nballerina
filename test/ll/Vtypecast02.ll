@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8*)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare i8* @_bal_alloc (i64)
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
  %_17 = alloca i8
  %_18 = load i8*, i8** @_bal_stack_guard
  %_19 = icmp ult i8* %_17, %_18
  br i1 %_19, label %L3, label %L1
L1:
  %_20 = call i8* @_B_ifElse (i1 1, i64 17, i1 0)
  store i8* %_20, i8** %_0
  %_21 = load i8*, i8** %_0
  call void @_Bio__println (i8* %_21)
  store i8* null, i8** %_1
  %_22 = call i8* @_B_ifElse (i1 0, i64 32, i1 1)
  store i8* %_22, i8** %_2
  %_23 = load i8*, i8** %_2
  call void @_Bio__println (i8* %_23)
  store i8* null, i8** %_3
  %_24 = call i8* @_B_ifElse (i1 1, i64 32, i1 1)
  store i8* %_24, i8** %_4
  %_25 = load i8*, i8** %_4
  %_26 = ptrtoint i8* %_25 to i64
  %_27 = and i64 %_26, 9151314442816847872
  %_28 = icmp eq i64 %_27, 144115188075855872
  br i1 %_28, label %L4, label %L5
L2:
  %_72 = load i64, i64* %_16
  call void @_bal_panic (i64 %_72)
  unreachable
L3:
  call void @_bal_panic (i64 4)
  unreachable
L4:
  %_29 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_25, i64 72057594037927935)
  %_30 = bitcast i8* %_29 to i64*
  %_31 = load i64, i64* %_30, align 8
  store i64 %_31, i64* %_5
  %_32 = load i64, i64* %_5
  %_33 = call i8* @_bal_alloc (i64 8)
  %_34 = bitcast i8* %_33 to i64*
  store i64 %_32, i64* %_34, align 8
  %_35 = getelementptr i8, i8* %_33, i64 144115188075855872
  call void @_Bio__println (i8* %_35)
  store i8* null, i8** %_6
  %_36 = call i8* @_B_ifElse (i1 1, i64 42, i1 0)
  store i8* %_36, i8** %_7
  %_37 = load i8*, i8** %_7
  %_38 = ptrtoint i8* %_37 to i64
  %_39 = and i64 %_38, 9151314442816847872
  %_40 = icmp eq i64 %_39, 144115188075855872
  br i1 %_40, label %L6, label %L7
L5:
  store i64 3, i64* %_16
  br label %L2
L6:
  %_41 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_37, i64 72057594037927935)
  %_42 = bitcast i8* %_41 to i64*
  %_43 = load i64, i64* %_42, align 8
  store i64 %_43, i64* %_8
  %_44 = load i64, i64* %_8
  store i64 %_44, i64* %x
  %_45 = load i64, i64* %x
  %_46 = call i8* @_bal_alloc (i64 8)
  %_47 = bitcast i8* %_46 to i64*
  store i64 %_45, i64* %_47, align 8
  %_48 = getelementptr i8, i8* %_46, i64 144115188075855872
  call void @_Bio__println (i8* %_48)
  store i8* null, i8** %_9
  %_49 = call i8* @_B_ifElse (i1 0, i64 21, i1 1)
  store i8* %_49, i8** %_10
  %_50 = load i8*, i8** %_10
  %_51 = ptrtoint i8* %_50 to i64
  %_52 = and i64 %_51, 9151314442816847872
  %_53 = icmp eq i64 %_52, 72057594037927936
  br i1 %_53, label %L8, label %L9
L7:
  store i64 3, i64* %_16
  br label %L2
L8:
  %_54 = ptrtoint i8* %_50 to i64
  %_55 = trunc i64 %_54 to i1
  store i1 %_55, i1* %_11
  %_56 = load i1, i1* %_11
  %_57 = zext i1 %_56 to i64
  %_58 = or i64 %_57, 72057594037927936
  %_59 = getelementptr i8, i8* null, i64 %_58
  call void @_Bio__println (i8* %_59)
  store i8* null, i8** %_12
  %_60 = call i8* @_B_ifElse (i1 0, i64 21, i1 0)
  store i8* %_60, i8** %_13
  %_61 = load i8*, i8** %_13
  %_62 = ptrtoint i8* %_61 to i64
  %_63 = and i64 %_62, 9151314442816847872
  %_64 = icmp eq i64 %_63, 72057594037927936
  br i1 %_64, label %L10, label %L11
L9:
  store i64 3, i64* %_16
  br label %L2
L10:
  %_65 = ptrtoint i8* %_61 to i64
  %_66 = trunc i64 %_65 to i1
  store i1 %_66, i1* %_14
  %_67 = load i1, i1* %_14
  store i1 %_67, i1* %b
  %_68 = load i1, i1* %b
  %_69 = zext i1 %_68 to i64
  %_70 = or i64 %_69, 72057594037927936
  %_71 = getelementptr i8, i8* null, i64 %_70
  call void @_Bio__println (i8* %_71)
  store i8* null, i8** %_15
  ret void
L11:
  store i64 3, i64* %_16
  br label %L2
}
define internal i8* @_B_ifElse (i1 %_0, i64 %_1, i1 %_2) {
  %t = alloca i1
  %n = alloca i64
  %b = alloca i1
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L4, label %L1
L1:
  store i1 %_0, i1* %t
  store i64 %_1, i64* %n
  store i1 %_2, i1* %b
  %_6 = load i1, i1* %t
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = load i64, i64* %n
  %_8 = call i8* @_bal_alloc (i64 8)
  %_9 = bitcast i8* %_8 to i64*
  store i64 %_7, i64* %_9, align 8
  %_10 = getelementptr i8, i8* %_8, i64 144115188075855872
  ret i8* %_10
L3:
  %_11 = load i1, i1* %b
  %_12 = zext i1 %_11 to i64
  %_13 = or i64 %_12, 72057594037927936
  %_14 = getelementptr i8, i8* null, i64 %_13
  ret i8* %_14
L4:
  call void @_bal_panic (i64 4)
  unreachable
}
