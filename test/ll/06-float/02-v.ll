@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %f = alloca double
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
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %103, label %20
20:
  store double 0.1, ptr %f
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load double, ptr %f
  %26 = call ptr addrspace(1) @_bal_float_to_tagged(double %25), !dbg !10
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %1
  %31 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !11
  store ptr addrspace(1) null, ptr %2
  store double 0x3FD5555555555555, ptr %f
  %32 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 3
  %34 = load ptr addrspace(1), ptr addrspace(1) %33, align 8
  %35 = bitcast ptr addrspace(1) %34 to ptr addrspace(1)
  %36 = load double, ptr %f
  %37 = call ptr addrspace(1) @_bal_float_to_tagged(double %36), !dbg !13
  %38 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %35, i64 0, i64 0
  store ptr addrspace(1) %37, ptr addrspace(1) %38
  %39 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %32, i64 0, i32 1
  store i64 1, ptr addrspace(1) %39
  %40 = bitcast ptr addrspace(1) %32 to ptr addrspace(1)
  %41 = getelementptr i8, ptr addrspace(1) %40, i64 864691128455135236
  store ptr addrspace(1) %41, ptr %3
  %42 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %42), !dbg !14
  store ptr addrspace(1) null, ptr %4
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.0), !dbg !16
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %5
  %52 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %52), !dbg !17
  store ptr addrspace(1) null, ptr %6
  %53 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %54 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 3
  %55 = load ptr addrspace(1), ptr addrspace(1) %54, align 8
  %56 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %57 = call ptr addrspace(1) @_bal_float_to_tagged(double -0.0), !dbg !19
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %56, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %53, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %7
  %62 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !20
  store ptr addrspace(1) null, ptr %8
  %63 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 3
  %65 = load ptr addrspace(1), ptr addrspace(1) %64, align 8
  %66 = bitcast ptr addrspace(1) %65 to ptr addrspace(1)
  %67 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x8010000000000001), !dbg !22
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %66, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %63, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %9
  %72 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !23
  store ptr addrspace(1) null, ptr %10
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF8000000000000), !dbg !25
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %11
  %82 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !26
  store ptr addrspace(1) null, ptr %12
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = call ptr addrspace(1) @_bal_float_to_tagged(double 0x7FF0000000000000), !dbg !28
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %13
  %92 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !29
  store ptr addrspace(1) null, ptr %14
  %93 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 3
  %95 = load ptr addrspace(1), ptr addrspace(1) %94, align 8
  %96 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %97 = call ptr addrspace(1) @_bal_float_to_tagged(double 0xFFF0000000000000), !dbg !31
  %98 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %96, i64 0, i64 0
  store ptr addrspace(1) %97, ptr addrspace(1) %98
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %93, i64 0, i32 1
  store i64 1, ptr addrspace(1) %99
  %100 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %101 = getelementptr i8, ptr addrspace(1) %100, i64 864691128455135236
  store ptr addrspace(1) %101, ptr %15
  %102 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %102), !dbg !32
  store ptr addrspace(1) null, ptr %16
  ret void
103:
  %104 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %104), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 15, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 15, scope: !5)
!17 = !DILocation(line: 10, column: 4, scope: !5)
!18 = !DILocation(line: 12, column: 15, scope: !5)
!19 = !DILocation(line: 12, column: 15, scope: !5)
!20 = !DILocation(line: 12, column: 4, scope: !5)
!21 = !DILocation(line: 14, column: 15, scope: !5)
!22 = !DILocation(line: 14, column: 15, scope: !5)
!23 = !DILocation(line: 14, column: 4, scope: !5)
!24 = !DILocation(line: 16, column: 15, scope: !5)
!25 = !DILocation(line: 16, column: 15, scope: !5)
!26 = !DILocation(line: 16, column: 4, scope: !5)
!27 = !DILocation(line: 18, column: 15, scope: !5)
!28 = !DILocation(line: 18, column: 15, scope: !5)
!29 = !DILocation(line: 18, column: 4, scope: !5)
!30 = !DILocation(line: 20, column: 15, scope: !5)
!31 = !DILocation(line: 20, column: 15, scope: !5)
!32 = !DILocation(line: 20, column: 4, scope: !5)
