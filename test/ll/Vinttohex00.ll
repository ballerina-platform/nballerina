@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 2, [7 x i8] c"2a\00\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_Bint__toHexString(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %i = alloca i64
  %1 = alloca i8 addrspace(1)*
  %s = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8
  %23 = load i8*, i8** @_bal_stack_guard
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %42, label %25
25:
  store i64 42, i64* %i
  %26 = load i64, i64* %i
  %27 = call i8 addrspace(1)* @_Bint__toHexString(i64 %26)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %28, i8 addrspace(1)** %s
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %29)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %31 = call i1 @_bal_eq(i8 addrspace(1)* %30, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i8, [7 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360))
  store i1 %31, i1* %3
  %32 = load i1, i1* %3
  %33 = zext i1 %32 to i64
  %34 = or i64 %33, 72057594037927936
  %35 = getelementptr i8, i8 addrspace(1)* null, i64 %34
  call void @_Bio__println(i8 addrspace(1)* %35)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %36 = call i8 addrspace(1)* @_Bint__toHexString(i64 0)
  store i8 addrspace(1)* %36, i8 addrspace(1)** %5
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %37)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %38 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 1)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %52, label %43
40:
  %41 = load i64, i64* %21
  call void @_bal_panic(i64 %41)
  unreachable
42:
  call void @_bal_panic(i64 772)
  unreachable
43:
  %44 = extractvalue {i64, i1} %38, 0
  store i64 %44, i64* %7
  %45 = load i64, i64* %7
  %46 = call i8 addrspace(1)* @_Bint__toHexString(i64 %45)
  store i8 addrspace(1)* %46, i8 addrspace(1)** %8
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  %48 = call i8 addrspace(1)* @_Bint__toHexString(i64 255)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %10
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_Bio__println(i8 addrspace(1)* %49)
  store i8 addrspace(1)* null, i8 addrspace(1)** %11
  %50 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 170)
  %51 = extractvalue {i64, i1} %50, 1
  br i1 %51, label %62, label %53
52:
  store i64 2561, i64* %21
  br label %40
53:
  %54 = extractvalue {i64, i1} %50, 0
  store i64 %54, i64* %12
  %55 = load i64, i64* %12
  %56 = call i8 addrspace(1)* @_Bint__toHexString(i64 %55)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %13
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  call void @_Bio__println(i8 addrspace(1)* %57)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  %58 = call i8 addrspace(1)* @_Bint__toHexString(i64 9223372036854775807)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %15
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_Bio__println(i8 addrspace(1)* %59)
  store i8 addrspace(1)* null, i8 addrspace(1)** %16
  %60 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 9223372036854775807)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %68, label %63
62:
  store i64 3329, i64* %21
  br label %40
63:
  %64 = extractvalue {i64, i1} %60, 0
  store i64 %64, i64* %17
  %65 = load i64, i64* %17
  %66 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %65, i64 1)
  %67 = extractvalue {i64, i1} %66, 1
  br i1 %67, label %74, label %69
68:
  store i64 4097, i64* %21
  br label %40
69:
  %70 = extractvalue {i64, i1} %66, 0
  store i64 %70, i64* %18
  %71 = load i64, i64* %18
  %72 = call i8 addrspace(1)* @_Bint__toHexString(i64 %71)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %19
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  call void @_Bio__println(i8 addrspace(1)* %73)
  store i8 addrspace(1)* null, i8 addrspace(1)** %20
  ret void
74:
  store i64 4097, i64* %21
  br label %40
}
