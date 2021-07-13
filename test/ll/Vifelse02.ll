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
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L8, label %L1
L1:
  store i64 %_0, i64* %x
  %_9 = load i64, i64* %x
  %_10 = icmp slt i64 %_9, 10
  store i1 %_10, i1* %_1
  %_11 = load i1, i1* %_1
  br i1 %_11, label %L2, label %L3
L2:
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_12)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L7
L3:
  %_13 = load i64, i64* %x
  %_14 = icmp eq i64 %_13, 10
  store i1 %_14, i1* %_3
  %_15 = load i1, i1* %_3
  br i1 %_15, label %L4, label %L5
L4:
  %_16 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_16)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  br label %L6
L5:
  %_17 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  call void @_Bio__println (i8 addrspace (1)* %_17)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L6
L6:
  br label %L7
L7:
  ret void
L8:
  call void @_bal_panic (i64 2308)
  unreachable
}
