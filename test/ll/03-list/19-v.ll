@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb0m4lang5arraypush(ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %v = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i64
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %65, label %11
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 4), !dbg !9
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = and i64 72057594037927935, 1
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = and i64 72057594037927935, 2
  %21 = or i64 2449958197289549824, %20
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 1
  store ptr addrspace(1) %22, ptr addrspace(1) %23
  %24 = and i64 72057594037927935, 3
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 2
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = and i64 72057594037927935, 4
  %29 = or i64 2449958197289549824, %28
  %30 = getelementptr i8, ptr addrspace(1) null, i64 %29
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 3
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 4, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %1
  %35 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %35, ptr %v
  %36 = load ptr addrspace(1), ptr %v
  %37 = and i64 72057594037927935, 5
  %38 = or i64 2449958197289549824, %37
  %39 = getelementptr i8, ptr addrspace(1) null, i64 %38
  call void @_Bb0m4lang5arraypush(ptr addrspace(1) %36, ptr addrspace(1) %39), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !11
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load ptr addrspace(1), ptr %v
  %45 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %44), !dbg !12
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %3
  %50 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !13
  store ptr addrspace(1) null, ptr %4
  %51 = load ptr addrspace(1), ptr %v
  %52 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %51), !dbg !14
  %53 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %52), !dbg !15
  store i64 %53, ptr %5
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = load i64, ptr %5
  %59 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %58), !dbg !17
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %6
  %64 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !18
  store ptr addrspace(1) null, ptr %7
  ret void
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %66), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-list/19-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 14, scope: !5)
!10 = !DILocation(line: 5, column: 6, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 17, scope: !5)
!15 = !DILocation(line: 7, column: 17, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 15, scope: !5)
!18 = !DILocation(line: 7, column: 4, scope: !5)
