@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %z = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %80, label %15
15:
  %16 = call ptr addrspace(1) @_B04rootfoo(), !dbg !11
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %17, ptr %x
  store i64 4, ptr %z
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 3
  %20 = load ptr addrspace(1), ptr addrspace(1) %19, align 8
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = zext i1 0 to i64
  %23 = or i64 %22, 72057594037927936
  %24 = getelementptr i8, ptr addrspace(1) null, i64 %23
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %21, i64 0, i64 0
  store ptr addrspace(1) %24, ptr addrspace(1) %25
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 1
  store i64 1, ptr addrspace(1) %26
  %27 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %28 = getelementptr i8, ptr addrspace(1) %27, i64 864691128455135236
  store ptr addrspace(1) %28, ptr %2
  %29 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %29), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %30 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 3
  %32 = load ptr addrspace(1), ptr addrspace(1) %31, align 8
  %33 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %34 = zext i1 1 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, ptr addrspace(1) null, i64 %35
  %37 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %33, i64 0, i64 0
  store ptr addrspace(1) %36, ptr addrspace(1) %37
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %30, i64 0, i32 1
  store i64 1, ptr addrspace(1) %38
  %39 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %40 = getelementptr i8, ptr addrspace(1) %39, i64 864691128455135236
  store ptr addrspace(1) %40, ptr %4
  %41 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %41), !dbg !15
  store ptr addrspace(1) null, ptr %5
  %42 = load ptr addrspace(1), ptr %x
  %43 = addrspacecast ptr addrspace(1) %42 to ptr
  %44 = ptrtoint ptr %43 to i64
  %45 = and i64 %44, 2233785415175766016
  %46 = icmp eq i64 %45, 144115188075855872
  %47 = xor i1 1, %46
  store i1 %47, ptr %6
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load i1, ptr %6
  %53 = zext i1 %52 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, ptr addrspace(1) null, i64 %54
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %7
  %60 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !17
  store ptr addrspace(1) null, ptr %8
  %61 = load ptr addrspace(1), ptr %x
  %62 = addrspacecast ptr addrspace(1) %61 to ptr
  %63 = ptrtoint ptr %62 to i64
  %64 = and i64 %63, 2233785415175766016
  %65 = icmp eq i64 %64, 360287970189639680
  %66 = xor i1 1, %65
  store i1 %66, ptr %9
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = load i1, ptr %9
  %72 = zext i1 %71 to i64
  %73 = or i64 %72, 72057594037927936
  %74 = getelementptr i8, ptr addrspace(1) null, i64 %73
  %75 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %74, ptr addrspace(1) %75
  %76 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %76
  %77 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %78 = getelementptr i8, ptr addrspace(1) %77, i64 864691128455135236
  store ptr addrspace(1) %78, ptr %10
  %79 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %79), !dbg !19
  store ptr addrspace(1) null, ptr %11
  ret void
80:
  %81 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %81), !dbg !10
  unreachable
}
define ptr addrspace(1) @_B04rootfoo() !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %y = alloca ptr addrspace(1)
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %13, label %6
6:
  store i64 1, ptr %a
  store i64 2, ptr %b
  %7 = load i64, ptr %a
  %8 = load i64, ptr %b
  %9 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %7, i64 %8)
  %10 = extractvalue {i64, i1} %9, 1
  br i1 %10, label %20, label %15
11:
  %12 = load ptr addrspace(1), ptr %2
  call void @_bal_panic(ptr addrspace(1) %12), !dbg !23
  unreachable
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 3332), !dbg !20
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !21
  unreachable
15:
  %16 = extractvalue {i64, i1} %9, 0
  store i64 %16, ptr %1
  %17 = load i64, ptr %1
  %18 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %17), !dbg !22
  store ptr addrspace(1) %18, ptr %y
  %19 = load ptr addrspace(1), ptr %y
  ret ptr addrspace(1) %19
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 4097), !dbg !20
  store ptr addrspace(1) %21, ptr %2
  br label %11
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typetest/nnot-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B04rootfoo", scope: !1, file: !1, line: 13, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 12, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 15, scope: !5)
!17 = !DILocation(line: 9, column: 4, scope: !5)
!18 = !DILocation(line: 10, column: 15, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 0, column: 0, scope: !7)
!21 = !DILocation(line: 13, column: 16, scope: !7)
!22 = !DILocation(line: 16, column: 10, scope: !7)
!23 = !DILocation(line: 18, column: 0, scope: !7)
