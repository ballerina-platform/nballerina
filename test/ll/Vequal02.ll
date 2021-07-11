@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_alloc (i64)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %x = alloca i8 addrspace (1)*
  %y = alloca i8 addrspace (1)*
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L2, label %L1
L1:
  %_8 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_8, i8 addrspace (1)** %_0
  %_9 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_9, i8 addrspace (1)** %x
  %_10 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  store i8 addrspace (1)* %_10, i8 addrspace (1)** %y
  %_11 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_12 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  %_13 = icmp eq i8 addrspace (1)* %_11, %_12
  br i1 %_13, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_1
  br label %L5
L4:
  %_14 = addrspacecast i8 addrspace (1)* %_11 to i8*
  %_15 = ptrtoint i8* %_14 to i64
  %_16 = and i64 %_15, 9151314442816847872
  %_17 = icmp eq i64 %_16, 504403158265495552
  %_18 = addrspacecast i8 addrspace (1)* %_12 to i8*
  %_19 = ptrtoint i8* %_18 to i64
  %_20 = and i64 %_19, 9151314442816847872
  %_21 = icmp eq i64 %_20, 504403158265495552
  %_22 = and i1 %_17, %_21
  br i1 %_22, label %L6, label %L7
L5:
  %_30 = load i1, i1* %_1
  %_31 = zext i1 %_30 to i64
  %_32 = or i64 %_31, 72057594037927936
  %_33 = getelementptr i8, i8 addrspace (1)* null, i64 %_32
  call void @_Bio__println (i8 addrspace (1)* %_33)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_34 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_35 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  %_36 = icmp eq i8 addrspace (1)* %_34, %_35
  br i1 %_36, label %L8, label %L9
L6:
  %_23 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_11, i64 72057594037927935)
  %_24 = bitcast i8 addrspace (1)* %_23 to i64 addrspace (1)*
  %_25 = load i64, i64 addrspace (1)* %_24, align 8
  %_26 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_12, i64 72057594037927935)
  %_27 = bitcast i8 addrspace (1)* %_26 to i64 addrspace (1)*
  %_28 = load i64, i64 addrspace (1)* %_27, align 8
  %_29 = icmp eq i64 %_25, %_28
  store i1 %_29, i1* %_1
  br label %L5
L7:
  store i1 0, i1* %_1
  br label %L5
L8:
  store i1 0, i1* %_3
  br label %L10
L9:
  %_37 = addrspacecast i8 addrspace (1)* %_34 to i8*
  %_38 = ptrtoint i8* %_37 to i64
  %_39 = and i64 %_38, 9151314442816847872
  %_40 = icmp eq i64 %_39, 504403158265495552
  %_41 = addrspacecast i8 addrspace (1)* %_35 to i8*
  %_42 = ptrtoint i8* %_41 to i64
  %_43 = and i64 %_42, 9151314442816847872
  %_44 = icmp eq i64 %_43, 504403158265495552
  %_45 = and i1 %_40, %_44
  br i1 %_45, label %L11, label %L12
L10:
  %_53 = load i1, i1* %_3
  %_54 = zext i1 %_53 to i64
  %_55 = or i64 %_54, 72057594037927936
  %_56 = getelementptr i8, i8 addrspace (1)* null, i64 %_55
  call void @_Bio__println (i8 addrspace (1)* %_56)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  ret void
L11:
  %_46 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_34, i64 72057594037927935)
  %_47 = bitcast i8 addrspace (1)* %_46 to i64 addrspace (1)*
  %_48 = load i64, i64 addrspace (1)* %_47, align 8
  %_49 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_35, i64 72057594037927935)
  %_50 = bitcast i8 addrspace (1)* %_49 to i64 addrspace (1)*
  %_51 = load i64, i64 addrspace (1)* %_50, align 8
  %_52 = icmp ne i64 %_48, %_51
  store i1 %_52, i1* %_3
  br label %L10
L12:
  store i1 1, i1* %_3
  br label %L10
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
  call void @_bal_panic (i64 2564)
  unreachable
}
