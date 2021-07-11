@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %n = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  %_7 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_8 = bitcast i8 addrspace (1)* %_7 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_9 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_10 = bitcast i8 addrspace (1)* %_9 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_10, align 8
  %_11 = getelementptr i8, i8 addrspace (1)* %_9, i64 504403158265495552
  %_12 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_8, i64 0, i64 0
  store i8 addrspace (1)* %_11, i8 addrspace (1)* addrspace (1)* %_12
  %_13 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_8 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_14 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_15 = bitcast i8 addrspace (1)* %_14 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_16 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_15, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_16
  %_17 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_15, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_17
  %_18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_15, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_13, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_18
  %_19 = getelementptr i8, i8 addrspace (1)* %_14, i64 1297036692682702848
  store i8 addrspace (1)* %_19, i8 addrspace (1)** %_0
  %_20 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_20, i8 addrspace (1)** %v
  %_21 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_22 = bitcast i8 addrspace (1)* %_21 to i64 addrspace (1)*
  store i64 2, i64 addrspace (1)* %_22, align 8
  %_23 = getelementptr i8, i8 addrspace (1)* %_21, i64 504403158265495552
  store i8 addrspace (1)* %_23, i8 addrspace (1)** %n
  %_24 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_25 = load i8 addrspace (1)*, i8 addrspace (1)** %n
  %_26 = call i64 @_bal_list_set (i8 addrspace (1)* %_24, i64 0, i8 addrspace (1)* %_25)
  %_27 = icmp eq i64 %_26, 0
  br i1 %_27, label %L4, label %L5
L2:
  %_40 = load i64, i64* %_3
  call void @_bal_panic (i64 %_40)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_30 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_29, i64 72057594037927935)
  %_31 = bitcast i8 addrspace (1)* %_30 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_32 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 0
  %_33 = load i64, i64 addrspace (1)* %_32, align 8
  %_34 = icmp ult i64 0, %_33
  br i1 %_34, label %L6, label %L7
L5:
  %_28 = or i64 %_26, 1536
  store i64 %_28, i64* %_3
  br label %L2
L6:
  %_35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 2
  %_36 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_35, align 8
  %_37 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_36, i64 0, i64 0
  %_38 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_37, align 8
  store i8 addrspace (1)* %_38, i8 addrspace (1)** %_1
  %_39 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  call void @_Bio__println (i8 addrspace (1)* %_39)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L7:
  store i64 1797, i64* %_3
  br label %L2
}
