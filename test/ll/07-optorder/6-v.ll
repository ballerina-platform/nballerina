@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
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
  br i1 %19, label %80, label %20
20:
  %21 = zext i1 0 to i64
  %22 = or i64 %21, 72057594037927936
  %23 = getelementptr i8, i8 addrspace(1)* null, i64 %22
  store i8 addrspace(1)* %23, i8 addrspace(1)** %a
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %25 = call i64 @_bal_int_compare(i8 addrspace(1)* %24, i8 addrspace(1)* null)
  %26 = icmp ule i64 %25, 1
  store i1 %26, i1* %1
  %27 = load i1, i1* %1
  %28 = zext i1 %27 to i64
  %29 = or i64 %28, 72057594037927936
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29
  call void @_Bio__println(i8 addrspace(1)* %30)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %32 = call i64 @_bal_int_compare(i8 addrspace(1)* %31, i8 addrspace(1)* null)
  %33 = icmp eq i64 %32, 0
  store i1 %33, i1* %3
  %34 = load i1, i1* %3
  %35 = zext i1 %34 to i64
  %36 = or i64 %35, 72057594037927936
  %37 = getelementptr i8, i8 addrspace(1)* null, i64 %36
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %39 = call i64 @_bal_int_compare(i8 addrspace(1)* %38, i8 addrspace(1)* null)
  %40 = icmp sge i64 %39, 1
  store i1 %40, i1* %5
  %41 = load i1, i1* %5
  %42 = zext i1 %41 to i64
  %43 = or i64 %42, 72057594037927936
  %44 = getelementptr i8, i8 addrspace(1)* null, i64 %43
  call void @_Bio__println(i8 addrspace(1)* %44)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %46 = call i64 @_bal_int_compare(i8 addrspace(1)* %45, i8 addrspace(1)* null)
  %47 = icmp eq i64 %46, 2
  store i1 %47, i1* %7
  %48 = load i1, i1* %7
  %49 = zext i1 %48 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, i8 addrspace(1)* null, i64 %50
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %53 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %52)
  %54 = icmp ule i64 %53, 1
  store i1 %54, i1* %9
  %55 = load i1, i1* %9
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, i8 addrspace(1)* null, i64 %57
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %60 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %59)
  %61 = icmp eq i64 %60, 0
  store i1 %61, i1* %11
  %62 = load i1, i1* %11
  %63 = zext i1 %62 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  call void @_Bio__println(i8 addrspace(1)* %65)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %67 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %66)
  %68 = icmp sge i64 %67, 1
  store i1 %68, i1* %13
  %69 = load i1, i1* %13
  %70 = zext i1 %69 to i64
  %71 = or i64 %70, 72057594037927936
  %72 = getelementptr i8, i8 addrspace(1)* null, i64 %71
  call void @_Bio__println(i8 addrspace(1)* %72)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %74 = call i64 @_bal_int_compare(i8 addrspace(1)* null, i8 addrspace(1)* %73)
  %75 = icmp eq i64 %74, 2
  store i1 %75, i1* %15
  %76 = load i1, i1* %15
  %77 = zext i1 %76 to i64
  %78 = or i64 %77, 72057594037927936
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78
  call void @_Bio__println(i8 addrspace(1)* %79)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  ret void
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028)
  call void @_bal_panic(i8 addrspace(1)* %81)
  unreachable
}
