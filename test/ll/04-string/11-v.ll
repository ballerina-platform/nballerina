@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Bstring__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %13, label %7
7:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)** %s
  %8 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %9 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %10 = call i64 @_Bstring__length(i8 addrspace(1)* %9)
  store i64 %10, i64* %2
  %11 = load i64, i64* %2
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
13:
  %14 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
}
