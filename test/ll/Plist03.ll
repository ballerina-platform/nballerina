@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %val = alloca i64
  %i = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i1
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
  store i1 %21, i1* %4
  %22 = load i1, i1* %4
  br i1 %22, label %29, label %23
23:
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %25 = load i64, i64* %val
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0)
  %27 = call i64 @_bal_list_set(i8 addrspace(1)* %24, i64 %25, i8 addrspace(1)* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %44
29:
  %30 = load i64, i64* %val
  %31 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %30, i64 2)
  %32 = extractvalue {i64, i1} %31, 1
  br i1 %32, label %59, label %53
33:
  %34 = load i64, i64* %7
  call void @_bal_panic(i64 %34)
  unreachable
35:
  call void @_bal_panic(i64 516)
  unreachable
36:
  %37 = load i64, i64* %val
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %39 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %38, i64 72057594037927935)
  %40 = bitcast i8 addrspace(1)* %39 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %41 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 0
  %42 = load i64, i64 addrspace(1)* %41, align 8
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %46, label %52
44:
  %45 = or i64 %27, 2816
  store i64 %45, i64* %7
  br label %33
46:
  %47 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %40, i64 0, i32 2
  %48 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %47, align 8
  %49 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %48, i64 0, i64 %37
  %50 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %49, align 8
  store i8 addrspace(1)* %50, i8 addrspace(1)** %5
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_Bio__println(i8 addrspace(1)* %51)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  ret void
52:
  store i64 3077, i64* %7
  br label %33
53:
  %54 = extractvalue {i64, i1} %31, 0
  store i64 %54, i64* %2
  %55 = load i64, i64* %2
  store i64 %55, i64* %val
  %56 = load i64, i64* %i
  %57 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %56, i64 1)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %63, label %60
59:
  store i64 2049, i64* %7
  br label %33
60:
  %61 = extractvalue {i64, i1} %57, 0
  store i64 %61, i64* %3
  %62 = load i64, i64* %3
  store i64 %62, i64* %i
  br label %19
63:
  store i64 2305, i64* %7
  br label %33
}
