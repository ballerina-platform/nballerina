@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %20, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_mapping_construct(i64 8388607, i64 1)
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %10, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879881007478), i8 addrspace(1)* %11)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %x
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 1080863910568919040
  %17 = icmp eq i64 %16, 216172782113783808
  br i1 %17, label %22, label %26
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  store i8 addrspace(1)* %13, i8 addrspace(1)** %2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %24 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879881007478))
  store i8 addrspace(1)* %24, i8 addrspace(1)** %3
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  call void @_Bio__println(i8 addrspace(1)* %25)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
26:
  %27 = call i8 addrspace(1)* @_bal_panic_construct(i64 1283)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %5
  br label %18
}
