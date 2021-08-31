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
  br i1 %11, label %38, label %12
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
  %22 = call i8 addrspace(1)* @_bal_alloc(i64 24)
  %23 = bitcast i8 addrspace(1)* %22 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %24 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 0
  store i64 3, i64 addrspace(1)* %24
  %25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 1
  store i64 3, i64 addrspace(1)* %25
  %26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23, i64 0, i32 2
  store [0 x i8 addrspace(1)*] addrspace(1)* %21, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %26
  %27 = getelementptr i8, i8 addrspace(1)* %22, i64 1297036692682702848
  store i8 addrspace(1)* %27, i8 addrspace(1)** %1
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %28, i8 addrspace(1)** %v
  store i64 0, i64* %i
  %29 = load i64, i64* %i
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %31 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %30, i64 72057594037927935)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 0
  %34 = load i64, i64 addrspace(1)* %33, align 8
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %40, label %53
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %37)
  unreachable
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 516)
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 2
  %42 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %41, align 8
  %43 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %42, i64 0, i64 %29
  %44 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %43, align 8
  store i8 addrspace(1)* %44, i8 addrspace(1)** %2
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  call void @_Bio__println(i8 addrspace(1)* %45)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  store i64 1, i64* %i
  %46 = load i64, i64* %i
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %48 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %47, i64 72057594037927935)
  %49 = bitcast i8 addrspace(1)* %48 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %50 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 0
  %51 = load i64, i64 addrspace(1)* %50, align 8
  %52 = icmp ult i64 %46, %51
  br i1 %52, label %55, label %68
53:
  %54 = call i8 addrspace(1)* @_bal_panic_construct(i64 1285)
  store i8 addrspace(1)* %54, i8 addrspace(1)** %8
  br label %36
55:
  %56 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %49, i64 0, i32 2
  %57 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %56, align 8
  %58 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %57, i64 0, i64 %46
  %59 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %58, align 8
  store i8 addrspace(1)* %59, i8 addrspace(1)** %4
  %60 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_Bio__println(i8 addrspace(1)* %60)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  store i64 2, i64* %i
  %61 = load i64, i64* %i
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %63 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %62, i64 72057594037927935)
  %64 = bitcast i8 addrspace(1)* %63 to {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %65 = getelementptr {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 0
  %66 = load i64, i64 addrspace(1)* %65, align 8
  %67 = icmp ult i64 %61, %66
  br i1 %67, label %70, label %76
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797)
  store i8 addrspace(1)* %69, i8 addrspace(1)** %8
  br label %36
70:
  %71 = getelementptr inbounds {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %64, i64 0, i32 2
  %72 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %71, align 8
  %73 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %72, i64 0, i64 %61
  %74 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %73, align 8
  store i8 addrspace(1)* %74, i8 addrspace(1)** %6
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_Bio__println(i8 addrspace(1)* %75)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  ret void
76:
  %77 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309)
  store i8 addrspace(1)* %77, i8 addrspace(1)** %8
  br label %36
}
