@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i1
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L2, label %L1
L1:
  %_15 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_15, i8 addrspace (1)** %_1
  %_16 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_17 = addrspacecast i8 addrspace (1)* %_16 to i8*
  %_18 = ptrtoint i8* %_17 to i64
  %_19 = and i64 %_18, 9151314442816847872
  %_20 = icmp eq i64 %_19, 504403158265495552
  br i1 %_20, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_21 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_16, i64 72057594037927935)
  %_22 = bitcast i8 addrspace (1)* %_21 to i64 addrspace (1)*
  %_23 = load i64, i64 addrspace (1)* %_22, align 8
  %_24 = icmp eq i64 %_23, 2
  store i1 %_24, i1* %_0
  br label %L5
L4:
  store i1 0, i1* %_0
  br label %L5
L5:
  %_25 = load i1, i1* %_0
  %_26 = zext i1 %_25 to i64
  %_27 = or i64 %_26, 72057594037927936
  %_28 = getelementptr i8, i8 addrspace (1)* null, i64 %_27
  call void @_Bio__println (i8 addrspace (1)* %_28)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_29 = call i8 addrspace (1)* @_B_mkInt (i64 17)
  store i8 addrspace (1)* %_29, i8 addrspace (1)** %_4
  %_30 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_31 = addrspacecast i8 addrspace (1)* %_30 to i8*
  %_32 = ptrtoint i8* %_31 to i64
  %_33 = and i64 %_32, 9151314442816847872
  %_34 = icmp eq i64 %_33, 504403158265495552
  br i1 %_34, label %L6, label %L7
L6:
  %_35 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_30, i64 72057594037927935)
  %_36 = bitcast i8 addrspace (1)* %_35 to i64 addrspace (1)*
  %_37 = load i64, i64 addrspace (1)* %_36, align 8
  %_38 = icmp ne i64 %_37, 17
  store i1 %_38, i1* %_3
  br label %L8
L7:
  store i1 1, i1* %_3
  br label %L8
L8:
  %_39 = load i1, i1* %_3
  %_40 = zext i1 %_39 to i64
  %_41 = or i64 %_40, 72057594037927936
  %_42 = getelementptr i8, i8 addrspace (1)* null, i64 %_41
  call void @_Bio__println (i8 addrspace (1)* %_42)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_43 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_43, i8 addrspace (1)** %_7
  %_44 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_45 = zext i1 1 to i64
  %_46 = or i64 %_45, 72057594037927936
  %_47 = getelementptr i8, i8 addrspace (1)* null, i64 %_46
  %_48 = icmp eq i8 addrspace (1)* %_44, %_47
  store i1 %_48, i1* %_6
  %_49 = load i1, i1* %_6
  %_50 = zext i1 %_49 to i64
  %_51 = or i64 %_50, 72057594037927936
  %_52 = getelementptr i8, i8 addrspace (1)* null, i64 %_51
  call void @_Bio__println (i8 addrspace (1)* %_52)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_53 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_53, i8 addrspace (1)** %_10
  %_54 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_55 = zext i1 0 to i64
  %_56 = or i64 %_55, 72057594037927936
  %_57 = getelementptr i8, i8 addrspace (1)* null, i64 %_56
  %_58 = icmp ne i8 addrspace (1)* %_54, %_57
  store i1 %_58, i1* %_9
  %_59 = load i1, i1* %_9
  %_60 = zext i1 %_59 to i64
  %_61 = or i64 %_60, 72057594037927936
  %_62 = getelementptr i8, i8 addrspace (1)* null, i64 %_61
  call void @_Bio__println (i8 addrspace (1)* %_62)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  ret void
}
define internal i8 addrspace (1)* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8 addrspace (1)* null
L2:
  call void @_bal_panic (i64 2564)
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
  call void @_bal_panic (i64 3588)
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
  call void @_bal_panic (i64 4612)
  unreachable
}
