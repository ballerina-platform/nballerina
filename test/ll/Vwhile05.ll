@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  call void @_B_foo ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_foo () {
  %b = alloca i1
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L5, label %L1
L1:
  store i1 0, i1* %b
  br label %L2
L2:
  %_4 = load i1, i1* %b
  br i1 %_4, label %L4, label %L3
L3:
  ret void
L4:
  %_5 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  br label %L2
L5:
  call void @_bal_panic (i64 1796)
  unreachable
}
