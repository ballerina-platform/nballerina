@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 5, [7 x i8] c"hello\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %18, label %8
8:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %s
  %9 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %1
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %10, i8 addrspace(1)** %m
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %14 = call i64 @_bal_mapping_set(i8 addrspace(1)* %11, i8 addrspace(1)* %12, i8 addrspace(1)* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %24
16:
  %17 = load i64, i64* %4
  call void @_bal_panic(i64 %17)
  unreachable
18:
  call void @_bal_panic(i64 772)
  unreachable
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %22 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %20, i8 addrspace(1)* %21)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %23)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
24:
  %25 = or i64 %14, 1536
  store i64 %25, i64* %4
  br label %16
}
