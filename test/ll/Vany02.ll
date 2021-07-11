@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_alloc (i64)
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
  %_7 = call i8 addrspace (1)* @_B_foo ()
  store i8 addrspace (1)* %_7, i8 addrspace (1)** %_0
  %_8 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_9 = call i8 addrspace (1)* @_B_bar ()
  store i8 addrspace (1)* %_9, i8 addrspace (1)** %_2
  %_10 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  call void @_Bio__println (i8 addrspace (1)* %_10)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i8 addrspace (1)* @_B_foo () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  %_3 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_4 = bitcast i8 addrspace (1)* %_3 to i64 addrspace (1)*
  store i64 17, i64 addrspace (1)* %_4, align 8
  %_5 = getelementptr i8, i8 addrspace (1)* %_3, i64 504403158265495552
  ret i8 addrspace (1)* %_5
L2:
  call void @_bal_panic (i64 2052)
  unreachable
}
define internal i8 addrspace (1)* @_B_bar () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  %_3 = zext i1 0 to i64
  %_4 = or i64 %_3, 72057594037927936
  %_5 = getelementptr i8, i8 addrspace (1)* null, i64 %_4
  ret i8 addrspace (1)* %_5
L2:
  call void @_bal_panic (i64 3076)
  unreachable
}
