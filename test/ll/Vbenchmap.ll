@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct(i64)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_Bint__toHexString(i64)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %m = alloca i8 addrspace(1)*
  %sum = alloca i64
  %count = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %x = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %i.1 = alloca i64
  %6 = alloca i1
  %7 = alloca i64
  %x.1 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %50, label %17
17:
  %18 = call i8 addrspace(1)* @_bal_mapping_construct(i64 0)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %1
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %19, i8 addrspace(1)** %m
  store i64 0, i64* %sum
  store i64 10000000, i64* %count
  store i64 0, i64* %i
  br label %20
20:
  %21 = load i64, i64* %i
  %22 = load i64, i64* %count
  %23 = icmp slt i64 %21, %22
  store i1 %23, i1* %2
  %24 = load i1, i1* %2
  br i1 %24, label %26, label %25
25:
  store i64 0, i64* %i.1
  br label %33
26:
  %27 = load i64, i64* %i
  %28 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 48879, i64 %27)
  %29 = extractvalue {i64, i1} %28, 1
  br i1 %29, label %58, label %51
30:
  %31 = load i64, i64* %i
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %i
  br label %20
33:
  %34 = load i64, i64* %i.1
  %35 = load i64, i64* %count
  %36 = icmp slt i64 %34, %35
  store i1 %36, i1* %6
  %37 = load i1, i1* %6
  br i1 %37, label %41, label %38
38:
  %39 = load i64, i64* %sum
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39)
  call void @_Bio__println(i8 addrspace(1)* %40)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
41:
  %42 = load i64, i64* %i.1
  %43 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 48879, i64 %42)
  %44 = extractvalue {i64, i1} %43, 1
  br i1 %44, label %87, label %74
45:
  %46 = load i64, i64* %i.1
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %i.1
  br label %33
48:
  %49 = load i64, i64* %13
  call void @_bal_panic(i64 %49)
  unreachable
50:
  call void @_bal_panic(i64 772)
  unreachable
51:
  %52 = extractvalue {i64, i1} %28, 0
  store i64 %52, i64* %3
  %53 = load i64, i64* %3
  store i64 %53, i64* %x
  %54 = load i64, i64* %sum
  %55 = load i64, i64* %i
  %56 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %54, i64 %55)
  %57 = extractvalue {i64, i1} %56, 1
  br i1 %57, label %70, label %59
58:
  store i64 2049, i64* %13
  br label %48
59:
  %60 = extractvalue {i64, i1} %56, 0
  store i64 %60, i64* %4
  %61 = load i64, i64* %4
  store i64 %61, i64* %sum
  %62 = load i64, i64* %x
  %63 = call i8 addrspace(1)* @_Bint__toHexString(i64 %62)
  store i8 addrspace(1)* %63, i8 addrspace(1)** %5
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %66 = load i64, i64* %i
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66)
  %68 = call i64 @_bal_mapping_set(i8 addrspace(1)* %64, i8 addrspace(1)* %65, i8 addrspace(1)* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %71, label %72
70:
  store i64 2305, i64* %13
  br label %48
71:
  br label %30
72:
  %73 = or i64 %68, 2560
  store i64 %73, i64* %13
  br label %48
74:
  %75 = extractvalue {i64, i1} %43, 0
  store i64 %75, i64* %7
  %76 = load i64, i64* %7
  store i64 %76, i64* %x.1
  %77 = load i64, i64* %x.1
  %78 = call i8 addrspace(1)* @_Bint__toHexString(i64 %77)
  store i8 addrspace(1)* %78, i8 addrspace(1)** %8
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %m
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  %81 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %79, i8 addrspace(1)* %80)
  store i8 addrspace(1)* %81, i8 addrspace(1)** %9
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %83 = addrspacecast i8 addrspace(1)* %82 to i8*
  %84 = ptrtoint i8* %83 to i64
  %85 = and i64 %84, 2233785415175766016
  %86 = icmp eq i64 %85, 504403158265495552
  br i1 %86, label %88, label %94
87:
  store i64 3329, i64* %13
  br label %48
88:
  %89 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %82)
  store i64 %89, i64* %10
  %90 = load i64, i64* %sum
  %91 = load i64, i64* %10
  %92 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %90, i64 %91)
  %93 = extractvalue {i64, i1} %92, 1
  br i1 %93, label %98, label %95
94:
  store i64 3587, i64* %13
  br label %48
95:
  %96 = extractvalue {i64, i1} %92, 0
  store i64 %96, i64* %11
  %97 = load i64, i64* %11
  store i64 %97, i64* %sum
  br label %45
98:
  store i64 3585, i64* %13
  br label %48
}
