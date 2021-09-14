@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %9, label %5
5:
  %6 = zext i1 0 to i64
  %7 = or i64 %6, 72057594037927936
  %8 = getelementptr i8, i8 addrspace(1)* null, i64 %7
  call void @_Bio__println(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
9:
  %10 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540)
  call void @_bal_panic(i8 addrspace(1)* %10)
  unreachable
}
