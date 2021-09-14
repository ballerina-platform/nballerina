@_bal_stack_guard = external global i8*
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"not null\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
define void @_B_main() {
  %n = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i1
  %n.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %n.2 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %20, label %8
8:
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  store i8 addrspace(1)* %9, i8 addrspace(1)** %n
  %10 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  call void @_Bio__println(i8 addrspace(1)* %10)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  store i8 addrspace(1)* null, i8 addrspace(1)** %n
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %12 = icmp eq i8 addrspace(1)* %11, null
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %16
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  store i8 addrspace(1)* %15, i8 addrspace(1)** %n.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541154981230))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %19
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %n
  %18 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %17)
  store i64 %18, i64* %n.2
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str1 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %19
19:
  ret void
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
