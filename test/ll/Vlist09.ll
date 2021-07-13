@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
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
  %_9 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_10 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_8, i64 0, i64 0
  store i8 addrspace (1)* %_9, i8 addrspace (1)* addrspace (1)* %_10
  %_11 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_8 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_12 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_13 = bitcast i8 addrspace (1)* %_12 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_14 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_13, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_14
  %_15 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_13, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_15
  %_16 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_13, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_11, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_16
  %_17 = getelementptr i8, i8 addrspace (1)* %_12, i64 1297036692682702848
  store i8 addrspace (1)* %_17, i8 addrspace (1)** %_0
  %_18 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_18, i8 addrspace (1)** %v
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  store i8 addrspace (1)* %_19, i8 addrspace (1)** %n
  %_20 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_21 = load i8 addrspace (1)*, i8 addrspace (1)** %n
  %_22 = call i64 @_bal_list_set (i8 addrspace (1)* %_20, i64 0, i8 addrspace (1)* %_21)
  %_23 = icmp eq i64 %_22, 0
  br i1 %_23, label %L4, label %L5
L2:
  %_36 = load i64, i64* %_3
  call void @_bal_panic (i64 %_36)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_25 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_26 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_25, i64 72057594037927935)
  %_27 = bitcast i8 addrspace (1)* %_26 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_28 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_27, i64 0, i32 0
  %_29 = load i64, i64 addrspace (1)* %_28, align 8
  %_30 = icmp ult i64 0, %_29
  br i1 %_30, label %L6, label %L7
L5:
  %_24 = or i64 %_22, 1536
  store i64 %_24, i64* %_3
  br label %L2
L6:
  %_31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_27, i64 0, i32 2
  %_32 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_31, align 8
  %_33 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_32, i64 0, i64 0
  %_34 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_33, align 8
  store i8 addrspace (1)* %_34, i8 addrspace (1)** %_1
  %_35 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  call void @_Bio__println (i8 addrspace (1)* %_35)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L7:
  store i64 1797, i64* %_3
  br label %L2
}
