@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L2, label %L1
L1:
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_Bio__println (i8 addrspace (1)* null)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_9 = zext i1 1 to i64
  %_10 = or i64 %_9, 72057594037927936
  %_11 = getelementptr i8, i8 addrspace (1)* null, i64 %_10
  call void @_Bio__println (i8 addrspace (1)* %_11)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  call void @_Bio__println (i8 addrspace (1)* %_12)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_13 = zext i1 0 to i64
  %_14 = or i64 %_13, 72057594037927936
  %_15 = getelementptr i8, i8 addrspace (1)* null, i64 %_14
  call void @_Bio__println (i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
