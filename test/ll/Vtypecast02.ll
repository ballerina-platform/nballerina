@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare i8 addrspace (1)* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %x = alloca i64
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i1
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i1
  %b = alloca i1
  %_15 = alloca i8 addrspace (1)*
  %_16 = alloca i64
  %_17 = alloca i8
  %_18 = load i8*, i8** @_bal_stack_guard
  %_19 = icmp ult i8* %_17, %_18
  br i1 %_19, label %L3, label %L1
L1:
  %_20 = call i8 addrspace (1)* @_B_ifElse (i1 1, i64 17, i1 0)
  store i8 addrspace (1)* %_20, i8 addrspace (1)** %_0
  %_21 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  call void @_Bio__println (i8 addrspace (1)* %_21)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_22 = call i8 addrspace (1)* @_B_ifElse (i1 0, i64 32, i1 1)
  store i8 addrspace (1)* %_22, i8 addrspace (1)** %_2
  %_23 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_24 = call i8 addrspace (1)* @_B_ifElse (i1 1, i64 32, i1 1)
  store i8 addrspace (1)* %_24, i8 addrspace (1)** %_4
  %_25 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_26 = addrspacecast i8 addrspace (1)* %_25 to i8*
  %_27 = ptrtoint i8* %_26 to i64
  %_28 = and i64 %_27, 9151314442816847872
  %_29 = icmp eq i64 %_28, 504403158265495552
  br i1 %_29, label %L4, label %L5
L2:
  %_78 = load i64, i64* %_16
  call void @_bal_panic (i64 %_78)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_30 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_25, i64 72057594037927935)
  %_31 = bitcast i8 addrspace (1)* %_30 to i64 addrspace (1)*
  %_32 = load i64, i64 addrspace (1)* %_31, align 8
  store i64 %_32, i64* %_5
  %_33 = load i64, i64* %_5
  %_34 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_35 = bitcast i8 addrspace (1)* %_34 to i64 addrspace (1)*
  store i64 %_33, i64 addrspace (1)* %_35, align 8
  %_36 = getelementptr i8, i8 addrspace (1)* %_34, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_36)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_37 = call i8 addrspace (1)* @_B_ifElse (i1 1, i64 42, i1 0)
  store i8 addrspace (1)* %_37, i8 addrspace (1)** %_7
  %_38 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_39 = addrspacecast i8 addrspace (1)* %_38 to i8*
  %_40 = ptrtoint i8* %_39 to i64
  %_41 = and i64 %_40, 9151314442816847872
  %_42 = icmp eq i64 %_41, 504403158265495552
  br i1 %_42, label %L6, label %L7
L5:
  store i64 1539, i64* %_16
  br label %L2
L6:
  %_43 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_38, i64 72057594037927935)
  %_44 = bitcast i8 addrspace (1)* %_43 to i64 addrspace (1)*
  %_45 = load i64, i64 addrspace (1)* %_44, align 8
  store i64 %_45, i64* %_8
  %_46 = load i64, i64* %_8
  store i64 %_46, i64* %x
  %_47 = load i64, i64* %x
  %_48 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_49 = bitcast i8 addrspace (1)* %_48 to i64 addrspace (1)*
  store i64 %_47, i64 addrspace (1)* %_49, align 8
  %_50 = getelementptr i8, i8 addrspace (1)* %_48, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_51 = call i8 addrspace (1)* @_B_ifElse (i1 0, i64 21, i1 1)
  store i8 addrspace (1)* %_51, i8 addrspace (1)** %_10
  %_52 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_53 = addrspacecast i8 addrspace (1)* %_52 to i8*
  %_54 = ptrtoint i8* %_53 to i64
  %_55 = and i64 %_54, 9151314442816847872
  %_56 = icmp eq i64 %_55, 72057594037927936
  br i1 %_56, label %L8, label %L9
L7:
  store i64 1795, i64* %_16
  br label %L2
L8:
  %_57 = addrspacecast i8 addrspace (1)* %_52 to i8*
  %_58 = ptrtoint i8* %_57 to i64
  %_59 = trunc i64 %_58 to i1
  store i1 %_59, i1* %_11
  %_60 = load i1, i1* %_11
  %_61 = zext i1 %_60 to i64
  %_62 = or i64 %_61, 72057594037927936
  %_63 = getelementptr i8, i8 addrspace (1)* null, i64 %_62
  call void @_Bio__println (i8 addrspace (1)* %_63)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_64 = call i8 addrspace (1)* @_B_ifElse (i1 0, i64 21, i1 0)
  store i8 addrspace (1)* %_64, i8 addrspace (1)** %_13
  %_65 = load i8 addrspace (1)*, i8 addrspace (1)** %_13
  %_66 = addrspacecast i8 addrspace (1)* %_65 to i8*
  %_67 = ptrtoint i8* %_66 to i64
  %_68 = and i64 %_67, 9151314442816847872
  %_69 = icmp eq i64 %_68, 72057594037927936
  br i1 %_69, label %L10, label %L11
L9:
  store i64 2307, i64* %_16
  br label %L2
L10:
  %_70 = addrspacecast i8 addrspace (1)* %_65 to i8*
  %_71 = ptrtoint i8* %_70 to i64
  %_72 = trunc i64 %_71 to i1
  store i1 %_72, i1* %_14
  %_73 = load i1, i1* %_14
  store i1 %_73, i1* %b
  %_74 = load i1, i1* %b
  %_75 = zext i1 %_74 to i64
  %_76 = or i64 %_75, 72057594037927936
  %_77 = getelementptr i8, i8 addrspace (1)* null, i64 %_76
  call void @_Bio__println (i8 addrspace (1)* %_77)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_15
  ret void
L11:
  store i64 2563, i64* %_16
  br label %L2
}
define internal i8 addrspace (1)* @_B_ifElse (i1 %_0, i64 %_1, i1 %_2) {
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
  %_8 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_9 = bitcast i8 addrspace (1)* %_8 to i64 addrspace (1)*
  store i64 %_7, i64 addrspace (1)* %_9, align 8
  %_10 = getelementptr i8, i8 addrspace (1)* %_8, i64 504403158265495552
  ret i8 addrspace (1)* %_10
L3:
  %_11 = load i1, i1* %b
  %_12 = zext i1 %_11 to i64
  %_13 = or i64 %_12, 72057594037927936
  %_14 = getelementptr i8, i8 addrspace (1)* null, i64 %_13
  ret i8 addrspace (1)* %_14
L4:
  call void @_bal_panic (i64 3588)
  unreachable
}
