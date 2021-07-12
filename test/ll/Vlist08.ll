@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Barray__push (i8 addrspace (1)*, i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
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
  %_15 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Barray__push (i8 addrspace (1)* %_14, i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_16 = call i8 addrspace (1)* @_bal_alloc (i64 32)
  %_17 = bitcast i8 addrspace (1)* %_16 to [4 x i8 addrspace (1)*] addrspace (1)*
  %_18 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_19 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_17, i64 0, i64 0
  store i8 addrspace (1)* %_18, i8 addrspace (1)* addrspace (1)* %_19
  %_20 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  %_21 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_17, i64 0, i64 1
  store i8 addrspace (1)* %_20, i8 addrspace (1)* addrspace (1)* %_21
  %_22 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_23 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_17, i64 0, i64 2
  store i8 addrspace (1)* %_22, i8 addrspace (1)* addrspace (1)* %_23
  %_24 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 4)
  %_25 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_17, i64 0, i64 3
  store i8 addrspace (1)* %_24, i8 addrspace (1)* addrspace (1)* %_25
  %_26 = bitcast [4 x i8 addrspace (1)*] addrspace (1)* %_17 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_27 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_28 = bitcast i8 addrspace (1)* %_27 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_28, i64 0, i32 0
  store i64 4, i64 addrspace (1)* %_29
  %_30 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_28, i64 0, i32 1
  store i64 4, i64 addrspace (1)* %_30
  %_31 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_28, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_26, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_31
  %_32 = getelementptr i8, i8 addrspace (1)* %_27, i64 1297036692682702848
  store i8 addrspace (1)* %_32, i8 addrspace (1)** %_2
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  call void @_Bio__println (i8 addrspace (1)* %_33)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
