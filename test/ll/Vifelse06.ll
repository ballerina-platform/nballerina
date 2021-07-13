@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  call void @_B_printIfFalse (i1 1)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_B_printIfFalse (i1 0)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  call void @_B_printIfTrue (i1 1)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  call void @_B_printIfTrue (i1 0)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printIfFalse (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L5, label %L1
L1:
  store i1 %_0, i1* %b
  %_5 = load i1, i1* %b
  br i1 %_5, label %L2, label %L3
L2:
  br label %L4
L3:
  %_6 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_6)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 2564)
  unreachable
}
define internal void @_B_printIfTrue (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L4, label %L1
L1:
  store i1 %_0, i1* %b
  %_5 = load i1, i1* %b
  br i1 %_5, label %L2, label %L3
L2:
  %_6 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_6)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L3
L3:
  ret void
L4:
  call void @_bal_panic (i64 4868)
  unreachable
}
