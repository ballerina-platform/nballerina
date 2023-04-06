@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %y = alloca i64
  %z = alloca i64
  %i = alloca i64
  %1 = alloca i64
  %j = alloca i64
  %2 = alloca i64
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %d = alloca i64
  %e = alloca i64
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %77, label %16
16:
  store i64 5, ptr %x
  store i64 3, ptr %y
  store i64 0, ptr %z
  %17 = load i64, ptr %x
  %18 = load i64, ptr %y
  %19 = mul nsw i64 %17, %18
  store i64 %19, ptr %1
  %20 = load i64, ptr %1
  store i64 %20, ptr %i
  %21 = load i64, ptr %x
  %22 = load i64, ptr %z
  %23 = mul nsw i64 %21, %22
  store i64 %23, ptr %2
  %24 = load i64, ptr %2
  store i64 %24, ptr %j
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = load i64, ptr %i
  %30 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %29), !dbg !10
  %31 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %30, ptr addrspace(1) %31
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %32
  %33 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %34 = getelementptr i8, ptr addrspace(1) %33, i64 864691128455135236
  store ptr addrspace(1) %34, ptr %3
  %35 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %35), !dbg !11
  store ptr addrspace(1) null, ptr %4
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i64, ptr %j
  %41 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %40), !dbg !13
  %42 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %41, ptr addrspace(1) %42
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %43
  %44 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %45 = getelementptr i8, ptr addrspace(1) %44, i64 864691128455135236
  store ptr addrspace(1) %45, ptr %5
  %46 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %46), !dbg !14
  store ptr addrspace(1) null, ptr %6
  store i64 2147483647, ptr %a
  store i64 2147483647, ptr %b
  %47 = load i64, ptr %a
  %48 = load i64, ptr %b
  %49 = mul nsw i64 %47, %48
  store i64 %49, ptr %7
  %50 = load i64, ptr %7
  store i64 %50, ptr %c
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load i64, ptr %c
  %56 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %55), !dbg !16
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %8
  %61 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !17
  store ptr addrspace(1) null, ptr %9
  store i64 -2147483647, ptr %d
  %62 = load i64, ptr %d
  %63 = load i64, ptr %a
  %64 = mul nsw i64 %62, %63
  store i64 %64, ptr %10
  %65 = load i64, ptr %10
  store i64 %65, ptr %e
  %66 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 3
  %68 = load ptr addrspace(1), ptr addrspace(1) %67, align 8
  %69 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %70 = load i64, ptr %e
  %71 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %70), !dbg !19
  %72 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %69, i64 0, i64 0
  store ptr addrspace(1) %71, ptr addrspace(1) %72
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %66, i64 0, i32 1
  store i64 1, ptr addrspace(1) %73
  %74 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %75 = getelementptr i8, ptr addrspace(1) %74, i64 864691128455135236
  store ptr addrspace(1) %75, ptr %11
  %76 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %76), !dbg !20
  store ptr addrspace(1) null, ptr %12
  ret void
77:
  %78 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %78), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-intsubtype/mul-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 15, scope: !5)
!10 = !DILocation(line: 8, column: 15, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 15, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 13, column: 15, scope: !5)
!16 = !DILocation(line: 13, column: 15, scope: !5)
!17 = !DILocation(line: 13, column: 4, scope: !5)
!18 = !DILocation(line: 16, column: 15, scope: !5)
!19 = !DILocation(line: 16, column: 15, scope: !5)
!20 = !DILocation(line: 16, column: 4, scope: !5)
