@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L4, label %L1
L1:
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_7 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_8 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  %_9 = icmp eq i8 addrspace (1)* %_7, %_8
  store i1 %_9, i1* %_0
  %_10 = load i1, i1* %_0
  br i1 %_10, label %L2, label %L3
L2:
  %_11 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_12 = bitcast i8 addrspace (1)* %_11 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_12, align 8
  %_13 = getelementptr i8, i8 addrspace (1)* %_11, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  br label %L3
L3:
  ret void
L4:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_makeNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret void
L2:
  call void @_bal_panic (i64 2308)
  unreachable
}
