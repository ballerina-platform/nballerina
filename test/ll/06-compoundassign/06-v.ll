@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8
  %11 = load i8*, i8** @_bal_stack_guard
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %29, label %13
13:
  store i64 100, i64* %x
  %14 = load i64, i64* %x
  %15 = and i64 63, 4
  %16 = ashr i64 %14, %15
  store i64 %16, i64* %1
  %17 = load i64, i64* %x
  %18 = load i64, i64* %1
  %19 = and i64 63, %18
  %20 = ashr i64 %17, %19
  store i64 %20, i64* %2
  %21 = load i64, i64* %2
  store i64 %21, i64* %x
  %22 = load i64, i64* %x, !dbg !8
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  %24 = load i64, i64* %x
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %24, i64 99)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %40, label %31
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  call void @_bal_panic(i8 addrspace(1)* %28)
  unreachable
29:
  %30 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %30)
  unreachable
31:
  %32 = extractvalue {i64, i1} %25, 0
  store i64 %32, i64* %4
  %33 = load i64, i64* %4
  store i64 %33, i64* %x
  %34 = load i64, i64* %x, !dbg !9
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !9
  %36 = load i64, i64* %x
  %37 = load i64, i64* %x
  %38 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %36, i64 %37)
  %39 = extractvalue {i64, i1} %38, 1
  br i1 %39, label %48, label %42
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %9
  br label %27
42:
  %43 = extractvalue {i64, i1} %38, 0
  store i64 %43, i64* %6
  %44 = load i64, i64* %x
  %45 = load i64, i64* %6
  %46 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %44, i64 %45)
  %47 = extractvalue {i64, i1} %46, 1
  br i1 %47, label %55, label %50
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %9
  br label %27
50:
  %51 = extractvalue {i64, i1} %46, 0
  store i64 %51, i64* %7
  %52 = load i64, i64* %7
  store i64 %52, i64* %x
  %53 = load i64, i64* %x, !dbg !10
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  ret void
55:
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 2561), !dbg !7
  store i8 addrspace(1)* %56, i8 addrspace(1)** %9
  br label %27
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-compoundassign/06-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 11, column: 4, scope: !5)
