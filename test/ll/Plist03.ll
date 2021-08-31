@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %val = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %35, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %13 = bitcast i8 addrspace(1)* %12 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %14 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 0
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %15
  %16 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %13, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %16
  %17 = getelementptr i8, i8 addrspace(1)* %12, i64 1297036692682702848
  store i8 addrspace(1)* %17, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %v
  store i64 1, i64* %val
  store i64 0, i64* %i
  br label %19
19:
  %20 = load i64, i64* %i
  %21 = icmp slt i64 %20, 62
  store i1 %21, i1* %2
  %22 = load i1, i1* %2
  br i1 %22, label %23, label %27
23:
  %24 = load i64, i64* %val
  %25 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %24, i64 2)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %43, label %37
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = load i64, i64* %val
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %31 = call i64 @_bal_list_set(i8 addrspace(1)* %28, i64 %29, i8 addrspace(1)* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %50, label %58
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = extractvalue {i64, i1} %25, 0
  store i64 %38, i64* %3
  %39 = load i64, i64* %3
  store i64 %39, i64* %val
  %40 = load i64, i64* %i
  %41 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %40, i64 1)
  %42 = extractvalue {i64, i1} %41, 1
  br i1 %42, label %48, label %45
43:
  %44 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049)
  store i8 addrspace(1)* %44, i8 addrspace(1)** %7
  br label %33
45:
  %46 = extractvalue {i64, i1} %41, 0
  store i64 %46, i64* %4
  %47 = load i64, i64* %4
  store i64 %47, i64* %i
  br label %19
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %7
  br label %33
50:
  %51 = load i64, i64* %val
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %53 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %52, i64 72057594037927935)
  %54 = bitcast i8 addrspace(1)* %53 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %55 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %54, i64 0, i32 0
  %56 = load i64, i64 addrspace(1)* %55, align 8
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %61, label %67
58:
  %59 = or i64 %31, 2816
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 %59)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %7
  br label %33
61:
  %62 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %54, i64 0, i32 2
  %63 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %62, align 8
  %64 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %63, i64 0, i64 %51
  %65 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %64, align 8
  store i8 addrspace(1)* %65, i8 addrspace(1)** %5
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %66)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
67:
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 3077)
  store i8 addrspace(1)* %68, i8 addrspace(1)** %7
  br label %33
}
