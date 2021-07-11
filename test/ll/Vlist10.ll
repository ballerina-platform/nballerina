@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  %_7 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_8 = bitcast i8 addrspace (1)* %_7 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_9 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_8, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_9
  %_10 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_8, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_10
  %_11 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_8, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_11
  %_12 = getelementptr i8, i8 addrspace (1)* %_7, i64 1297036692682702848
  store i8 addrspace (1)* %_12, i8 addrspace (1)** %_0
  %_13 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_13, i8 addrspace (1)** %v
  %_14 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_15 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_16 = bitcast i8 addrspace (1)* %_15 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_16, align 8
  %_17 = getelementptr i8, i8 addrspace (1)* %_15, i64 504403158265495552
  %_18 = call i64 @_bal_list_set (i8 addrspace (1)* %_14, i64 0, i8 addrspace (1)* %_17)
  %_19 = icmp eq i64 %_18, 0
  br i1 %_19, label %L4, label %L5
L2:
  %_32 = load i64, i64* %_3
  call void @_bal_panic (i64 %_32)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_21 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_22 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_21, i64 72057594037927935)
  %_23 = bitcast i8 addrspace (1)* %_22 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_24 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 0
  %_25 = load i64, i64 addrspace (1)* %_24, align 8
  %_26 = icmp ult i64 0, %_25
  br i1 %_26, label %L6, label %L7
L5:
  %_20 = or i64 %_18, 1280
  store i64 %_20, i64* %_3
  br label %L2
L6:
  %_27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 2
  %_28 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_27, align 8
  %_29 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_28, i64 0, i64 0
  %_30 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_29, align 8
  store i8 addrspace (1)* %_30, i8 addrspace (1)** %_1
  %_31 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  call void @_Bio__println (i8 addrspace (1)* %_31)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L7:
  store i64 1541, i64* %_3
  br label %L2
}
