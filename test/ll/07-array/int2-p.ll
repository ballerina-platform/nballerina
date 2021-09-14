@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_alloc(i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %vi = alloca i8 addrspace(1)*
  %va = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %27, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %11 = bitcast i8 addrspace(1)* %10 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %12 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 0
  store i64 128, i64 addrspace(1)* %12
  %13 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 1
  store i64 0, i64 addrspace(1)* %13
  %14 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 2
  store i64 0, i64 addrspace(1)* %14
  %15 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* null, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %15
  %16 = getelementptr i8, i8 addrspace(1)* %10, i64 1297036692682702848
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %vi
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %vi
  store i8 addrspace(1)* %18, i8 addrspace(1)** %va
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %va
  %20 = zext i1 1 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, i8 addrspace(1)* null, i64 %21
  %23 = call i64 @_bal_list_set(i8 addrspace(1)* %19, i64 0, i8 addrspace(1)* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %36
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %26)
  unreachable
27:
  %28 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %vi
  %31 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %30, i64 72057594037927935)
  %32 = bitcast i8 addrspace(1)* %31 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %33 = getelementptr {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 1
  %34 = load i64, i64 addrspace(1)* %33, align 8
  %35 = icmp ult i64 0, %34
  br i1 %35, label %39, label %48
36:
  %37 = or i64 %23, 1536
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 %37)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %5
  br label %25
39:
  %40 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %32, i64 0, i32 3
  %41 = load [0 x i8 addrspace(1)*] addrspace(1)*, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %40, align 8
  %42 = getelementptr inbounds [0 x i8 addrspace(1)*], [0 x i8 addrspace(1)*] addrspace(1)* %41, i64 0, i64 0
  %43 = load i8 addrspace(1)*, i8 addrspace(1)* addrspace(1)* %42, align 8
  %44 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %43)
  store i64 %44, i64* %2
  %45 = load i64, i64* %2
  %46 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %45, i64 1)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %54, label %50
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 1797)
  store i8 addrspace(1)* %49, i8 addrspace(1)** %5
  br label %25
50:
  %51 = extractvalue {i64, i1} %46, 0
  store i64 %51, i64* %3
  %52 = load i64, i64* %3
  %53 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %52)
  call void @_Bio__println(i8 addrspace(1)* %53)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  ret void
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 1793)
  store i8 addrspace(1)* %55, i8 addrspace(1)** %5
  br label %25
}
