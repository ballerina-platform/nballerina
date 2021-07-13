@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L4, label %L1
L1:
  br label %L2
L2:
  %_5 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  br label %L3
L3:
  %_6 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_6)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L4:
  call void @_bal_panic (i64 772)
  unreachable
}
