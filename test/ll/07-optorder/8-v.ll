@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_string_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
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
  br i1 %19, label %77, label %20
20:
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620637281), i8 addrspace(1)** %a
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %22 = call i64 @_bal_string_compare(i8 addrspace(1)* %21, i8 addrspace(1)* null)
  %23 = icmp ule i64 %22, 1
  store i1 %23, i1* %1
  %24 = load i1, i1* %1
  %25 = zext i1 %24 to i64
  %26 = or i64 %25, 72057594037927936
  %27 = getelementptr i8, i8 addrspace(1)* null, i64 %26
  call void @_Bio__println(i8 addrspace(1)* %27)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %29 = call i64 @_bal_string_compare(i8 addrspace(1)* %28, i8 addrspace(1)* null)
  %30 = icmp eq i64 %29, 0
  store i1 %30, i1* %3
  %31 = load i1, i1* %3
  %32 = zext i1 %31 to i64
  %33 = or i64 %32, 72057594037927936
  %34 = getelementptr i8, i8 addrspace(1)* null, i64 %33
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %36 = call i64 @_bal_string_compare(i8 addrspace(1)* %35, i8 addrspace(1)* null)
  %37 = icmp sge i64 %36, 1
  store i1 %37, i1* %5
  %38 = load i1, i1* %5
  %39 = zext i1 %38 to i64
  %40 = or i64 %39, 72057594037927936
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %43 = call i64 @_bal_string_compare(i8 addrspace(1)* %42, i8 addrspace(1)* null)
  %44 = icmp eq i64 %43, 2
  store i1 %44, i1* %7
  %45 = load i1, i1* %7
  %46 = zext i1 %45 to i64
  %47 = or i64 %46, 72057594037927936
  %48 = getelementptr i8, i8 addrspace(1)* null, i64 %47
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %50 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %49)
  %51 = icmp ule i64 %50, 1
  store i1 %51, i1* %9
  %52 = load i1, i1* %9
  %53 = zext i1 %52 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54
  call void @_Bio__println(i8 addrspace(1)* %55)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %57 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %56)
  %58 = icmp eq i64 %57, 0
  store i1 %58, i1* %11
  %59 = load i1, i1* %11
  %60 = zext i1 %59 to i64
  %61 = or i64 %60, 72057594037927936
  %62 = getelementptr i8, i8 addrspace(1)* null, i64 %61
  call void @_Bio__println(i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %64 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %63)
  %65 = icmp sge i64 %64, 1
  store i1 %65, i1* %13
  %66 = load i1, i1* %13
  %67 = zext i1 %66 to i64
  %68 = or i64 %67, 72057594037927936
  %69 = getelementptr i8, i8 addrspace(1)* null, i64 %68
  call void @_Bio__println(i8 addrspace(1)* %69)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %71 = call i64 @_bal_string_compare(i8 addrspace(1)* null, i8 addrspace(1)* %70)
  %72 = icmp eq i64 %71, 2
  store i1 %72, i1* %15
  %73 = load i1, i1* %15
  %74 = zext i1 %73 to i64
  %75 = or i64 %74, 72057594037927936
  %76 = getelementptr i8, i8 addrspace(1)* null, i64 %75
  call void @_Bio__println(i8 addrspace(1)* %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %78)
  unreachable
}
