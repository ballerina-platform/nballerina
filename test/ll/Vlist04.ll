@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %v = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %39, label %13
13:
  %14 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %15 = bitcast i8 addrspace(1)* %14 to [3 x i8 addrspace(1)*] addrspace(1)*
  %16 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 0
  store i8 addrspace(1)* null, i8 addrspace(1)* addrspace(1)* %16
  %17 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1234567890123456789)
  %18 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 1
  store i8 addrspace(1)* %17, i8 addrspace(1)* addrspace(1)* %18
  %19 = zext i1 1 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20
  %22 = getelementptr inbounds [3 x i8 addrspace(1)*], [3 x i8 addrspace(1)*] addrspace(1)* %15, i64 0, i64 2
  store i8 addrspace(1)* %21, i8 addrspace(1)* addrspace(1)* %22
  %23 = bitcast [3 x i8 addrspace(1)*] addrspace(1)* %15 to [0 x i8 addrspace(1)*] addrspace(1)*
  %24 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %25 = bitcast i8 addrspace(1)* %24 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %26
  %27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %27
  %28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %25, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %23, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %28
  %29 = getelementptr i8, i8 addrspace(1)* %24, i64 1297036692682702848
  store i8 addrspace(1)* %29, i8 addrspace(1)** %1
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %30, i8 addrspace(1)** %v
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %32 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %31, i64 72057594037927935)
  %33 = bitcast i8 addrspace(1)* %32 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %34 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 0
  %35 = load i64, i64 addrspace(1)* %34, align 8
  %36 = icmp ult i64 2, %35
  br i1 %36, label %40, label %52
37:
  %38 = load i64, i64* %9
  call void @_bal_panic(i64 %38)
  unreachable
39:
  call void @_bal_panic(i64 516)
  unreachable
40:
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %33, i64 0, i32 2
  %42 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %41, align 8
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 2
  %44 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %43, align 8
  store i8 addrspace(1)* %44, i8 addrspace(1)** %2
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %47 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %46, i64 72057594037927935)
  %48 = bitcast i8 addrspace(1)* %47 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %49 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 0
  %50 = load i64, i64 addrspace(1)* %49, align 8
  %51 = icmp ult i64 1, %50
  br i1 %51, label %53, label %65
52:
  store i64 1029, i64* %9
  br label %37
53:
  %54 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %48, i64 0, i32 2
  %55 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %54, align 8
  %56 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %55, i64 0, i64 1
  %57 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %56, align 8
  store i8 addrspace(1)* %57, i8 addrspace(1)** %4
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %58)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %60 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %59, i64 72057594037927935)
  %61 = bitcast i8 addrspace(1)* %60 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %62 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 0
  %63 = load i64, i64 addrspace(1)* %62, align 8
  %64 = icmp ult i64 0, %63
  br i1 %64, label %66, label %83
65:
  store i64 1285, i64* %9
  br label %37
66:
  %67 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %61, i64 0, i32 2
  %68 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %67, align 8
  %69 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %68, i64 0, i64 0
  %70 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %69, align 8
  store i8 addrspace(1)* %70, i8 addrspace(1)** %6
  %71 = call i8 addrspace(1)* @_bal_alloc(i64 8)
  %72 = bitcast i8 addrspace(1)* %71 to [1 x i8 addrspace(1)*] addrspace(1)*
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  %74 = getelementptr inbounds [1 x i8 addrspace(1)*], [1 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 0
  store i8 addrspace(1)* %73, i8 addrspace(1)* addrspace(1)* %74
  %75 = bitcast [1 x i8 addrspace(1)*] addrspace(1)* %72 to [0 x i8 addrspace(1)*] addrspace(1)*
  %76 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %77 = bitcast i8 addrspace(1)* %76 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %78 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 0
  store i64 1, i64 addrspace(1)* %78
  %79 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 1
  store i64 1, i64 addrspace(1)* %79
  %80 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %77, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %75, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %80
  %81 = getelementptr i8, i8 addrspace(1)* %76, i64 1297036692682702848
  store i8 addrspace(1)* %81, i8 addrspace(1)** %7
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_Bio__println(i8 addrspace(1)* %82)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  ret void
83:
  store i64 1541, i64* %9
  br label %37
}
