@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %33, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %12 = bitcast i8 addrspace(1)* %11 to [2 x i8 addrspace(1)*] addrspace(1)*
  %13 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 3)
  %14 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 0
  store i8 addrspace(1)* %13, i8 addrspace(1)* addrspace(1)* %14
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 7)
  %16 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %12, i64 0, i64 1
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %12 to [0 x i8 addrspace(1)*] addrspace(1)*
  %18 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %19 = bitcast i8 addrspace(1)* %18 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %20 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 0
  store i64 2, i64 addrspace(1)* %20
  %21 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %21
  %22 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %19, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %17, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %22
  %23 = getelementptr i8, i8 addrspace(1)* %18, i64 1297036692682702848
  store i8 addrspace(1)* %23, i8 addrspace(1)** %1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %24, i8 addrspace(1)** %v
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %26 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %25, i64 72057594037927935)
  %27 = bitcast i8 addrspace(1)* %26 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %28 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 0
  %29 = load i64, i64 addrspace(1)* %28, align 8
  %30 = icmp ult i64 0, %29
  br i1 %30, label %35, label %47
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %27, i64 0, i32 2
  %37 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %36, align 8
  %38 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %37, i64 0, i64 0
  %39 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %38, align 8
  %40 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %39)
  store i64 %40, i64* %2
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %42 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %41, i64 72057594037927935)
  %43 = bitcast i8 addrspace(1)* %42 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %44 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %43, i64 0, i32 0
  %45 = load i64, i64 addrspace(1)* %44, align 8
  %46 = icmp ult i64 1, %45
  br i1 %46, label %49, label %59
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %6
  br label %31
49:
  %50 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %43, i64 0, i32 2
  %51 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %50, align 8
  %52 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %51, i64 0, i64 1
  %53 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %52, align 8
  %54 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %53)
  store i64 %54, i64* %3
  %55 = load i64, i64* %2
  %56 = load i64, i64* %3
  %57 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %55, i64 %56)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %65, label %61
59:
  %60 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %6
  br label %31
61:
  %62 = extractvalue {i64, i1} %57, 0
  store i64 %62, i64* %4
  %63 = load i64, i64* %4
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63)
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  ret void
65:
  %66 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281)
  store i8 addrspace(1)* %66, i8 addrspace(1)** %6
  br label %31
}
