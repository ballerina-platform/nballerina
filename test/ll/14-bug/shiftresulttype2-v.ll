@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %d = alloca i64
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
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %113, label %22
22:
  store i64 255, ptr %a
  store i64 63, ptr %b
  store i64 64, ptr %c
  store i64 122, ptr %d
  %23 = load i64, ptr %a
  %24 = load i64, ptr %b
  %25 = and i64 63, %24
  %26 = shl i64 %23, %25
  store i64 %26, ptr %1
  %27 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 3
  %29 = load ptr addrspace(1), ptr addrspace(1) %28, align 8
  %30 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %31 = load i64, ptr %1
  %32 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %31), !dbg !10
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %30, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %27, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %2
  %37 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %38 = load i64, ptr %a
  %39 = load i64, ptr %c
  %40 = and i64 63, %39
  %41 = shl i64 %38, %40
  store i64 %41, ptr %4
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = load i64, ptr %4
  %47 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %46), !dbg !13
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %5
  %52 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %52), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %53 = load i64, ptr %a
  %54 = load i64, ptr %d
  %55 = and i64 63, %54
  %56 = shl i64 %53, %55
  store i64 %56, ptr %7
  %57 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 3
  %59 = load ptr addrspace(1), ptr addrspace(1) %58, align 8
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = load i64, ptr %7
  %62 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %61), !dbg !16
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %60, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %57, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %8
  %67 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %68 = load i64, ptr %b
  %69 = load i64, ptr %b
  %70 = and i64 63, %69
  %71 = shl i64 %68, %70
  store i64 %71, ptr %10
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load i64, ptr %10
  %77 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %76), !dbg !19
  %78 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %77, ptr addrspace(1) %78
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %79
  %80 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %81 = getelementptr i8, ptr addrspace(1) %80, i64 864691128455135236
  store ptr addrspace(1) %81, ptr %11
  %82 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %82), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %83 = load i64, ptr %b
  %84 = load i64, ptr %c
  %85 = and i64 63, %84
  %86 = shl i64 %83, %85
  store i64 %86, ptr %13
  %87 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %88 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 3
  %89 = load ptr addrspace(1), ptr addrspace(1) %88, align 8
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = load i64, ptr %13
  %92 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %91), !dbg !22
  %93 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %90, i64 0, i64 0
  store ptr addrspace(1) %92, ptr addrspace(1) %93
  %94 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %87, i64 0, i32 1
  store i64 1, ptr addrspace(1) %94
  %95 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %96 = getelementptr i8, ptr addrspace(1) %95, i64 864691128455135236
  store ptr addrspace(1) %96, ptr %14
  %97 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %97), !dbg !23
  store ptr addrspace(1) null, ptr %15
  %98 = load i64, ptr %a
  %99 = load i64, ptr %a
  %100 = and i64 63, %99
  %101 = shl i64 %98, %100
  store i64 %101, ptr %16
  %102 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %103 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 3
  %104 = load ptr addrspace(1), ptr addrspace(1) %103, align 8
  %105 = bitcast ptr addrspace(1) %104 to ptr addrspace(1)
  %106 = load i64, ptr %16
  %107 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %106), !dbg !25
  %108 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %105, i64 0, i64 0
  store ptr addrspace(1) %107, ptr addrspace(1) %108
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %102, i64 0, i32 1
  store i64 1, ptr addrspace(1) %109
  %110 = bitcast ptr addrspace(1) %102 to ptr addrspace(1)
  %111 = getelementptr i8, ptr addrspace(1) %110, i64 864691128455135236
  store ptr addrspace(1) %111, ptr %17
  %112 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %112), !dbg !26
  store ptr addrspace(1) null, ptr %18
  ret void
113:
  %114 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %114), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/shiftresulttype2-v.bal", directory:"")
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
!12 = !DILocation(line: 10, column: 15, scope: !5)
!13 = !DILocation(line: 10, column: 15, scope: !5)
!14 = !DILocation(line: 10, column: 4, scope: !5)
!15 = !DILocation(line: 12, column: 15, scope: !5)
!16 = !DILocation(line: 12, column: 15, scope: !5)
!17 = !DILocation(line: 12, column: 4, scope: !5)
!18 = !DILocation(line: 14, column: 15, scope: !5)
!19 = !DILocation(line: 14, column: 15, scope: !5)
!20 = !DILocation(line: 14, column: 4, scope: !5)
!21 = !DILocation(line: 16, column: 15, scope: !5)
!22 = !DILocation(line: 16, column: 15, scope: !5)
!23 = !DILocation(line: 16, column: 4, scope: !5)
!24 = !DILocation(line: 18, column: 15, scope: !5)
!25 = !DILocation(line: 18, column: 15, scope: !5)
!26 = !DILocation(line: 18, column: 4, scope: !5)
