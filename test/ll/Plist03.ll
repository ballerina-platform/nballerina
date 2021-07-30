@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  %7 = alloca i64
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
  br i1 %26, label %42, label %36
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %29 = load i64, i64* %val
  %30 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %31 = call i64 @_bal_list_set(i8 addrspace(1)* %28, i64 %29, i8 addrspace(1)* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %47, label %55
33:
  %34 = load i64, i64* %7
  call void @_bal_panic(i64 %34)
  unreachable
35:
  call void @_bal_panic(i64 516)
  unreachable
36:
  %37 = extractvalue {i64, i1} %25, 0
  store i64 %37, i64* %3
  %38 = load i64, i64* %3
  store i64 %38, i64* %val
  %39 = load i64, i64* %i
  %40 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %39, i64 1)
  %41 = extractvalue {i64, i1} %40, 1
  br i1 %41, label %46, label %43
42:
  store i64 2049, i64* %7
  br label %33
43:
  %44 = extractvalue {i64, i1} %40, 0
  store i64 %44, i64* %4
  %45 = load i64, i64* %4
  store i64 %45, i64* %i
  br label %19
46:
  store i64 2305, i64* %7
  br label %33
47:
  %48 = load i64, i64* %val
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 72057594037927935)
  %51 = bitcast i8 addrspace(1)* %50 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %52 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 0
  %53 = load i64, i64 addrspace(1)* %52, align 8
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %57, label %63
55:
  %56 = or i64 %31, 2816
  store i64 %56, i64* %7
  br label %33
57:
  %58 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 2
  %59 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %58, align 8
  %60 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %59, i64 0, i64 %48
  %61 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %60, align 8
  store i8 addrspace(1)* %61, i8 addrspace(1)** %5
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %62)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
63:
  store i64 3077, i64* %7
  br label %33
}
