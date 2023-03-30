@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %i = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %20, label %11
11:
  %12 = and i64 72057594037927935, 2
  %13 = or i64 2449958197289549824, %12
  %14 = getelementptr i8, ptr addrspace(1) null, i64 %13
  store ptr addrspace(1) %14, ptr %x
  %15 = load ptr addrspace(1), ptr %x
  %16 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %15), !dbg !9
  %17 = extractvalue {ptr addrspace(1), i1} %16, 1
  br i1 %17, label %41, label %22
18:
  %19 = load ptr addrspace(1), ptr %7
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !20
  unreachable
20:
  %21 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %21), !dbg !8
  unreachable
22:
  %23 = extractvalue {ptr addrspace(1), i1} %16, 0
  %24 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %23), !dbg !10
  store i64 %24, ptr %1
  %25 = load i64, ptr %1
  store i64 %25, ptr %i
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i64, ptr %i
  %31 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %30), !dbg !12
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %2
  %36 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %37 = call ptr addrspace(1) @_bal_float_to_tagged(double 4.0), !dbg !14
  store ptr addrspace(1) %37, ptr %x
  %38 = load ptr addrspace(1), ptr %x
  %39 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %38), !dbg !15
  %40 = extractvalue {ptr addrspace(1), i1} %39, 1
  br i1 %40, label %58, label %43
41:
  %42 = call ptr addrspace(1) @_bal_panic_construct(i64 1025), !dbg !7
  store ptr addrspace(1) %42, ptr %7
  br label %18
43:
  %44 = extractvalue {ptr addrspace(1), i1} %39, 0
  %45 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %44), !dbg !16
  store i64 %45, ptr %4
  %46 = load i64, ptr %4
  store i64 %46, ptr %i
  %47 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %48 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 3
  %49 = load ptr addrspace(1), ptr addrspace(1) %48, align 8
  %50 = bitcast ptr addrspace(1) %49 to ptr addrspace(1)
  %51 = load i64, ptr %i
  %52 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %51), !dbg !18
  %53 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %50, i64 0, i64 0
  store ptr addrspace(1) %52, ptr addrspace(1) %53
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %47, i64 0, i32 1
  store i64 1, ptr addrspace(1) %54
  %55 = bitcast ptr addrspace(1) %47 to ptr addrspace(1)
  %56 = getelementptr i8, ptr addrspace(1) %55, i64 864691128455135236
  store ptr addrspace(1) %56, ptr %5
  %57 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %57), !dbg !19
  store ptr addrspace(1) null, ptr %6
  ret void
58:
  %59 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !7
  store ptr addrspace(1) %59, ptr %7
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/float2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 12, scope: !5)
!10 = !DILocation(line: 4, column: 12, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 6, scope: !5)
!15 = !DILocation(line: 8, column: 8, scope: !5)
!16 = !DILocation(line: 8, column: 8, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 0, scope: !5)
