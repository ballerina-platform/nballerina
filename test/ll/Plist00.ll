@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %i = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  %_8 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 11)
  %_9 = extractvalue {i64, i1} %_8, 1
  br i1 %_9, label %L5, label %L4
L2:
  %_40 = load i64, i64* %_4
  call void @_bal_panic (i64 %_40)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_10 = extractvalue {i64, i1} %_8, 0
  store i64 %_10, i64* %_0
  %_11 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_12 = bitcast i8 addrspace (1)* %_11 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_13 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 17)
  %_14 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_12, i64 0, i64 0
  store i8 addrspace (1)* %_13, i8 addrspace (1)* addrspace (1)* %_14
  %_15 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 42)
  %_16 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_12, i64 0, i64 1
  store i8 addrspace (1)* %_15, i8 addrspace (1)* addrspace (1)* %_16
  %_17 = load i64, i64* %_0
  %_18 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_17)
  %_19 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_12, i64 0, i64 2
  store i8 addrspace (1)* %_18, i8 addrspace (1)* addrspace (1)* %_19
  %_20 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_12 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_21 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_22 = bitcast i8 addrspace (1)* %_21 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_23 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_22, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_23
  %_24 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_22, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_24
  %_25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_22, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_20, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_25
  %_26 = getelementptr i8, i8 addrspace (1)* %_21, i64 1297036692682702848
  store i8 addrspace (1)* %_26, i8 addrspace (1)** %_1
  %_27 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  store i8 addrspace (1)* %_27, i8 addrspace (1)** %v
  store i64 3, i64* %i
  %_28 = load i64, i64* %i
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_30 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_29, i64 72057594037927935)
  %_31 = bitcast i8 addrspace (1)* %_30 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_32 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 0
  %_33 = load i64, i64 addrspace (1)* %_32, align 8
  %_34 = icmp ult i64 %_28, %_33
  br i1 %_34, label %L6, label %L7
L5:
  store i64 769, i64* %_4
  br label %L2
L6:
  %_35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 2
  %_36 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_35, align 8
  %_37 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_36, i64 0, i64 %_28
  %_38 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_37, align 8
  store i8 addrspace (1)* %_38, i8 addrspace (1)** %_2
  %_39 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  call void @_Bio__println (i8 addrspace (1)* %_39)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L7:
  store i64 1285, i64* %_4
  br label %L2
}
