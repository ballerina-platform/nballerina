@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Barray__push (i8 addrspace (1)*, i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8
  %_8 = load i8*, i8** @_bal_stack_guard
  %_9 = icmp ult i8* %_7, %_8
  br i1 %_9, label %L2, label %L1
L1:
  %_10 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_11 = bitcast i8 addrspace (1)* %_10 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_12 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_11, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_12
  %_13 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_11, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_13
  %_14 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_11, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_14
  %_15 = getelementptr i8, i8 addrspace (1)* %_10, i64 1297036692682702848
  store i8 addrspace (1)* %_15, i8 addrspace (1)** %_0
  %_16 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_16, i8 addrspace (1)** %v
  %_17 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_18 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Barray__push (i8 addrspace (1)* %_17, i8 addrspace (1)* %_18)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_19 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_20 = zext i1 1 to i64
  %_21 = or i64 %_20, 72057594037927936
  %_22 = getelementptr i8, i8 addrspace (1)* null, i64 %_21
  call void @_Barray__push (i8 addrspace (1)* %_19, i8 addrspace (1)* %_22)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_23 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_24 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  call void @_Barray__push (i8 addrspace (1)* %_23, i8 addrspace (1)* %_24)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_25 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Barray__push (i8 addrspace (1)* %_25, i8 addrspace (1)* null)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_26 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_27 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 4)
  call void @_Barray__push (i8 addrspace (1)* %_26, i8 addrspace (1)* %_27)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_28)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
