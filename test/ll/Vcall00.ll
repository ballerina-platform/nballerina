@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %x = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i64 @_B_foo ()
  store i64 %_5, i64* %_0
  %_6 = load i64, i64* %_0
  store i64 %_6, i64* %x
  %_7 = load i64, i64* %x
  %_8 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_7)
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i64 2
L2:
  call void @_bal_panic (i64 2052)
  unreachable
}
