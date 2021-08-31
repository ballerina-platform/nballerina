@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s1 = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630868674), i8 addrspace(1)** %s1
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %8 = call i1 @_bal_string_eq(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630868930))
  store i1 %8, i1* %1
  %9 = load i1, i1* %1
  %10 = zext i1 %9 to i64
  %11 = or i64 %10, 72057594037927936
  %12 = getelementptr i8, i8 addrspace(1)* null, i64 %11
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
