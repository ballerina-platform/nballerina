@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %16, label %9
9:
  %10 = call i8 addrspace(1)* @_B_mkInt(i64 2)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %1
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %11, i8 addrspace(1)** %x
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %12, i8 addrspace(1)** %y
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %15 = icmp eq i8 addrspace(1)* %13, %14
  br i1 %15, label %17, label %18
16:
  call void @_bal_panic(i64 772)
  unreachable
17:
  store i1 1, i1* %2
  br label %28
18:
  %19 = addrspacecast i8 addrspace(1)* %13 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 2233785415175766016
  %22 = icmp eq i64 %21, 504403158265495552
  %23 = addrspacecast i8 addrspace(1)* %14 to i8*
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 2233785415175766016
  %26 = icmp eq i64 %25, 504403158265495552
  %27 = and i1 %22, %26
  br i1 %27, label %36, label %40
28:
  %29 = load i1, i1* %2
  %30 = zext i1 %29 to i64
  %31 = or i64 %30, 72057594037927936
  %32 = getelementptr i8, i8 addrspace(1)* null, i64 %31
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %35 = icmp eq i8 addrspace(1)* %33, %34
  br i1 %35, label %41, label %42
36:
  %37 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %13)
  %38 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %14)
  %39 = icmp eq i64 %37, %38
  store i1 %39, i1* %2
  br label %28
40:
  store i1 0, i1* %2
  br label %28
41:
  store i1 0, i1* %4
  br label %52
42:
  %43 = addrspacecast i8 addrspace(1)* %33 to i8*
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = icmp eq i64 %45, 504403158265495552
  %47 = addrspacecast i8 addrspace(1)* %34 to i8*
  %48 = ptrtoint i8* %47 to i64
  %49 = and i64 %48, 2233785415175766016
  %50 = icmp eq i64 %49, 504403158265495552
  %51 = and i1 %46, %50
  br i1 %51, label %57, label %61
52:
  %53 = load i1, i1* %4
  %54 = zext i1 %53 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55
  call void @_Bio__println(i8 addrspace(1)* %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
57:
  %58 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %33)
  %59 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %34)
  %60 = icmp ne i64 %58, %59
  store i1 %60, i1* %4
  br label %52
61:
  store i1 1, i1* %4
  br label %52
}
define internal i8 addrspace(1)* @_B_mkInt(i64 %0) {
  %n = alloca i64
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %8, label %5
5:
  store i64 %0, i64* %n
  %6 = load i64, i64* %n
  %7 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %6)
  ret i8 addrspace(1)* %7
8:
  call void @_bal_panic(i64 2564)
  unreachable
}
