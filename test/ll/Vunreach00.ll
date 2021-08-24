@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  store i1 0, i1* %1
  %8 = load i1, i1* %1
  br i1 %8, label %9, label %10
9:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %11
10:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %11
11:
  ret void
12:
  call void @_bal_panic(i64 772)
  unreachable
}
