@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L6, label %L1
L1:
  %_7 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  store i64 2, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = icmp slt i64 %_8, 1
  store i1 %_9, i1* %_1
  %_10 = load i1, i1* %_1
  br i1 %_10, label %L5, label %L3
L3:
  %_11 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_11)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L4:
  %_12 = load i64, i64* %i
  %_13 = add nsw i64 %_12, 1
  store i64 %_13, i64* %i
  br label %L2
L5:
  %_14 = load i64, i64* %i
  %_15 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_14)
  call void @_Bio__println (i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L6:
  call void @_bal_panic (i64 772)
  unreachable
}
