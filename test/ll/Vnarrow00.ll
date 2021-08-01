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
  %x.1 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %x.2 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %x.3 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %x.4 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %x.5 = alloca i1
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %x.6 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %73, label %17
17:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %x
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %19 = addrspacecast i8 addrspace(1)* %18 to i8*
  %20 = ptrtoint i8* %19 to i64
  %21 = and i64 %20, 2233785415175766016
  %22 = icmp eq i64 %21, 504403158265495552
  store i1 %22, i1* %2
  %23 = load i1, i1* %2
  br i1 %23, label %24, label %30
24:
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %25)
  store i64 %26, i64* %x.1
  %27 = load i64, i64* %x.1
  %28 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %27, i64 1)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %78, label %74
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %31, i8 addrspace(1)** %x.2
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  %33 = addrspacecast i8 addrspace(1)* %32 to i8*
  %34 = ptrtoint i8* %33 to i64
  %35 = and i64 %34, 2233785415175766016
  %36 = icmp eq i64 %35, 720575940379279360
  store i1 %36, i1* %5
  %37 = load i1, i1* %5
  br i1 %37, label %38, label %46
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %39, i8 addrspace(1)** %x.3
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %41 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %40, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630843948))
  store i8 addrspace(1)* %41, i8 addrspace(1)** %6
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %x.3
  %44 = call i8 addrspace(1)* @_bal_string_concat(i8 addrspace(1)* %42, i8 addrspace(1)* %43)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %7
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  br label %69
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %x.2
  store i8 addrspace(1)* %47, i8 addrspace(1)** %x.4
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  %49 = addrspacecast i8 addrspace(1)* %48 to i8*
  %50 = ptrtoint i8* %49 to i64
  %51 = and i64 %50, 2233785415175766016
  %52 = icmp eq i64 %51, 72057594037927936
  store i1 %52, i1* %9
  %53 = load i1, i1* %9
  br i1 %53, label %54, label %65
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  %56 = addrspacecast i8 addrspace(1)* %55 to i8*
  %57 = ptrtoint i8* %56 to i64
  %58 = trunc i64 %57 to i1
  store i1 %58, i1* %x.5
  %59 = load i1, i1* %x.5
  %60 = xor i1 1, %59
  store i1 %60, i1* %10
  %61 = load i1, i1* %10
  %62 = zext i1 %61 to i64
  %63 = or i64 %62, 72057594037927936
  %64 = getelementptr i8, i8 addrspace(1)* null, i64 %63
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  br label %68
65:
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %x.4
  store i8 addrspace(1)* %66, i8 addrspace(1)** %x.6
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %x.6
  call void @_Bio__println(i8 addrspace(1)* %67)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  br label %68
68:
  br label %69
69:
  br label %70
70:
  ret void
71:
  %72 = load i64, i64* %13
  call void @_bal_panic(i64 %72)
  unreachable
73:
  call void @_bal_panic(i64 2308)
  unreachable
74:
  %75 = extractvalue {i64, i1} %28, 0
  store i64 %75, i64* %3
  %76 = load i64, i64* %3
  %77 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %76)
  call void @_Bio__println(i8 addrspace(1)* %77)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  br label %70
78:
  store i64 2817, i64* %13
  br label %71
}
