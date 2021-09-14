@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_int_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %a = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8
  %18 = load i8*, i8** @_bal_stack_guard
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %78, label %20
20:
  %21 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %a
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %23 = call i64 @_bal_int_compare(i8 addrspace(1)* %22, i8 addrspace(1)* null)
  %24 = icmp ule i64 %23, 1
  store i1 %24, i1* %1
  %25 = load i1, i1* %1
  %26 = zext i1 %25 to i64
  %27 = or i64 %26, 72057594037927936
  %28 = getelementptr i8, i8 addrspace(1)* null, i64 %27
  call void @_Bio__println(i8 addrspace(1)* %28)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %30 = call i64 @_bal_int_compare(i8 addrspace(1)* %29, i8 addrspace(1)* null)
  %31 = icmp eq i64 %30, 0
  store i1 %31, i1* %3
  %32 = load i1, i1* %3
  %33 = zext i1 %32 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %37 = call i64 @_bal_int_compare(i8 addrspace(1)* %36, i8 addrspace(1)* null)
  %38 = icmp sge i64 %37, 1
  store i1 %38, i1* %5
  %39 = load i1, i1* %5
  %40 = zext i1 %39 to i64
  %41 = or i64 %40, 72057594037927936
  %42 = getelementptr i8, i8 addrspace(1)* null, i64 %41
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %44 = call i64 @_bal_int_compare(i8 addrspace(1)* %43, i8 addrspace(1)* null)
  %45 = icmp eq i64 %44, 2
  store i1 %45, i1* %7
  %46 = load i1, i1* %7
  %47 = zext i1 %46 to i64
  %48 = or i64 %47, 72057594037927936
  %49 = getelementptr i8, i8 addrspace(1)* null, i64 %48
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %51 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %50)
  %52 = icmp ule i64 %51, 1
  store i1 %52, i1* %9
  %53 = load i1, i1* %9
  %54 = zext i1 %53 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55
  call void @_Bio__println(i8 addrspace(1)* %56)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %58 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %57)
  %59 = icmp eq i64 %58, 0
  store i1 %59, i1* %11
  %60 = load i1, i1* %11
  %61 = zext i1 %60 to i64
  %62 = or i64 %61, 72057594037927936
  %63 = getelementptr i8, i8 addrspace(1)* null, i64 %62
  call void @_Bio__println(i8 addrspace(1)* %63)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %65 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %64)
  %66 = icmp sge i64 %65, 1
  store i1 %66, i1* %13
  %67 = load i1, i1* %13
  %68 = zext i1 %67 to i64
  %69 = or i64 %68, 72057594037927936
  %70 = getelementptr i8, i8 addrspace(1)* null, i64 %69
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %72 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %71)
  %73 = icmp eq i64 %72, 2
  store i1 %73, i1* %15
  %74 = load i1, i1* %15
  %75 = zext i1 %74 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %79)
  unreachable
}
