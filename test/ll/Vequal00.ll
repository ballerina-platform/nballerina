@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i1
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i1
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L2, label %L1
L1:
  %_15 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_15, i8 addrspace (1)** %_1
  %_16 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_16, i8 addrspace (1)** %_2
  %_17 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_18 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  %_19 = icmp eq i8 addrspace (1)* %_17, %_18
  br i1 %_19, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_0
  br label %L5
L4:
  %_20 = addrspacecast i8 addrspace (1)* %_17 to i8*
  %_21 = ptrtoint i8* %_20 to i64
  %_22 = and i64 %_21, 9151314442816847872
  %_23 = icmp eq i64 %_22, 504403158265495552
  %_24 = addrspacecast i8 addrspace (1)* %_18 to i8*
  %_25 = ptrtoint i8* %_24 to i64
  %_26 = and i64 %_25, 9151314442816847872
  %_27 = icmp eq i64 %_26, 504403158265495552
  %_28 = and i1 %_23, %_27
  br i1 %_28, label %L6, label %L7
L5:
  %_36 = load i1, i1* %_0
  %_37 = zext i1 %_36 to i64
  %_38 = or i64 %_37, 72057594037927936
  %_39 = getelementptr i8, i8 addrspace (1)* null, i64 %_38
  call void @_Bio__println (i8 addrspace (1)* %_39)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_40 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_40, i8 addrspace (1)** %_5
  %_41 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_41, i8 addrspace (1)** %_6
  %_42 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_43 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  %_44 = icmp eq i8 addrspace (1)* %_42, %_43
  br i1 %_44, label %L8, label %L9
L6:
  %_29 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_17, i64 72057594037927935)
  %_30 = bitcast i8 addrspace (1)* %_29 to i64 addrspace (1)*
  %_31 = load i64, i64 addrspace (1)* %_30, align 8
  %_32 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_18, i64 72057594037927935)
  %_33 = bitcast i8 addrspace (1)* %_32 to i64 addrspace (1)*
  %_34 = load i64, i64 addrspace (1)* %_33, align 8
  %_35 = icmp eq i64 %_31, %_34
  store i1 %_35, i1* %_0
  br label %L5
L7:
  store i1 0, i1* %_0
  br label %L5
L8:
  store i1 0, i1* %_4
  br label %L10
L9:
  %_45 = addrspacecast i8 addrspace (1)* %_42 to i8*
  %_46 = ptrtoint i8* %_45 to i64
  %_47 = and i64 %_46, 9151314442816847872
  %_48 = icmp eq i64 %_47, 504403158265495552
  %_49 = addrspacecast i8 addrspace (1)* %_43 to i8*
  %_50 = ptrtoint i8* %_49 to i64
  %_51 = and i64 %_50, 9151314442816847872
  %_52 = icmp eq i64 %_51, 504403158265495552
  %_53 = and i1 %_48, %_52
  br i1 %_53, label %L11, label %L12
L10:
  %_61 = load i1, i1* %_4
  %_62 = zext i1 %_61 to i64
  %_63 = or i64 %_62, 72057594037927936
  %_64 = getelementptr i8, i8 addrspace (1)* null, i64 %_63
  call void @_Bio__println (i8 addrspace (1)* %_64)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  %_65 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_65, i8 addrspace (1)** %_9
  %_66 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_66, i8 addrspace (1)** %_10
  %_67 = load i8 addrspace (1)*, i8 addrspace (1)** %_9
  %_68 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_69 = icmp eq i8 addrspace (1)* %_67, %_68
  br i1 %_69, label %L13, label %L14
L11:
  %_54 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_42, i64 72057594037927935)
  %_55 = bitcast i8 addrspace (1)* %_54 to i64 addrspace (1)*
  %_56 = load i64, i64 addrspace (1)* %_55, align 8
  %_57 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_43, i64 72057594037927935)
  %_58 = bitcast i8 addrspace (1)* %_57 to i64 addrspace (1)*
  %_59 = load i64, i64 addrspace (1)* %_58, align 8
  %_60 = icmp ne i64 %_56, %_59
  store i1 %_60, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
L13:
  store i1 1, i1* %_8
  br label %L15
L14:
  %_70 = addrspacecast i8 addrspace (1)* %_67 to i8*
  %_71 = ptrtoint i8* %_70 to i64
  %_72 = and i64 %_71, 9151314442816847872
  %_73 = icmp eq i64 %_72, 504403158265495552
  %_74 = addrspacecast i8 addrspace (1)* %_68 to i8*
  %_75 = ptrtoint i8* %_74 to i64
  %_76 = and i64 %_75, 9151314442816847872
  %_77 = icmp eq i64 %_76, 504403158265495552
  %_78 = and i1 %_73, %_77
  br i1 %_78, label %L16, label %L17
L15:
  %_86 = load i1, i1* %_8
  %_87 = zext i1 %_86 to i64
  %_88 = or i64 %_87, 72057594037927936
  %_89 = getelementptr i8, i8 addrspace (1)* null, i64 %_88
  call void @_Bio__println (i8 addrspace (1)* %_89)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  ret void
L16:
  %_79 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_67, i64 72057594037927935)
  %_80 = bitcast i8 addrspace (1)* %_79 to i64 addrspace (1)*
  %_81 = load i64, i64 addrspace (1)* %_80, align 8
  %_82 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_68, i64 72057594037927935)
  %_83 = bitcast i8 addrspace (1)* %_82 to i64 addrspace (1)*
  %_84 = load i64, i64 addrspace (1)* %_83, align 8
  %_85 = icmp eq i64 %_81, %_84
  store i1 %_85, i1* %_8
  br label %L15
L17:
  store i1 0, i1* %_8
  br label %L15
}
define internal i8 addrspace (1)* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8 addrspace (1)* null
L2:
  call void @_bal_panic (i64 2308)
  unreachable
}
define internal i8 addrspace (1)* @_B_mkInt (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_6 = bitcast i8 addrspace (1)* %_5 to i64 addrspace (1)*
  store i64 %_4, i64 addrspace (1)* %_6, align 8
  %_7 = getelementptr i8, i8 addrspace (1)* %_5, i64 504403158265495552
  ret i8 addrspace (1)* %_7
L2:
  call void @_bal_panic (i64 3332)
  unreachable
}
define internal i8 addrspace (1)* @_B_mkBoolean (i1 %_0) {
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
  %_7 = getelementptr i8, i8 addrspace (1)* null, i64 %_6
  ret i8 addrspace (1)* %_7
L2:
  call void @_bal_panic (i64 4356)
  unreachable
}
