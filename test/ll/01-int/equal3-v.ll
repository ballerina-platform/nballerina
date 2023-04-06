@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bt04root1 = external constant {i32, i32, [0 x ptr]}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i1 @_bal_type_contains_int(ptr, i64) readonly
define void @_B04rootmain() !dbg !5 {
  %b = alloca i1
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %x = alloca i64
  %x.1 = alloca i64
  %x.2 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %x.3 = alloca i64
  %x.4 = alloca i64
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i8
  %18 = load ptr, ptr @_bal_stack_guard
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %141, label %20
20:
  store i1 1, ptr %b
  %21 = load i1, ptr %b
  br i1 %21, label %22, label %35
22:
  %23 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 3
  %25 = load ptr addrspace(1), ptr addrspace(1) %24, align 8
  %26 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %27 = and i64 72057594037927935, 17
  %28 = or i64 2449958197289549824, %27
  %29 = getelementptr i8, ptr addrspace(1) null, i64 %28
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %26, i64 0, i64 0
  store ptr addrspace(1) %29, ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %23, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %1
  %34 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !12
  store ptr addrspace(1) null, ptr %2
  br label %48
35:
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = and i64 72057594037927935, 0
  %41 = or i64 2449958197289549824, %40
  %42 = getelementptr i8, ptr addrspace(1) null, i64 %41
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %42, ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %3
  %47 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !10
  store ptr addrspace(1) null, ptr %4
  br label %48
48:
  store i1 0, ptr %b
  %49 = load i1, ptr %b
  br i1 %49, label %50, label %63
50:
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = and i64 72057594037927935, 0
  %56 = or i64 2449958197289549824, %55
  %57 = getelementptr i8, ptr addrspace(1) null, i64 %56
  %58 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %57, ptr addrspace(1) %58
  %59 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %59
  %60 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %61 = getelementptr i8, ptr addrspace(1) %60, i64 864691128455135236
  store ptr addrspace(1) %61, ptr %5
  %62 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %62), !dbg !16
  store ptr addrspace(1) null, ptr %6
  br label %76
63:
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = and i64 72057594037927935, 21
  %69 = or i64 2449958197289549824, %68
  %70 = getelementptr i8, ptr addrspace(1) null, i64 %69
  %71 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %70, ptr addrspace(1) %71
  %72 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %72
  %73 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %74 = getelementptr i8, ptr addrspace(1) %73, i64 864691128455135236
  store ptr addrspace(1) %74, ptr %7
  %75 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %75), !dbg !14
  store ptr addrspace(1) null, ptr %8
  br label %76
76:
  store i64 42, ptr %x
  %77 = load i64, ptr %x
  %78 = icmp sle i64 42, %77
  %79 = icmp sge i64 42, %77
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %95
81:
  %82 = load i64, ptr %x
  store i64 %82, ptr %x.1
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = and i64 72057594037927935, 42
  %88 = or i64 2449958197289549824, %87
  %89 = getelementptr i8, ptr addrspace(1) null, i64 %88
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %9
  %94 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !20
  store ptr addrspace(1) null, ptr %10
  br label %109
95:
  %96 = load i64, ptr %x
  store i64 %96, ptr %x.2
  %97 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %98 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 3
  %99 = load ptr addrspace(1), ptr addrspace(1) %98, align 8
  %100 = bitcast ptr addrspace(1) %99 to ptr addrspace(1)
  %101 = and i64 72057594037927935, 0
  %102 = or i64 2449958197289549824, %101
  %103 = getelementptr i8, ptr addrspace(1) null, i64 %102
  %104 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %100, i64 0, i64 0
  store ptr addrspace(1) %103, ptr addrspace(1) %104
  %105 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %97, i64 0, i32 1
  store i64 1, ptr addrspace(1) %105
  %106 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %107 = getelementptr i8, ptr addrspace(1) %106, i64 864691128455135236
  store ptr addrspace(1) %107, ptr %11
  %108 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %108), !dbg !18
  store ptr addrspace(1) null, ptr %12
  br label %109
109:
  %110 = load i64, ptr %x
  %111 = call i1 @_bal_type_contains_int(ptr @_Bt04root1, i64 %110), !dbg !21
  br i1 %111, label %112, label %126
112:
  %113 = load i64, ptr %x
  store i64 %113, ptr %x.3
  %114 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %115 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 3
  %116 = load ptr addrspace(1), ptr addrspace(1) %115, align 8
  %117 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %118 = and i64 72057594037927935, 0
  %119 = or i64 2449958197289549824, %118
  %120 = getelementptr i8, ptr addrspace(1) null, i64 %119
  %121 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %117, i64 0, i64 0
  store ptr addrspace(1) %120, ptr addrspace(1) %121
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %114, i64 0, i32 1
  store i64 1, ptr addrspace(1) %122
  %123 = bitcast ptr addrspace(1) %114 to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 864691128455135236
  store ptr addrspace(1) %124, ptr %13
  %125 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %125), !dbg !25
  store ptr addrspace(1) null, ptr %14
  br label %140
126:
  %127 = load i64, ptr %x
  store i64 %127, ptr %x.4
  %128 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %129 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 3
  %130 = load ptr addrspace(1), ptr addrspace(1) %129, align 8
  %131 = bitcast ptr addrspace(1) %130 to ptr addrspace(1)
  %132 = and i64 72057594037927935, 42
  %133 = or i64 2449958197289549824, %132
  %134 = getelementptr i8, ptr addrspace(1) null, i64 %133
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %131, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %128, i64 0, i32 1
  store i64 1, ptr addrspace(1) %136
  %137 = bitcast ptr addrspace(1) %128 to ptr addrspace(1)
  %138 = getelementptr i8, ptr addrspace(1) %137, i64 864691128455135236
  store ptr addrspace(1) %138, ptr %15
  %139 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %139), !dbg !23
  store ptr addrspace(1) null, ptr %16
  br label %140
140:
  ret void
141:
  %142 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %142), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/equal3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 10, column: 19, scope: !5)
!10 = !DILocation(line: 10, column: 8, scope: !5)
!11 = !DILocation(line: 7, column: 19, scope: !5)
!12 = !DILocation(line: 7, column: 8, scope: !5)
!13 = !DILocation(line: 17, column: 19, scope: !5)
!14 = !DILocation(line: 17, column: 8, scope: !5)
!15 = !DILocation(line: 14, column: 19, scope: !5)
!16 = !DILocation(line: 14, column: 8, scope: !5)
!17 = !DILocation(line: 24, column: 19, scope: !5)
!18 = !DILocation(line: 24, column: 8, scope: !5)
!19 = !DILocation(line: 21, column: 19, scope: !5)
!20 = !DILocation(line: 21, column: 8, scope: !5)
!21 = !DILocation(line: 26, column: 10, scope: !5)
!22 = !DILocation(line: 30, column: 19, scope: !5)
!23 = !DILocation(line: 30, column: 8, scope: !5)
!24 = !DILocation(line: 27, column: 19, scope: !5)
!25 = !DILocation(line: 27, column: 8, scope: !5)
