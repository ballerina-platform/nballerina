@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %1 = alloca i1
  %x.1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %n = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %32, label %11
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17)
  store i8 addrspace(1)* %12, i8 addrspace(1)** %x
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %14 = addrspacecast i8 addrspace(1)* %13 to i8*
  %15 = ptrtoint i8* %14 to i64
  %16 = and i64 %15, 2233785415175766016
  %17 = icmp eq i64 %16, 504403158265495552
  store i1 %17, i1* %1
  %18 = load i1, i1* %1
  br i1 %18, label %19, label %25
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %21 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %20)
  store i64 %21, i64* %x.1
  %22 = load i64, i64* %x.1
  %23 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %22, i64 1)
  %24 = extractvalue {i64, i1} %23, 1
  br i1 %24, label %38, label %34
25:
  %26 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %x
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %28 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %27)
  %29 = extractvalue {i8 addrspace(1)*, i1} %28, 1
  br i1 %29, label %47, label %40
30:
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = extractvalue {i64, i1} %23, 0
  store i64 %35, i64* %2
  %36 = load i64, i64* %2, !dbg !8
  %37 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %36), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  br label %25
38:
  %39 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %39, i8 addrspace(1)** %7
  br label %30
40:
  %41 = extractvalue {i8 addrspace(1)*, i1} %28, 0
  store i8 addrspace(1)* %41, i8 addrspace(1)** %4
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %43 = addrspacecast i8 addrspace(1)* %42 to i8*
  %44 = ptrtoint i8* %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = icmp eq i64 %45, 504403158265495552
  br i1 %46, label %49, label %54
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %7
  br label %30
49:
  %50 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %42)
  store i64 %50, i64* %5
  %51 = load i64, i64* %5
  store i64 %51, i64* %n
  %52 = load i64, i64* %n, !dbg !9
  %53 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %52), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  ret void
54:
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 3075), !dbg !7
  store i8 addrspace(1)* %55, i8 addrspace(1)** %7
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-type/2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 8, scope: !5)
!9 = !DILocation(line: 13, column: 4, scope: !5)
