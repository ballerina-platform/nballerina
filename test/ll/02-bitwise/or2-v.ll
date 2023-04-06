@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %i = alloca i64
  %j = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %73, label %16
16:
  store i64 5, ptr %i
  store i64 9, ptr %j
  %17 = load i64, ptr %i
  %18 = load i64, ptr %j
  %19 = or i64 %17, %18
  store i64 %19, ptr %1
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = load i64, ptr %1
  %25 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %24), !dbg !10
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %2
  %30 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !11
  store ptr addrspace(1) null, ptr %3
  store i64 9223372036854775807, ptr %i
  store i64 9223372036854775807, ptr %j
  %31 = load i64, ptr %i
  %32 = load i64, ptr %j
  %33 = or i64 %31, %32
  store i64 %33, ptr %4
  %34 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %35 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 3
  %36 = load ptr addrspace(1), ptr addrspace(1) %35, align 8
  %37 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %38 = load i64, ptr %4
  %39 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %38), !dbg !13
  %40 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %37, i64 0, i64 0
  store ptr addrspace(1) %39, ptr addrspace(1) %40
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %34, i64 0, i32 1
  store i64 1, ptr addrspace(1) %41
  %42 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %43 = getelementptr i8, ptr addrspace(1) %42, i64 864691128455135236
  store ptr addrspace(1) %43, ptr %5
  %44 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %44), !dbg !14
  store ptr addrspace(1) null, ptr %6
  store i64 -1, ptr %i
  store i64 -1, ptr %j
  %45 = load i64, ptr %i
  %46 = load i64, ptr %j
  %47 = or i64 %45, %46
  store i64 %47, ptr %7
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = load i64, ptr %7
  %53 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %52), !dbg !16
  %54 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) %53, ptr addrspace(1) %54
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %55
  %56 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %57 = getelementptr i8, ptr addrspace(1) %56, i64 864691128455135236
  store ptr addrspace(1) %57, ptr %8
  %58 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %58), !dbg !17
  store ptr addrspace(1) null, ptr %9
  store i64 9223372036854775807, ptr %i
  store i64 -1, ptr %j
  %59 = load i64, ptr %i
  %60 = load i64, ptr %j
  %61 = or i64 %59, %60
  store i64 %61, ptr %10
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i64, ptr %10
  %67 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %66), !dbg !19
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %11
  %72 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !20
  store ptr addrspace(1) null, ptr %12
  ret void
73:
  %74 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %74), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-bitwise/or2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 10, column: 15, scope: !5)
!13 = !DILocation(line: 10, column: 15, scope: !5)
!14 = !DILocation(line: 10, column: 4, scope: !5)
!15 = !DILocation(line: 14, column: 15, scope: !5)
!16 = !DILocation(line: 14, column: 15, scope: !5)
!17 = !DILocation(line: 14, column: 4, scope: !5)
!18 = !DILocation(line: 18, column: 15, scope: !5)
!19 = !DILocation(line: 18, column: 15, scope: !5)
!20 = !DILocation(line: 18, column: 4, scope: !5)
