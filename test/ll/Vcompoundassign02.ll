@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 11, i16 11, [12 x i8] c" nballerina\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %n = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %28, label %11
11:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504), i8 addrspace(1)** %s
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %13 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %12, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098305485593343776))
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %14, i8 addrspace(1)** %s
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %n
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %18 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %16, i8 addrspace(1)* %17)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %3
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %19, i8 addrspace(1)** %s
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %20)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)** %x
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)** %y
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %22 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901114))
  store i8 addrspace(1)* %22, i8 addrspace(1)** %5
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %25 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %23, i8 addrspace(1)* %24)
  store i8 addrspace(1)* %25, i8 addrspace(1)** %6
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %26, i8 addrspace(1)** %x
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
28:
  call void @_bal_panic(i64 772)
  unreachable
}
