@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i1 @_B_foo ()
  store i1 %_5, i1* %_0
  %_6 = load i1, i1* %_0
  call void @_B_printBoolean (i1 %_6)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i1 @_B_foo () {
  %_0 = alloca i1
  %_1 = alloca i1
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L4, label %L1
L1:
  %_5 = call i1 @_B_bar (i64 1)
  store i1 %_5, i1* %_0
  %_6 = load i1, i1* %_0
  %_7 = xor i1 1, %_6
  store i1 %_7, i1* %_1
  %_8 = load i1, i1* %_1
  br i1 %_8, label %L2, label %L3
L2:
  ret i1 1
L3:
  ret i1 0
L4:
  call void @_bal_panic (i64 1796)
  unreachable
}
define internal i1 @_B_bar (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  store i64 %_0, i64* %x
  %_5 = load i64, i64* %x
  %_6 = icmp eq i64 %_5, 1
  store i1 %_6, i1* %_1
  %_7 = load i1, i1* %_1
  ret i1 %_7
L2:
  call void @_bal_panic (i64 3844)
  unreachable
}
define internal void @_B_printBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L5, label %L1
L1:
  store i1 %_0, i1* %b
  %_6 = load i1, i1* %b
  br i1 %_6, label %L2, label %L3
L2:
  %_7 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L3:
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L4:
  ret void
L5:
  call void @_bal_panic (i64 4868)
  unreachable
}
