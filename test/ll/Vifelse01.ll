@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  call void @_B_printBranch (i64 5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_B_printBranch (i64 10)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  call void @_B_printBranch (i64 15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printBranch (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L5, label %L1
L1:
  store i64 %_0, i64* %x
  %_7 = load i64, i64* %x
  %_8 = icmp slt i64 %_7, 10
  store i1 %_8, i1* %_1
  %_9 = load i1, i1* %_1
  br i1 %_9, label %L2, label %L3
L2:
  %_10 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_10)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L3:
  %_11 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_11)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 2308)
  unreachable
}
