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
  %_12 = call i8* @_B_mkNil ()
  store i8* %_12, i8** %_1
  %_13 = call i8* @_B_mkNil ()
  store i8* %_13, i8** %_2
  %_14 = load i8*, i8** %_1
  %_15 = load i8*, i8** %_2
  %_16 = icmp eq i8* %_14, %_15
  br i1 %_16, label %L1, label %L2
L1:
  store i1 1, i1* %_0
  br label %L3
L2:
  %_17 = ptrtoint i8* %_14 to i64
  %_18 = and i64 %_17, 9151314442816847872
  %_19 = icmp eq i64 %_18, 144115188075855872
  %_20 = ptrtoint i8* %_15 to i64
  %_21 = and i64 %_20, 9151314442816847872
  %_22 = icmp eq i64 %_21, 144115188075855872
  %_23 = and i1 %_19, %_22
  br i1 %_23, label %L4, label %L5
L3:
  %_31 = load i1, i1* %_0
  %_32 = zext i1 %_31 to i64
  %_33 = or i64 %_32, 72057594037927936
  %_34 = getelementptr i8, i8* null, i64 %_33
  call void @_Bio__println (i8* %_34)
  store i8* null, i8** %_3
  %_35 = call i8* @_B_mkInt (i64 1)
  store i8* %_35, i8** %_5
  %_36 = call i8* @_B_mkInt (i64 1)
  store i8* %_36, i8** %_6
  %_37 = load i8*, i8** %_5
  %_38 = load i8*, i8** %_6
  %_39 = icmp eq i8* %_37, %_38
  br i1 %_39, label %L6, label %L7
L4:
  %_24 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_14, i64 72057594037927935)
  %_25 = bitcast i8* %_24 to i64*
  %_26 = load i64, i64* %_25, align 8
  %_27 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_15, i64 72057594037927935)
  %_28 = bitcast i8* %_27 to i64*
  %_29 = load i64, i64* %_28, align 8
  %_30 = icmp eq i64 %_26, %_29
  store i1 %_30, i1* %_0
  br label %L3
L5:
  store i1 0, i1* %_0
  br label %L3
L6:
  store i1 0, i1* %_4
  br label %L8
L7:
  %_40 = ptrtoint i8* %_37 to i64
  %_41 = and i64 %_40, 9151314442816847872
  %_42 = icmp eq i64 %_41, 144115188075855872
  %_43 = ptrtoint i8* %_38 to i64
  %_44 = and i64 %_43, 9151314442816847872
  %_45 = icmp eq i64 %_44, 144115188075855872
  %_46 = and i1 %_42, %_45
  br i1 %_46, label %L9, label %L10
L8:
  %_54 = load i1, i1* %_4
  %_55 = zext i1 %_54 to i64
  %_56 = or i64 %_55, 72057594037927936
  %_57 = getelementptr i8, i8* null, i64 %_56
  call void @_Bio__println (i8* %_57)
  store i8* null, i8** %_7
  %_58 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_58, i8** %_9
  %_59 = call i8* @_B_mkBoolean (i1 1)
  store i8* %_59, i8** %_10
  %_60 = load i8*, i8** %_9
  %_61 = load i8*, i8** %_10
  %_62 = icmp eq i8* %_60, %_61
  br i1 %_62, label %L11, label %L12
L9:
  %_47 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_37, i64 72057594037927935)
  %_48 = bitcast i8* %_47 to i64*
  %_49 = load i64, i64* %_48, align 8
  %_50 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_38, i64 72057594037927935)
  %_51 = bitcast i8* %_50 to i64*
  %_52 = load i64, i64* %_51, align 8
  %_53 = icmp ne i64 %_49, %_52
  store i1 %_53, i1* %_4
  br label %L8
L10:
  store i1 1, i1* %_4
  br label %L8
L11:
  store i1 1, i1* %_8
  br label %L13
L12:
  %_63 = ptrtoint i8* %_60 to i64
  %_64 = and i64 %_63, 9151314442816847872
  %_65 = icmp eq i64 %_64, 144115188075855872
  %_66 = ptrtoint i8* %_61 to i64
  %_67 = and i64 %_66, 9151314442816847872
  %_68 = icmp eq i64 %_67, 144115188075855872
  %_69 = and i1 %_65, %_68
  br i1 %_69, label %L14, label %L15
L13:
  %_77 = load i1, i1* %_8
  %_78 = zext i1 %_77 to i64
  %_79 = or i64 %_78, 72057594037927936
  %_80 = getelementptr i8, i8* null, i64 %_79
  call void @_Bio__println (i8* %_80)
  store i8* null, i8** %_11
  ret void
L14:
  %_70 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_60, i64 72057594037927935)
  %_71 = bitcast i8* %_70 to i64*
  %_72 = load i64, i64* %_71, align 8
  %_73 = call i8* @llvm.ptrmask.p0i8.i64 (i8* %_61, i64 72057594037927935)
  %_74 = bitcast i8* %_73 to i64*
  %_75 = load i64, i64* %_74, align 8
  %_76 = icmp eq i64 %_72, %_75
  store i1 %_76, i1* %_8
  br label %L13
L15:
  store i1 0, i1* %_8
  br label %L13
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
