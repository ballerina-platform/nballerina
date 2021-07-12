@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
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
  call void @_B_printBranch (i1 1, i1 1)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_B_printBranch (i1 1, i1 0)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  call void @_B_printBranch (i1 0, i1 1)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  call void @_B_printBranch (i1 0, i1 0)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printBranch (i1 %_0, i1 %_1) {
  %x = alloca i1
  %y = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L11, label %L1
L1:
  store i1 %_0, i1* %x
  store i1 %_1, i1* %y
  %_9 = load i1, i1* %x
  br i1 %_9, label %L2, label %L6
L2:
  %_10 = load i1, i1* %y
  br i1 %_10, label %L3, label %L4
L3:
  %_11 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_11)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L5
L4:
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_12)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  br label %L5
L5:
  br label %L10
L6:
  %_13 = load i1, i1* %y
  br i1 %_13, label %L7, label %L8
L7:
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  br label %L9
L8:
  %_15 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 3)
  call void @_Bio__println (i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L9
L9:
  br label %L10
L10:
  ret void
L11:
  call void @_bal_panic (i64 2564)
  unreachable
}
