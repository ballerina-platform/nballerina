@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
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
  %_11 = zext i1 0 to i64
  %_12 = or i64 %_11, 72057594037927936
  %_13 = getelementptr i8, i8 addrspace (1)* null, i64 %_12
  %_14 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_6, i64 0, i64 2
  store i8 addrspace (1)* %_13, i8 addrspace (1)* addrspace (1)* %_14
  %_15 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_6 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_16 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_17 = bitcast i8 addrspace (1)* %_16 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_17, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_18
  %_19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_17, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_19
  %_20 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_17, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_15, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_20
  %_21 = getelementptr i8, i8 addrspace (1)* %_16, i64 1297036692682702848
  store i8 addrspace (1)* %_21, i8 addrspace (1)** %_0
  %_22 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_22, i8 addrspace (1)** %v
  %_23 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_B_foo (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
define internal void @_B_foo (i8 addrspace (1)* %_0) {
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  store i8 addrspace (1)* %_0, i8 addrspace (1)** %v
  %_5 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 1796)
  unreachable
}
