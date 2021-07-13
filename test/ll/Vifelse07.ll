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
  br i1 %_4, label %L2, label %L1
L1:
  call void @_B_printTrue ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_B_printFalse ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printTrue () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  %_4 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_4)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  ret void
L2:
  call void @_bal_panic (i64 2052)
  unreachable
}
define internal void @_B_printFalse () {
  %b = alloca i1
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L5, label %L1
L1:
  store i1 0, i1* %b
  %_5 = load i1, i1* %b
  br i1 %_5, label %L2, label %L3
L2:
  %_6 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_6)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  br label %L4
L3:
  %_7 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 3588)
  unreachable
}
