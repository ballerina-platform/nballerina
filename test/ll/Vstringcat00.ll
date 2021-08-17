@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %10, label %6
6:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901089), i8 addrspace(1)** %s
  %7 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %8 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901090))
  store i8 addrspace(1)* %8, i8 addrspace(1)** %1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  call void @_Bio__println(i8 addrspace(1)* %9)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
10:
  call void @_bal_panic(i64 772)
  unreachable
}
