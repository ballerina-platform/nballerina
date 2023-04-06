@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i64
  %x.2 = alloca ptr addrspace(1)
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %n = alloca i64
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %37, label %12
12:
  %13 = and i64 72057594037927935, 17
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  store ptr addrspace(1) %15, ptr %x
  %16 = load ptr addrspace(1), ptr %x
  %17 = addrspacecast ptr addrspace(1) %16 to ptr
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 144115188075855872
  br i1 %20, label %21, label %27
21:
  %22 = load ptr addrspace(1), ptr %x
  %23 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %22), !dbg !9
  store i64 %23, ptr %x.1
  %24 = load i64, ptr %x.1
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %24, i64 1)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %52, label %39
27:
  %28 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %28, ptr %x.2
  %29 = and i64 72057594037927935, 21
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  store ptr addrspace(1) %31, ptr %x
  %32 = load ptr addrspace(1), ptr %x
  %33 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %32), !dbg !13
  %34 = extractvalue {ptr addrspace(1), i1} %33, 1
  br i1 %34, label %61, label %54
35:
  %36 = load ptr addrspace(1), ptr %8
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !18
  unreachable
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !8
  unreachable
39:
  %40 = extractvalue {i64, i1} %25, 0
  store i64 %40, ptr %1
  %41 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 3
  %43 = load ptr addrspace(1), ptr addrspace(1) %42, align 8
  %44 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %45 = load i64, ptr %1
  %46 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %45), !dbg !11
  %47 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %44, i64 0, i64 0
  store ptr addrspace(1) %46, ptr addrspace(1) %47
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %41, i64 0, i32 1
  store i64 1, ptr addrspace(1) %48
  %49 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %50 = getelementptr i8, ptr addrspace(1) %49, i64 864691128455135236
  store ptr addrspace(1) %50, ptr %2
  %51 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %51), !dbg !12
  store ptr addrspace(1) null, ptr %3
  br label %27
52:
  %53 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %53, ptr %8
  br label %35
54:
  %55 = extractvalue {ptr addrspace(1), i1} %33, 0
  store ptr addrspace(1) %55, ptr %4
  %56 = load ptr addrspace(1), ptr %4
  %57 = addrspacecast ptr addrspace(1) %56 to ptr
  %58 = ptrtoint ptr %57 to i64
  %59 = and i64 %58, 2233785415175766016
  %60 = icmp eq i64 %59, 144115188075855872
  br i1 %60, label %63, label %77
61:
  %62 = call ptr addrspace(1) @_bal_panic_construct(i64 3073), !dbg !7
  store ptr addrspace(1) %62, ptr %8
  br label %35
63:
  %64 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %56), !dbg !14
  store i64 %64, ptr %5
  %65 = load i64, ptr %5
  store i64 %65, ptr %n
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i64, ptr %n
  %71 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %70), !dbg !16
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %6
  %76 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !17
  store ptr addrspace(1) null, ptr %7
  ret void
77:
  %78 = call ptr addrspace(1) @_bal_panic_construct(i64 3075), !dbg !7
  store ptr addrspace(1) %78, ptr %8
  br label %35
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
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 9, scope: !5)
!10 = !DILocation(line: 9, column: 19, scope: !5)
!11 = !DILocation(line: 9, column: 19, scope: !5)
!12 = !DILocation(line: 9, column: 8, scope: !5)
!13 = !DILocation(line: 12, column: 12, scope: !5)
!14 = !DILocation(line: 12, column: 12, scope: !5)
!15 = !DILocation(line: 13, column: 15, scope: !5)
!16 = !DILocation(line: 13, column: 15, scope: !5)
!17 = !DILocation(line: 13, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 0, scope: !5)
