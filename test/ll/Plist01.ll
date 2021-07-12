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
  %_2 = alloca i64
  %i = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L3, label %L1
L1:
  %_9 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 11)
  %_10 = extractvalue {i64, i1} %_9, 1
  br i1 %_10, label %L5, label %L4
L2:
  %_45 = load i64, i64* %_5
  call void @_bal_panic (i64 %_45)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_11 = extractvalue {i64, i1} %_9, 0
  store i64 %_11, i64* %_0
  %_12 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_13 = bitcast i8 addrspace (1)* %_12 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 17)
  %_15 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_13, i64 0, i64 0
  store i8 addrspace (1)* %_14, i8 addrspace (1)* addrspace (1)* %_15
  %_16 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 42)
  %_17 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_13, i64 0, i64 1
  store i8 addrspace (1)* %_16, i8 addrspace (1)* addrspace (1)* %_17
  %_18 = load i64, i64* %_0
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_18)
  %_20 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_13, i64 0, i64 2
  store i8 addrspace (1)* %_19, i8 addrspace (1)* addrspace (1)* %_20
  %_21 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_13 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_22 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_23 = bitcast i8 addrspace (1)* %_22 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_24 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_24
  %_25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_25
  %_26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_21, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_26
  %_27 = getelementptr i8, i8 addrspace (1)* %_22, i64 1297036692682702848
  store i8 addrspace (1)* %_27, i8 addrspace (1)** %_1
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  store i8 addrspace (1)* %_28, i8 addrspace (1)** %v
  %_29 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L7, label %L6
L5:
  store i64 769, i64* %_5
  br label %L2
L6:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_2
  %_32 = load i64, i64* %_2
  store i64 %_32, i64* %i
  %_33 = load i64, i64* %i
  %_34 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_35 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_34, i64 72057594037927935)
  %_36 = bitcast i8 addrspace (1)* %_35 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_37 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_36, i64 0, i32 0
  %_38 = load i64, i64 addrspace (1)* %_37, align 8
  %_39 = icmp ult i64 %_33, %_38
  br i1 %_39, label %L8, label %L9
L7:
  store i64 1025, i64* %_5
  br label %L2
L8:
  %_40 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_36, i64 0, i32 2
  %_41 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_40, align 8
  %_42 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_41, i64 0, i64 %_33
  %_43 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_42, align 8
  store i8 addrspace (1)* %_43, i8 addrspace (1)** %_3
  %_44 = load i8 addrspace (1)*, i8 addrspace (1)** %_3
  call void @_Bio__println (i8 addrspace (1)* %_44)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  ret void
L9:
  store i64 1285, i64* %_5
  br label %L2
}
