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
  %x.2 = alloca i8 addrspace(1)*
  %n = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8
  %9 = load i8*, i8** @_bal_stack_guard
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %33, label %11
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
  br i1 %24, label %39, label %35
25:
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  store i8 addrspace(1)* %26, i8 addrspace(1)** %x.2
  %27 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21)
  store i8 addrspace(1)* %27, i8 addrspace(1)** %x
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %29 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %28)
  %30 = extractvalue {i8 addrspace(1)*, i1} %29, 1
  br i1 %30, label %48, label %41
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
33:
  %34 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %34)
  unreachable
35:
  %36 = extractvalue {i64, i1} %23, 0
  store i64 %36, i64* %2
  %37 = load i64, i64* %2, !dbg !8
  %38 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %37), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !8
  br label %25
39:
  %40 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %40, i8 addrspace(1)** %7
  br label %31
41:
  %42 = extractvalue {i8 addrspace(1)*, i1} %29, 0
  store i8 addrspace(1)* %42, i8 addrspace(1)** %4
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %44 = addrspacecast i8 addrspace(1)* %43 to i8*
  %45 = ptrtoint i8* %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 504403158265495552
  br i1 %47, label %50, label %55
48:
  %49 = call i8 addrspace(1)* @_bal_panic_construct(i64 3073), !dbg !7
  store i8 addrspace(1)* %49, i8 addrspace(1)** %7
  br label %31
50:
  %51 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %43)
  store i64 %51, i64* %5
  %52 = load i64, i64* %5
  store i64 %52, i64* %n
  %53 = load i64, i64* %n, !dbg !9
  %54 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %53), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %54), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  ret void
55:
  %56 = call i8 addrspace(1)* @_bal_panic_construct(i64 3075), !dbg !7
  store i8 addrspace(1)* %56, i8 addrspace(1)** %7
  br label %31
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
