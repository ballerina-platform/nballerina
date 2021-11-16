@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %v = alloca i8 addrspace(1)*
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8
  %16 = load i8*, i8** @_bal_stack_guard
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %24, label %18
18:
  store i64 1, i64* %x
  %19 = load i64, i64* %x
  %20 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %19, i64 3)
  %21 = extractvalue {i64, i1} %20, 1
  br i1 %21, label %63, label %26
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  call void @_bal_panic(i8 addrspace(1)* %23)
  unreachable
24:
  %25 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %25)
  unreachable
26:
  %27 = extractvalue {i64, i1} %20, 0
  store i64 %27, i64* %1
  %28 = load i64, i64* %1
  %29 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %28)
  store i8 addrspace(1)* %29, i8 addrspace(1)** %v
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %31 = load i64, i64* %x
  %32 = icmp eq i64 %31, 1
  store i1 %32, i1* %3
  %33 = load i1, i1* %3
  %34 = zext i1 %33 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35
  store i8 addrspace(1)* %36, i8 addrspace(1)** %v
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %37), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %38 = load i64, i64* %x
  %39 = icmp sgt i64 %38, 2
  store i1 %39, i1* %5
  %40 = load i1, i1* %5
  %41 = zext i1 %40 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, i8 addrspace(1)* null, i64 %42
  store i8 addrspace(1)* %43, i8 addrspace(1)** %v
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %45 = load i64, i64* %x
  %46 = icmp sgt i64 %45, 2
  store i1 %46, i1* %7
  %47 = load i1, i1* %7
  %48 = xor i1 1, %47
  store i1 %48, i1* %8
  %49 = load i1, i1* %8
  %50 = zext i1 %49 to i64
  %51 = or i64 %50, 72057594037927936
  %52 = getelementptr i8, i8 addrspace(1)* null, i64 %51
  store i8 addrspace(1)* %52, i8 addrspace(1)** %v
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %53), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !11
  %54 = load i64, i64* %x
  %55 = icmp sge i64 %54, 1
  store i1 %55, i1* %10
  %56 = load i1, i1* %10, !dbg !12
  %57 = zext i1 %56 to i64, !dbg !12
  %58 = or i64 %57, 72057594037927936, !dbg !12
  %59 = getelementptr i8, i8 addrspace(1)* null, i64 %58, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %59), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !12
  %60 = load i64, i64* %x
  %61 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %60, i64 2)
  %62 = extractvalue {i64, i1} %61, 1
  br i1 %62, label %69, label %65
63:
  %64 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !7
  store i8 addrspace(1)* %64, i8 addrspace(1)** %14
  br label %22
65:
  %66 = extractvalue {i64, i1} %61, 0
  store i64 %66, i64* %12
  %67 = load i64, i64* %12, !dbg !13
  %68 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %67), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %68), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !13
  ret void
69:
  %70 = call i8 addrspace(1)* @_bal_panic_construct(i64 3585), !dbg !7
  store i8 addrspace(1)* %70, i8 addrspace(1)** %14
  br label %22
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-any/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
!11 = !DILocation(line: 12, column: 4, scope: !5)
!12 = !DILocation(line: 13, column: 4, scope: !5)
!13 = !DILocation(line: 14, column: 4, scope: !5)
