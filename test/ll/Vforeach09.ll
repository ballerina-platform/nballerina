@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L6, label %L1
L1:
  %_6 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_6)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  store i64 0, i64* %i
  br label %L2
L2:
  %_7 = load i64, i64* %i
  %_8 = icmp slt i64 %_7, 1000
  store i1 %_8, i1* %_1
  %_9 = load i1, i1* %_1
  br i1 %_9, label %L5, label %L3
L3:
  %_10 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_10)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L4:
  %_11 = load i64, i64* %i
  %_12 = add nsw i64 %_11, 1
  store i64 %_12, i64* %i
  br label %L2
L5:
  br label %L4
L6:
  call void @_bal_panic (i64 772)
  unreachable
}
