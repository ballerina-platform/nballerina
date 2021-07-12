@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  call void @_B_loop (i64 8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define void @_B_loop (i64 %_0) {
  %to = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L6, label %L1
L1:
  store i64 %_0, i64* %to
  store i64 2, i64* %i
  br label %L2
L2:
  %_6 = load i64, i64* %i
  %_7 = load i64, i64* %to
  %_8 = icmp slt i64 %_6, %_7
  store i1 %_8, i1* %_1
  %_9 = load i1, i1* %_1
  br i1 %_9, label %L5, label %L3
L3:
  ret void
L4:
  %_10 = load i64, i64* %i
  %_11 = add nsw i64 %_10, 1
  store i64 %_11, i64* %i
  br label %L2
L5:
  %_12 = load i64, i64* %i
  %_13 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_12)
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L6:
  call void @_bal_panic (i64 1540)
  unreachable
}
