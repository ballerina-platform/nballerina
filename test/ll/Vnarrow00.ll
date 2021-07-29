@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %12, label %7
7:
  %8 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  call void @_B_foo(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  call void @_B_foo(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %9 = zext i1 1 to i64
  %10 = or i64 %9, 72057594037927936
  %11 = getelementptr i8, i8 addrspace(1)* null, i64 %10
  call void @_B_foo(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
12:
  call void @_bal_panic(i64 772)
  unreachable
}
define internal void @_B_foo(i8 addrspace(1)* %0) {
  %x = alloca i8 addrspace(1)*
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i1
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8
  %21 = load i8*, i8** @_bal_stack_guard
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %79, label %23
23:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 504403158265495552
  store i1 %28, i1* %2
  %29 = load i1, i1* %2
  br i1 %29, label %30, label %36
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %32 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %31)
  store i64 %32, i64* %3
  %33 = load i64, i64* %3
  %34 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %33, i64 1)
  %35 = extractvalue {i64, i1} %34, 1
  br i1 %35, label %84, label %80
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %37, i8 addrspace(1)** %6
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %39 = addrspacecast i8 addrspace(1)* %38 to i8*
  %40 = ptrtoint i8* %39 to i64
  %41 = and i64 %40, 2233785415175766016
  %42 = icmp eq i64 %41, 720575940379279360
  store i1 %42, i1* %7
  %43 = load i1, i1* %7
  br i1 %43, label %44, label %52
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %45, i8 addrspace(1)** %8
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %47 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %46, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630843948))
  store i8 addrspace(1)* %47, i8 addrspace(1)** %9
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %50 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %48, i8 addrspace(1)* %49)
  store i8 addrspace(1)* %50, i8 addrspace(1)** %10
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %75
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %53, i8 addrspace(1)** %12
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %55 = addrspacecast i8 addrspace(1)* %54 to i8*
  %56 = ptrtoint i8* %55 to i64
  %57 = and i64 %56, 2233785415175766016
  %58 = icmp eq i64 %57, 72057594037927936
  store i1 %58, i1* %13
  %59 = load i1, i1* %13
  br i1 %59, label %60, label %71
60:
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %62 = addrspacecast i8 addrspace(1)* %61 to i8*
  %63 = ptrtoint i8* %62 to i64
  %64 = trunc i64 %63 to i1
  store i1 %64, i1* %14
  %65 = load i1, i1* %14
  %66 = xor i1 1, %65
  store i1 %66, i1* %15
  %67 = load i1, i1* %15
  %68 = zext i1 %67 to i64
  %69 = or i64 %68, 72057594037927936
  %70 = getelementptr i8, i8 addrspace(1)* null, i64 %69
  call void @_Bio__println(i8 addrspace(1)* %70)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  br label %74
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  store i8 addrspace(1)* %72, i8 addrspace(1)** %17
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %18
  br label %74
74:
  br label %75
75:
  br label %76
76:
  ret void
77:
  %78 = load i64, i64* %19
  call void @_bal_panic(i64 %78)
  unreachable
79:
  call void @_bal_panic(i64 2308)
  unreachable
80:
  %81 = extractvalue {i64, i1} %34, 0
  store i64 %81, i64* %4
  %82 = load i64, i64* %4
  %83 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %82)
  call void @_Bio__println(i8 addrspace(1)* %83)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  br label %76
84:
  store i64 2817, i64* %19
  br label %77
}
