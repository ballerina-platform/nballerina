@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i64
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8
  %12 = load i8*, i8** @_bal_stack_guard
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %29, label %14
14:
  %15 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %16 = bitcast i8 addrspace(1)* %15 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %17 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %17
  %18 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %18
  %19 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %19
  %20 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %16, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %20
  %21 = getelementptr i8, i8 addrspace(1)* %15, i64 1297036692682702848
  store i8 addrspace(1)* %21, i8 addrspace(1)** %1
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %22, i8 addrspace(1)** %x
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %24 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  %25 = call i64 @_bal_list_set(i8 addrspace(1)* %23, i64 1, i8 addrspace(1)* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %38
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %33 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %32, i64 72057594037927935)
  %34 = bitcast i8 addrspace(1)* %33 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %35 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 1
  %36 = load i64, i64 addrspace(1)* %35, align 8
  %37 = icmp ult i64 0, %36
  br i1 %37, label %41, label %55
38:
  %39 = or i64 %25, 1280
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 %39)
  store i8 addrspace(1)* %40, i8 addrspace(1)** %10
  br label %27
41:
  %42 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %34, i64 0, i32 3
  %43 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %42, align 8
  %44 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %43, i64 0, i64 0
  %45 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %44, align 8
  %46 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %45)
  store i64 %46, i64* %2
  %47 = load i64, i64* %2
  %48 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %47)
  call void @_Bio__println(i8 addrspace(1)* %48)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %50 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %49, i64 72057594037927935)
  %51 = bitcast i8 addrspace(1)* %50 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %52 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 1
  %53 = load i64, i64 addrspace(1)* %52, align 8
  %54 = icmp ult i64 1, %53
  br i1 %54, label %57, label %69
55:
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 1541)
  store i8 addrspace(1)* %56, i8 addrspace(1)** %10
  br label %27
57:
  %58 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %51, i64 0, i32 3
  %59 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %58, align 8
  %60 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %59, i64 0, i64 1
  %61 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %60, align 8
  %62 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %61)
  store i64 %62, i64* %4
  %63 = load i64, i64* %4
  %64 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %63)
  call void @_Bio__println(i8 addrspace(1)* %64)
  store i8 addrspace(1)* null, i8 addrspace(1)** %5
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %66 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 42)
  %67 = call i64 @_bal_list_set(i8 addrspace(1)* %65, i64 3, i8 addrspace(1)* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %71, label %78
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %10
  br label %27
71:
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %73 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %72, i64 72057594037927935)
  %74 = bitcast i8 addrspace(1)* %73 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %75 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 1
  %76 = load i64, i64 addrspace(1)* %75, align 8
  %77 = icmp ult i64 2, %76
  br i1 %77, label %81, label %95
78:
  %79 = or i64 %67, 2048
  %80 = call i8 addrspace(1)* @_bal_panic_construct(i64 %79)
  store i8 addrspace(1)* %80, i8 addrspace(1)** %10
  br label %27
81:
  %82 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %74, i64 0, i32 3
  %83 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %82, align 8
  %84 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %83, i64 0, i64 2
  %85 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %84, align 8
  %86 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %85)
  store i64 %86, i64* %6
  %87 = load i64, i64* %6
  %88 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %87)
  call void @_Bio__println(i8 addrspace(1)* %88)
  store i8 addrspace(1)* null, i8 addrspace(1)** %7
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %90 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %89, i64 72057594037927935)
  %91 = bitcast i8 addrspace(1)* %90 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %92 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 1
  %93 = load i64, i64 addrspace(1)* %92, align 8
  %94 = icmp ult i64 3, %93
  br i1 %94, label %97, label %105
95:
  %96 = call i8 addrspace(1)* @_bal_panic_construct(i64 2309)
  store i8 addrspace(1)* %96, i8 addrspace(1)** %10
  br label %27
97:
  %98 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %91, i64 0, i32 3
  %99 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %98, align 8
  %100 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %99, i64 0, i64 3
  %101 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %100, align 8
  %102 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %101)
  store i64 %102, i64* %8
  %103 = load i64, i64* %8
  %104 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %103)
  call void @_Bio__println(i8 addrspace(1)* %104)
  store i8 addrspace(1)* null, i8 addrspace(1)** %9
  ret void
105:
  %106 = call i8 addrspace(1)* @_bal_panic_construct(i64 2565)
  store i8 addrspace(1)* %106, i8 addrspace(1)** %10
  br label %27
}
