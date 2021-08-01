@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i1
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %b.1 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %b.2 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %b.3 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %b.4 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %64, label %19
19:
  %20 = icmp eq i1 1, 1
  store i1 %20, i1* %1
  %21 = load i1, i1* %1
  store i1 %21, i1* %b
  %22 = load i1, i1* %b
  br i1 %22, label %23, label %25
23:
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  call void @_Bio__println(i8 addrspace(1)* %24)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %27
25:
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 5)
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %27
27:
  %28 = icmp eq i1 0, 0
  store i1 %28, i1* %4
  %29 = load i1, i1* %4
  store i1 %29, i1* %b
  %30 = load i1, i1* %b
  br i1 %30, label %31, label %33
31:
  %32 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 6)
  call void @_Bio__println(i8 addrspace(1)* %32)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %35
33:
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 7)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %35
35:
  %36 = icmp ne i1 1, 1
  store i1 %36, i1* %7
  %37 = load i1, i1* %7
  store i1 %37, i1* %b
  %38 = load i1, i1* %b
  br i1 %38, label %39, label %41
39:
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 8)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %43
41:
  %42 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 9)
  call void @_Bio__println(i8 addrspace(1)* %42)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  br label %43
43:
  store i1 1, i1* %b
  %44 = load i1, i1* %b
  %45 = icmp eq i1 %44, 1
  store i1 %45, i1* %10
  %46 = load i1, i1* %10
  br i1 %46, label %47, label %50
47:
  %48 = load i1, i1* %b
  store i1 %48, i1* %b.1
  %49 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 10)
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %53
50:
  %51 = load i1, i1* %b
  store i1 %51, i1* %b.2
  %52 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 11)
  call void @_Bio__println(i8 addrspace(1)* %52)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  br label %53
53:
  store i1 0, i1* %b
  %54 = load i1, i1* %b
  %55 = icmp eq i1 1, %54
  store i1 %55, i1* %13
  %56 = load i1, i1* %13
  br i1 %56, label %57, label %60
57:
  %58 = load i1, i1* %b
  store i1 %58, i1* %b.3
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 12)
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  br label %63
60:
  %61 = load i1, i1* %b
  store i1 %61, i1* %b.4
  %62 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 13)
  call void @_Bio__println(i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %15
  br label %63
63:
  ret void
64:
  call void @_bal_panic(i64 772)
  unreachable
}
