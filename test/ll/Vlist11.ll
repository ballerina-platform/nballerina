@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L3, label %L1
L1:
  %_6 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_7 = bitcast i8 addrspace (1)* %_6 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_8 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_7, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_8
  %_9 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_7, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_9
  %_10 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_7, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_10
  %_11 = getelementptr i8, i8 addrspace (1)* %_6, i64 1297036692682702848
  store i8 addrspace (1)* %_11, i8 addrspace (1)** %_0
  %_12 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_12, i8 addrspace (1)** %v
  %_13 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  %_15 = call i64 @_bal_list_set (i8 addrspace (1)* %_13, i64 1, i8 addrspace (1)* %_14)
  %_16 = icmp eq i64 %_15, 0
  br i1 %_16, label %L4, label %L5
L2:
  %_19 = load i64, i64* %_2
  call void @_bal_panic (i64 %_19)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_18 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  call void @_Bio__println (i8 addrspace (1)* %_18)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L5:
  %_17 = or i64 %_15, 1280
  store i64 %_17, i64* %_2
  br label %L2
}
