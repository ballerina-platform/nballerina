@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
@_Bi04root2 = external constant {i32}
@_Bi04root3 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_array_string_compare(ptr addrspace(1), ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %v1 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %v1.1 = alloca ptr addrspace(1)
  %v1.2 = alloca ptr addrspace(1)
  %j = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca i8
  %12 = load ptr, ptr @_bal_stack_guard
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %73, label %14
14:
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %16 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 864691128455135236
  store ptr addrspace(1) %17, ptr %1
  %18 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %18, ptr %v1
  %19 = load ptr addrspace(1), ptr %v1
  %20 = call i1 @_bal_type_contains(ptr @_Bt04root1, ptr addrspace(1) %19), !dbg !10
  br i1 %20, label %21, label %61
21:
  %22 = load ptr addrspace(1), ptr %v1
  store ptr addrspace(1) %22, ptr %v1.1
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root3, i64 0), !dbg !13
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 864691128455135236
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %26, ptr %j
  %27 = load ptr addrspace(1), ptr %v1.1
  %28 = load ptr addrspace(1), ptr %j
  %29 = call i64 @_bal_array_string_compare(ptr addrspace(1) %27, ptr addrspace(1) %28), !dbg !14
  %30 = icmp eq i64 %29, 0
  store i1 %30, ptr %3
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = load i1, ptr %3
  %36 = zext i1 %35 to i64
  %37 = or i64 %36, 72057594037927936
  %38 = getelementptr i8, ptr addrspace(1) null, i64 %37
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %4
  %43 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !16
  store ptr addrspace(1) null, ptr %5
  %44 = load ptr addrspace(1), ptr %v1.1
  %45 = load ptr addrspace(1), ptr %j
  %46 = call i64 @_bal_array_string_compare(ptr addrspace(1) %44, ptr addrspace(1) %45), !dbg !17
  %47 = icmp eq i64 %46, 2
  store i1 %47, ptr %6
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !18
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
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !19
  store ptr addrspace(1) null, ptr %8
  br label %72
61:
  %62 = load ptr addrspace(1), ptr %v1
  store ptr addrspace(1) %62, ptr %v1.2
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !11
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848357477), ptr addrspace(1) %67
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %68
  %69 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %70 = getelementptr i8, ptr addrspace(1) %69, i64 864691128455135236
  store ptr addrspace(1) %70, ptr %9
  %71 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %71), !dbg !12
  store ptr addrspace(1) null, ptr %10
  br label %72
72:
  ret void
73:
  %74 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %74), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/order3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 10, scope: !5)
!11 = !DILocation(line: 11, column: 19, scope: !5)
!12 = !DILocation(line: 11, column: 8, scope: !5)
!13 = !DILocation(line: 6, column: 21, scope: !5)
!14 = !DILocation(line: 7, column: 22, scope: !5)
!15 = !DILocation(line: 7, column: 19, scope: !5)
!16 = !DILocation(line: 7, column: 8, scope: !5)
!17 = !DILocation(line: 8, column: 22, scope: !5)
!18 = !DILocation(line: 8, column: 19, scope: !5)
!19 = !DILocation(line: 8, column: 8, scope: !5)
