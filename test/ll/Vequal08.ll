@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %x = alloca i8 addrspace (1)*
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i1
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8
  %_8 = load i8*, i8** @_bal_stack_guard
  %_9 = icmp ult i8* %_7, %_8
  br i1 %_9, label %L2, label %L1
L1:
  %_10 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_11 = bitcast i8 addrspace (1)* %_10 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_12 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_13 = bitcast i8 addrspace (1)* %_12 to i64 addrspace (1)*
  store i64 17, i64 addrspace (1)* %_13, align 8
  %_14 = getelementptr i8, i8 addrspace (1)* %_12, i64 504403158265495552
  %_15 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_11, i64 0, i64 0
  store i8 addrspace (1)* %_14, i8 addrspace (1)* addrspace (1)* %_15
  %_16 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_11 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_17 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_18 = bitcast i8 addrspace (1)* %_17 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_18, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_19
  %_20 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_18, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_20
  %_21 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_18, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_16, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_21
  %_22 = getelementptr i8, i8 addrspace (1)* %_17, i64 1297036692682702848
  store i8 addrspace (1)* %_22, i8 addrspace (1)** %_0
  %_23 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_23, i8 addrspace (1)** %x
  %_24 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_25 = addrspacecast i8 addrspace (1)* %_24 to i8*
  %_26 = ptrtoint i8* %_25 to i64
  %_27 = and i64 %_26, 9151314442816847872
  %_28 = icmp eq i64 %_27, 504403158265495552
  br i1 %_28, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_29 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_24, i64 72057594037927935)
  %_30 = bitcast i8 addrspace (1)* %_29 to i64 addrspace (1)*
  %_31 = load i64, i64 addrspace (1)* %_30, align 8
  %_32 = icmp eq i64 %_31, 1
  store i1 %_32, i1* %_1
  br label %L5
L4:
  store i1 0, i1* %_1
  br label %L5
L5:
  %_33 = load i1, i1* %_1
  %_34 = zext i1 %_33 to i64
  %_35 = or i64 %_34, 72057594037927936
  %_36 = getelementptr i8, i8 addrspace (1)* null, i64 %_35
  call void @_Bio__println (i8 addrspace (1)* %_36)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_37 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_38 = zext i1 1 to i64
  %_39 = or i64 %_38, 72057594037927936
  %_40 = getelementptr i8, i8 addrspace (1)* null, i64 %_39
  %_41 = icmp ne i8 addrspace (1)* %_37, %_40
  store i1 %_41, i1* %_3
  %_42 = load i1, i1* %_3
  %_43 = zext i1 %_42 to i64
  %_44 = or i64 %_43, 72057594037927936
  %_45 = getelementptr i8, i8 addrspace (1)* null, i64 %_44
  call void @_Bio__println (i8 addrspace (1)* %_45)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_46 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_47 = icmp eq i8 addrspace (1)* %_46, null
  store i1 %_47, i1* %_5
  %_48 = load i1, i1* %_5
  %_49 = zext i1 %_48 to i64
  %_50 = or i64 %_49, 72057594037927936
  %_51 = getelementptr i8, i8 addrspace (1)* null, i64 %_50
  call void @_Bio__println (i8 addrspace (1)* %_51)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  ret void
}
