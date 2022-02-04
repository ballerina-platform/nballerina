@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare double @_bal_tagged_to_float(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %y = alloca i8 addrspace(1)*
  %z = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i64
  %2 = alloca i1
  %3 = alloca i1
  %x.2 = alloca i64
  %y.1 = alloca double
  %4 = alloca i1
  %5 = alloca i1
  %x.3 = alloca i64
  %y.2 = alloca double
  %z.1 = alloca i64
  %_ = alloca i64
  %_.1 = alloca double
  %_.2 = alloca i64
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %60, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %x
  %11 = zext i1 1 to i64
  %12 = or i64 %11, 72057594037927936
  %13 = getelementptr i8, i8 addrspace(1)* null, i64 %12
  store i8 addrspace(1)* %13, i8 addrspace(1)** %y
  %14 = call i8 addrspace(1)* @_bal_float_to_tagged(double 0.2)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %z
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %16 = addrspacecast i8 addrspace(1)* %15 to i8*
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, 2233785415175766016
  %19 = icmp eq i64 %18, 504403158265495552
  store i1 %19, i1* %1
  %20 = load i1, i1* %1
  br i1 %20, label %21, label %30
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %23 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %22)
  store i64 %23, i64* %x.1
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %25 = addrspacecast i8 addrspace(1)* %24 to i8*
  %26 = ptrtoint i8* %25 to i64
  %27 = and i64 %26, 2233785415175766016
  %28 = icmp eq i64 %27, 576460752303423488
  store i1 %28, i1* %2
  %29 = load i1, i1* %2
  store i1 %29, i1* %3
  br label %32
30:
  %31 = load i1, i1* %1
  store i1 %31, i1* %3
  br label %32
32:
  %33 = load i1, i1* %3
  br i1 %33, label %34, label %45
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %36 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %35)
  store i64 %36, i64* %x.2
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %38 = call double @_bal_tagged_to_float(i8 addrspace(1)* %37)
  store double %38, double* %y.1
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %40 = addrspacecast i8 addrspace(1)* %39 to i8*
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 2233785415175766016
  %43 = icmp eq i64 %42, 504403158265495552
  store i1 %43, i1* %4
  %44 = load i1, i1* %4
  store i1 %44, i1* %5
  br label %47
45:
  %46 = load i1, i1* %3
  store i1 %46, i1* %5
  br label %47
47:
  %48 = load i1, i1* %5
  br i1 %48, label %49, label %59
49:
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %51 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %50)
  store i64 %51, i64* %x.3
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %y
  %53 = call double @_bal_tagged_to_float(i8 addrspace(1)* %52)
  store double %53, double* %y.2
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %z
  %55 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %54)
  store i64 %55, i64* %z.1
  %56 = load i64, i64* %x.3
  store i64 %56, i64* %_
  %57 = load double, double* %y.2
  store double %57, double* %_.1
  %58 = load i64, i64* %z.1
  store i64 %58, i64* %_.2
  br label %59
59:
  ret void
60:
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 260), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %61)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/13-logical/17-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 1, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
