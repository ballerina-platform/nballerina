@_bal_stack_guard = external global i8*
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 12, i16 12, [12 x i8] c"boolean|int?"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %17, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  call void @_B_bin(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9223372036854775807)
  call void @_B_bin(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %13 = zext i1 1 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14
  call void @_B_bin(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  call void @_B_bin(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  call void @_B_bin(i8 addrspace(1)* null)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %16 = call i8 addrspace(1)* @_bal_float_to_tagged(double 1.5)
  call void @_B_bin(i8 addrspace(1)* %16)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
17:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_bin(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %x.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %x.3 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %32, label %10
10:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = icmp eq i8 addrspace(1)* %11, null
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %16
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %15, i8 addrspace(1)** %x.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621228910))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %19
16:
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %17, i8 addrspace(1)** %x.2
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  call void @_Bio__println(i8 addrspace(1)* %18)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %19
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = and i64 %22, 2233785415175766016
  %24 = lshr i64 %23, 56
  %25 = shl i64 1, %24
  %26 = and i64 %25, 131
  %27 = icmp ne i64 %26, 0
  store i1 %27, i1* %5
  %28 = load i1, i1* %5
  br i1 %28, label %29, label %31
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %30, i8 addrspace(1)** %x.3
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str2 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %31
31:
  ret void
32:
  call void @_bal_panic(i64 5636)
  unreachable
}
