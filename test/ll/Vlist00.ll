@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_6 = bitcast i8 addrspace (1)* %_5 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_7 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_8 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_6, i64 0, i64 0
  store i8 addrspace (1)* %_7, i8 addrspace (1)* addrspace (1)* %_8
  %_9 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  %_10 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_6, i64 0, i64 1
  store i8 addrspace (1)* %_9, i8 addrspace (1)* addrspace (1)* %_10
  %_11 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 3)
  %_12 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_6, i64 0, i64 2
  store i8 addrspace (1)* %_11, i8 addrspace (1)* addrspace (1)* %_12
  %_13 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_6 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_14 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_15 = bitcast i8 addrspace (1)* %_14 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_16 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_15, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_16
  %_17 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_15, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_17
  %_18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_15, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_13, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_18
  %_19 = getelementptr i8, i8 addrspace (1)* %_14, i64 1297036692682702848
  store i8 addrspace (1)* %_19, i8 addrspace (1)** %_0
  %_20 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  call void @_Bio__println (i8 addrspace (1)* %_20)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
