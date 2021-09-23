@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098306610823849314))
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_noOp()
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475935447672417))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal void @_B_noOp() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %6, label %5
5:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098306550594498153))
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
6:
  %7 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308)
  call void @_bal_panic(i8 addrspace(1)* %7)
  unreachable
}
