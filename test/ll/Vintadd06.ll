@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %24, label %19
19:
  %20 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 8, i64 5)
  %21 = extractvalue {i64, i1} %20, 1
  br i1 %21, label %30, label %25
22:
  %23 = load i64, i64* %15
  call void @_bal_panic(i64 %23)
  unreachable
24:
  call void @_bal_panic(i64 772)
  unreachable
25:
  %26 = extractvalue {i64, i1} %20, 0
  store i64 %26, i64* %1
  %27 = load i64, i64* %1
  %28 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %27, i64 11)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %37, label %31
30:
  store i64 1025, i64* %15
  br label %22
31:
  %32 = extractvalue {i64, i1} %28, 0
  store i64 %32, i64* %2
  %33 = load i64, i64* %2
  %34 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %33)
  call void @_Bio__println(i8 addrspace(1)* %34)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %35 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 8, i64 11)
  %36 = extractvalue {i64, i1} %35, 1
  br i1 %36, label %43, label %38
37:
  store i64 1025, i64* %15
  br label %22
38:
  %39 = extractvalue {i64, i1} %35, 0
  store i64 %39, i64* %4
  %40 = load i64, i64* %4
  %41 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %40, i64 5)
  %42 = extractvalue {i64, i1} %41, 1
  br i1 %42, label %50, label %44
43:
  store i64 1281, i64* %15
  br label %22
44:
  %45 = extractvalue {i64, i1} %41, 0
  store i64 %45, i64* %5
  %46 = load i64, i64* %5
  %47 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %46)
  call void @_Bio__println(i8 addrspace(1)* %47)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %48 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 3, i64 5)
  %49 = extractvalue {i64, i1} %48, 1
  br i1 %49, label %56, label %51
50:
  store i64 1281, i64* %15
  br label %22
51:
  %52 = extractvalue {i64, i1} %48, 0
  store i64 %52, i64* %7
  %53 = load i64, i64* %7
  %54 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %53, i64 5)
  %55 = extractvalue {i64, i1} %54, 1
  br i1 %55, label %62, label %57
56:
  store i64 1537, i64* %15
  br label %22
57:
  %58 = extractvalue {i64, i1} %54, 0
  store i64 %58, i64* %8
  %59 = load i64, i64* %8
  %60 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %59, i64 9)
  %61 = extractvalue {i64, i1} %60, 1
  br i1 %61, label %69, label %63
62:
  store i64 1537, i64* %15
  br label %22
63:
  %64 = extractvalue {i64, i1} %60, 0
  store i64 %64, i64* %9
  %65 = load i64, i64* %9
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %65)
  call void @_Bio__println(i8 addrspace(1)* %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %67 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 3, i64 5)
  %68 = extractvalue {i64, i1} %67, 1
  br i1 %68, label %75, label %70
69:
  store i64 1537, i64* %15
  br label %22
70:
  %71 = extractvalue {i64, i1} %67, 0
  store i64 %71, i64* %11
  %72 = load i64, i64* %11
  %73 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %72, i64 9)
  %74 = extractvalue {i64, i1} %73, 1
  br i1 %74, label %81, label %76
75:
  store i64 1793, i64* %15
  br label %22
76:
  %77 = extractvalue {i64, i1} %73, 0
  store i64 %77, i64* %12
  %78 = load i64, i64* %12
  %79 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %78, i64 4)
  %80 = extractvalue {i64, i1} %79, 1
  br i1 %80, label %86, label %82
81:
  store i64 1793, i64* %15
  br label %22
82:
  %83 = extractvalue {i64, i1} %79, 0
  store i64 %83, i64* %13
  %84 = load i64, i64* %13
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %84)
  call void @_Bio__println(i8 addrspace(1)* %85)
  store i8 addrspace(1)* null, i8 addrspace(1)** %14
  ret void
86:
  store i64 1793, i64* %15
  br label %22
}
