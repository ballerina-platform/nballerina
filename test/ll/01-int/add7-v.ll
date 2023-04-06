@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %103, label %18
18:
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = and i64 72057594037927935, -8
  %24 = or i64 2449958197289549824, %23
  %25 = getelementptr i8, ptr addrspace(1) null, i64 %24
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) %25, ptr addrspace(1) %26
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %27
  %28 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %29 = getelementptr i8, ptr addrspace(1) %28, i64 864691128455135236
  store ptr addrspace(1) %29, ptr %1
  %30 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %30), !dbg !10
  store ptr addrspace(1) null, ptr %2
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = and i64 72057594037927935, -19
  %36 = or i64 2449958197289549824, %35
  %37 = getelementptr i8, ptr addrspace(1) null, i64 %36
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %39
  %40 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 864691128455135236
  store ptr addrspace(1) %41, ptr %3
  %42 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %42), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = and i64 72057594037927935, -22
  %48 = or i64 2449958197289549824, %47
  %49 = getelementptr i8, ptr addrspace(1) null, i64 %48
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %5
  %54 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = and i64 72057594037927935, -34
  %60 = or i64 2449958197289549824, %59
  %61 = getelementptr i8, ptr addrspace(1) null, i64 %60
  %62 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %61, ptr addrspace(1) %62
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %63
  %64 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %65 = getelementptr i8, ptr addrspace(1) %64, i64 864691128455135236
  store ptr addrspace(1) %65, ptr %7
  %66 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %66), !dbg !16
  store ptr addrspace(1) null, ptr %8
  %67 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %68 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 3
  %69 = load ptr addrspace(1), ptr addrspace(1) %68, align 8
  %70 = bitcast ptr addrspace(1) %69 to ptr addrspace(1)
  %71 = and i64 72057594037927935, -33
  %72 = or i64 2449958197289549824, %71
  %73 = getelementptr i8, ptr addrspace(1) null, i64 %72
  %74 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %70, i64 0, i64 0
  store ptr addrspace(1) %73, ptr addrspace(1) %74
  %75 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %67, i64 0, i32 1
  store i64 1, ptr addrspace(1) %75
  %76 = bitcast ptr addrspace(1) %67 to ptr addrspace(1)
  %77 = getelementptr i8, ptr addrspace(1) %76, i64 864691128455135236
  store ptr addrspace(1) %77, ptr %9
  %78 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %78), !dbg !18
  store ptr addrspace(1) null, ptr %10
  %79 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %80 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 3
  %81 = load ptr addrspace(1), ptr addrspace(1) %80, align 8
  %82 = bitcast ptr addrspace(1) %81 to ptr addrspace(1)
  %83 = and i64 72057594037927935, -38
  %84 = or i64 2449958197289549824, %83
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  %86 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %82, i64 0, i64 0
  store ptr addrspace(1) %85, ptr addrspace(1) %86
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %79, i64 0, i32 1
  store i64 1, ptr addrspace(1) %87
  %88 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %89 = getelementptr i8, ptr addrspace(1) %88, i64 864691128455135236
  store ptr addrspace(1) %89, ptr %11
  %90 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %90), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %91 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %93 = load ptr addrspace(1), ptr addrspace(1) %92, align 8
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = and i64 72057594037927935, -106
  %96 = or i64 2449958197289549824, %95
  %97 = getelementptr i8, ptr addrspace(1) null, i64 %96
  %98 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %94, i64 0, i64 0
  store ptr addrspace(1) %97, ptr addrspace(1) %98
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  store i64 1, ptr addrspace(1) %99
  %100 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %101 = getelementptr i8, ptr addrspace(1) %100, i64 864691128455135236
  store ptr addrspace(1) %101, ptr %13
  %102 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %102), !dbg !22
  store ptr addrspace(1) null, ptr %14
  ret void
103:
  %104 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %104), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/add7-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 15, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 15, scope: !5)
!14 = !DILocation(line: 7, column: 4, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 4, scope: !5)
!17 = !DILocation(line: 9, column: 15, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 15, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 15, scope: !5)
!22 = !DILocation(line: 11, column: 4, scope: !5)
