@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8* @llvm.ptrmask.p0i8.i64 (i8*, i64) readnone speculatable
declare void @_Bio__println (i8*)
declare i8* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8*
  %_2 = alloca i8*
  %_3 = alloca i8*
  %_4 = alloca i1
  %_5 = alloca i8*
  %_6 = alloca i8*
  %_7 = alloca i8*
  %_8 = alloca i1
  %_9 = alloca i8*
  %_10 = alloca i8*
  %_11 = alloca i8*
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L2, label %L1
L1:
  %_15 = call i8* @_B_mkNil ()
  store i8* %_15, i8** %_1
  %_16 = call i8* @_B_mkNil ()
  store i8* %_16, i8** %_2
  %_17 = load i8*, i8** %_1
  %_18 = load i8*, i8** %_2
  %_19 = icmp eq i8* %_17, %_18
  br i1 %_19, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_0
  br label %L5
L4:
  %_20 = ptrtoint i8* %_17 to i64
  %_21 = and i64 %_20, 9151314442816847872
  %_22 = icmp eq i64 %_21, 504403158265495552
  %_23 = ptrtoint i8* %_18 to i64
  %_24 = and i64 %_23, 9151314442816847872
  %_25 = icmp eq i64 %_24, 504403158265495552
  %_26 = and i1 %_22, %_25
  br i1 %_26, label %L6, label %L7
L5:
  %_34 = load i1, i1* %_0
  %_35 = zext i1 %_34 to i64
  %_36 = or i64 %_35, 72057594037927936
  %_37 = getelementptr i8, i8* null, i64 %_36
  call void @_Bio__println (i8* %_37)
  store i8* null, i8** %_3
  %_38 = call i8* @_B_mkInt (i64 1)
  store i8* %_38, i8** %_5
  %_39 = call i8* @_B_mkInt (i64 1)
  store i8* %_39, i8** %_6
  %_40 = load i8*, i8** %_5
  %_41 = load i8*, i8** %_6
  %_42 = icmp eq i8* %_40, %_41
  br i1 %_42, label %L8, label %L9
L6:
  %_27 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_17, i64 72057594037927935)
  %_28 = bitcast i8* %_27 to i64*
  %_29 = load i64, i64* %_28, align 8
  %_30 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_18, i64 72057594037927935)
  %_31 = bitcast i8* %_30 to i64*
  %_32 = load i64, i64* %_31, align 8
  %_33 = icmp eq i64 %_29, %_32
  store i1 %_33, i1* %_0
  br label %L5
L7:
  store i1 0, i1* %_0
  br label %L5
L8:
  store i1 0, i1* %_4
  br label %L10
L9:
  %_43 = ptrtoint i8* %_40 to i64
  %_44 = and i64 %_43, 9151314442816847872
  %_45 = icmp eq i64 %_44, 504403158265495552
  %_46 = ptrtoint i8* %_41 to i64
  %_47 = and i64 %_46, 9151314442816847872
  %_48 = icmp eq i64 %_47, 504403158265495552
  %_49 = and i1 %_45, %_48
  br i1 %_49, label %L11, label %L12
L10:
  %_57 = load i1, i1* %_4
  %_58 = zext i1 %_57 to i64
  %_59 = or i64 %_58, 72057594037927936
  %_60 = getelementptr i8, i8* null, i64 %_59
  call void @_Bio__println (i8* %_60)
  store i8* null, i8** %_7
  %_61 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_61, i8** %_9
  %_62 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_62, i8** %_10
  %_63 = load i8*, i8** %_9
  %_64 = load i8*, i8** %_10
  %_65 = icmp eq i8* %_63, %_64
  br i1 %_65, label %L13, label %L14
L11:
  %_50 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_40, i64 72057594037927935)
  %_51 = bitcast i8* %_50 to i64*
  %_52 = load i64, i64* %_51, align 8
  %_53 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_41, i64 72057594037927935)
  %_54 = bitcast i8* %_53 to i64*
  %_55 = load i64, i64* %_54, align 8
  %_56 = icmp ne i64 %_52, %_55
  store i1 %_56, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
L13:
  store i1 1, i1* %_8
  br label %L15
L14:
  %_66 = ptrtoint i8* %_63 to i64
  %_67 = and i64 %_66, 9151314442816847872
  %_68 = icmp eq i64 %_67, 504403158265495552
  %_69 = ptrtoint i8* %_64 to i64
  %_70 = and i64 %_69, 9151314442816847872
  %_71 = icmp eq i64 %_70, 504403158265495552
  %_72 = and i1 %_68, %_71
  br i1 %_72, label %L16, label %L17
L15:
  %_80 = load i1, i1* %_8
  %_81 = zext i1 %_80 to i64
  %_82 = or i64 %_81, 72057594037927936
  %_83 = getelementptr i8, i8* null, i64 %_82
  call void @_Bio__println (i8* %_83)
  store i8* null, i8** %_11
  ret void
L16:
  %_73 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_63, i64 72057594037927935)
  %_74 = bitcast i8* %_73 to i64*
  %_75 = load i64, i64* %_74, align 8
  %_76 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_64, i64 72057594037927935)
  %_77 = bitcast i8* %_76 to i64*
  %_78 = load i64, i64* %_77, align 8
  %_79 = icmp eq i64 %_75, %_78
  store i1 %_79, i1* %_8
  br label %L15
L17:
  store i1 0, i1* %_8
  br label %L15
}
define internal i8* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8* null
L2:
  call void @_bal_panic (i64 2308)
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
  %_7 = getelementptr i8, i8* %_5, i64 504403158265495552
  ret i8* %_7
L2:
  call void @_bal_panic (i64 3332)
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
  call void @_bal_panic (i64 4356)
  unreachable
}
