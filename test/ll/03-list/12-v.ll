@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %i = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %39, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %14 = bitcast i8 addrspace(1)* %13 to [3 x i8 addrspace(1)*] addrspace(1)*
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 0
  store i8 addrspace(1)* %15, i8 addrspace(1)* addrspace(1)* %16
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 1
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 -11)
  %20 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %14, i64 0, i64 2
  store i8 addrspace(1)* %19, i8 addrspace(1)* addrspace(1)* %20
  %21 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %14 to [0 x i8 addrspace(1)*] addrspace(1)*
  %22 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %23 = bitcast i8 addrspace(1)* %22 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %24 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 2
  store i64 3, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %21, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %27
  %28 = getelementptr i8, i8 addrspace(1)* %22, i64 1297036692682702848
  store i8 addrspace(1)* %28, i8 addrspace(1)** %1
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %29, i8 addrspace(1)** %v
  store i64 0, i64* %i
  %30 = load i64, i64* %i
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 72057594037927935)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 1
  %35 = load i64, i64 addrspace(1)* %34, align 8
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %41, label %54
37:
  %38 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %40)
  unreachable
41:
  %42 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 3
  %43 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %42, align 8
  %44 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %43, i64 0, i64 %30
  %45 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %44, align 8
  store i8 addrspace(1)* %45, i8 addrspace(1)** %2
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  store i64 1, i64* %i
  %47 = load i64, i64* %i
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %49 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %48, i64 72057594037927935)
  %50 = bitcast i8 addrspace(1)* %49 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %51 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 1
  %52 = load i64, i64 addrspace(1)* %51, align 8
  %53 = icmp ult i64 %47, %52
  br i1 %53, label %56, label %69
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %8
  br label %37
56:
  %57 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %50, i64 0, i32 3
  %58 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %57, align 8
  %59 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %58, i64 0, i64 %47
  %60 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %59, align 8
  store i8 addrspace(1)* %60, i8 addrspace(1)** %4
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %61)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  store i64 2, i64* %i
  %62 = load i64, i64* %i
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %64 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %63, i64 72057594037927935)
  %65 = bitcast i8 addrspace(1)* %64 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %66 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 1
  %67 = load i64, i64 addrspace(1)* %66, align 8
  %68 = icmp ult i64 %62, %67
  br i1 %68, label %71, label %77
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 2053)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %8
  br label %37
71:
  %72 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %65, i64 0, i32 3
  %73 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %72, align 8
  %74 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %73, i64 0, i64 %62
  %75 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %74, align 8
  store i8 addrspace(1)* %75, i8 addrspace(1)** %6
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_Bio__println(i8 addrspace(1)* %76)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
77:
  %78 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565)
  store i8 addrspace(1)* %78, i8 addrspace(1)** %8
  br label %37
}
