@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Barray__push (i8 addrspace (1)*, i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i64 @_Barray__length (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L2, label %L1
L1:
  %_8 = call i8 addrspace (1)* @_bal_alloc (i64 32)
  %_9 = bitcast i8 addrspace (1)* %_8 to [4 x i8 addrspace (1)*] addrspace (1)*
  %_10 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  %_11 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_9, i64 0, i64 0
  store i8 addrspace (1)* %_10, i8 addrspace (1)* addrspace (1)* %_11
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  %_13 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_9, i64 0, i64 1
  store i8 addrspace (1)* %_12, i8 addrspace (1)* addrspace (1)* %_13
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 3)
  %_15 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_9, i64 0, i64 2
  store i8 addrspace (1)* %_14, i8 addrspace (1)* addrspace (1)* %_15
  %_16 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 4)
  %_17 = getelementptr inbounds [4 x i8 addrspace (1)*], [4 x i8 addrspace (1)*] addrspace (1)* %_9, i64 0, i64 3
  store i8 addrspace (1)* %_16, i8 addrspace (1)* addrspace (1)* %_17
  %_18 = bitcast [4 x i8 addrspace (1)*] addrspace (1)* %_9 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_19 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_20 = bitcast i8 addrspace (1)* %_19 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_21 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_20, i64 0, i32 0
  store i64 4, i64 addrspace (1)* %_21
  %_22 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_20, i64 0, i32 1
  store i64 4, i64 addrspace (1)* %_22
  %_23 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_20, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_18, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_23
  %_24 = getelementptr i8, i8 addrspace (1)* %_19, i64 1297036692682702848
  store i8 addrspace (1)* %_24, i8 addrspace (1)** %_0
  %_25 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_25, i8 addrspace (1)** %v
  %_26 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_27 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 5)
  call void @_Barray__push (i8 addrspace (1)* %_26, i8 addrspace (1)* %_27)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_28)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_30 = call i64 @_Barray__length (i8 addrspace (1)* %_29)
  store i64 %_30, i64* %_3
  %_31 = load i64, i64* %_3
  %_32 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_31)
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  ret void
L2:
  call void @_bal_panic (i64 516)
  unreachable
}
