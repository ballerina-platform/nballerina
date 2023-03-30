@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i1
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i1
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca i1
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca i8
  %23 = load ptr, ptr @_bal_stack_guard
  %24 = icmp ult ptr %22, %23
  br i1 %24, label %164, label %25
25:
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = zext i1 1 to i64
  %31 = or i64 %30, 72057594037927936
  %32 = getelementptr i8, ptr addrspace(1) null, i64 %31
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %32, ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %1
  %37 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %37, ptr %x
  %38 = load ptr addrspace(1), ptr %x
  %39 = and i64 72057594037927935, 1
  %40 = or i64 2449958197289549824, %39
  %41 = getelementptr i8, ptr addrspace(1) null, i64 %40
  %42 = icmp eq ptr addrspace(1) %38, %41
  store i1 %42, ptr %2
  %43 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 3
  %45 = load ptr addrspace(1), ptr addrspace(1) %44, align 8
  %46 = bitcast ptr addrspace(1) %45 to ptr addrspace(1)
  %47 = load i1, ptr %2
  %48 = zext i1 %47 to i64
  %49 = or i64 %48, 72057594037927936
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %46, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %43, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %43 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %3
  %55 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !11
  store ptr addrspace(1) null, ptr %4
  %56 = load ptr addrspace(1), ptr %x
  %57 = zext i1 1 to i64
  %58 = or i64 %57, 72057594037927936
  %59 = getelementptr i8, ptr addrspace(1) null, i64 %58
  %60 = icmp eq ptr addrspace(1) %56, %59
  store i1 %60, ptr %5
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = load i1, ptr %5
  %66 = zext i1 %65 to i64
  %67 = or i64 %66, 72057594037927936
  %68 = getelementptr i8, ptr addrspace(1) null, i64 %67
  %69 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %64, i64 0, i64 0
  store ptr addrspace(1) %68, ptr addrspace(1) %69
  %70 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 1, ptr addrspace(1) %70
  %71 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %72 = getelementptr i8, ptr addrspace(1) %71, i64 864691128455135236
  store ptr addrspace(1) %72, ptr %6
  %73 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %73), !dbg !13
  store ptr addrspace(1) null, ptr %7
  %74 = load ptr addrspace(1), ptr %x
  %75 = icmp eq ptr addrspace(1) %74, null
  store i1 %75, ptr %8
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = load i1, ptr %8
  %81 = zext i1 %80 to i64
  %82 = or i64 %81, 72057594037927936
  %83 = getelementptr i8, ptr addrspace(1) null, i64 %82
  %84 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 0
  store ptr addrspace(1) %83, ptr addrspace(1) %84
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  store i64 1, ptr addrspace(1) %85
  %86 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %87 = getelementptr i8, ptr addrspace(1) %86, i64 864691128455135236
  store ptr addrspace(1) %87, ptr %9
  %88 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %88), !dbg !15
  store ptr addrspace(1) null, ptr %10
  %89 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !16
  %90 = bitcast ptr addrspace(1) %89 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %11
  %92 = load ptr addrspace(1), ptr %11
  store ptr addrspace(1) %92, ptr %x
  %93 = load ptr addrspace(1), ptr %x
  %94 = and i64 72057594037927935, 1
  %95 = or i64 2449958197289549824, %94
  %96 = getelementptr i8, ptr addrspace(1) null, i64 %95
  %97 = icmp ne ptr addrspace(1) %93, %96
  store i1 %97, ptr %12
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load i1, ptr %12
  %103 = zext i1 %102 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, ptr addrspace(1) null, i64 %104
  %106 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %105, ptr addrspace(1) %106
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %107
  %108 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 864691128455135236
  store ptr addrspace(1) %109, ptr %13
  %110 = load ptr addrspace(1), ptr %13
  call void @_Bb02ioprintln(ptr addrspace(1) %110), !dbg !18
  store ptr addrspace(1) null, ptr %14
  %111 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 3), !dbg !19
  %112 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 3
  %113 = load ptr addrspace(1), ptr addrspace(1) %112, align 8
  %114 = bitcast ptr addrspace(1) %113 to ptr addrspace(1)
  %115 = and i64 72057594037927935, 1
  %116 = or i64 2449958197289549824, %115
  %117 = getelementptr i8, ptr addrspace(1) null, i64 %116
  %118 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 0
  store ptr addrspace(1) %117, ptr addrspace(1) %118
  %119 = and i64 72057594037927935, 2
  %120 = or i64 2449958197289549824, %119
  %121 = getelementptr i8, ptr addrspace(1) null, i64 %120
  %122 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 1
  store ptr addrspace(1) %121, ptr addrspace(1) %122
  %123 = and i64 72057594037927935, 3
  %124 = or i64 2449958197289549824, %123
  %125 = getelementptr i8, ptr addrspace(1) null, i64 %124
  %126 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %114, i64 0, i64 2
  store ptr addrspace(1) %125, ptr addrspace(1) %126
  %127 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %111, i64 0, i32 1
  store i64 3, ptr addrspace(1) %127
  %128 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %129 = getelementptr i8, ptr addrspace(1) %128, i64 864691128455135236
  store ptr addrspace(1) %129, ptr %15
  %130 = load ptr addrspace(1), ptr %15
  store ptr addrspace(1) %130, ptr %x
  %131 = load ptr addrspace(1), ptr %x
  %132 = zext i1 1 to i64
  %133 = or i64 %132, 72057594037927936
  %134 = getelementptr i8, ptr addrspace(1) null, i64 %133
  %135 = icmp ne ptr addrspace(1) %131, %134
  store i1 %135, ptr %16
  %136 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %137 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 3
  %138 = load ptr addrspace(1), ptr addrspace(1) %137, align 8
  %139 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %140 = load i1, ptr %16
  %141 = zext i1 %140 to i64
  %142 = or i64 %141, 72057594037927936
  %143 = getelementptr i8, ptr addrspace(1) null, i64 %142
  %144 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %139, i64 0, i64 0
  store ptr addrspace(1) %143, ptr addrspace(1) %144
  %145 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %136, i64 0, i32 1
  store i64 1, ptr addrspace(1) %145
  %146 = bitcast ptr addrspace(1) %136 to ptr addrspace(1)
  %147 = getelementptr i8, ptr addrspace(1) %146, i64 864691128455135236
  store ptr addrspace(1) %147, ptr %17
  %148 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %148), !dbg !21
  store ptr addrspace(1) null, ptr %18
  %149 = load ptr addrspace(1), ptr %x
  %150 = icmp ne ptr addrspace(1) %149, null
  store i1 %150, ptr %19
  %151 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %152 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 3
  %153 = load ptr addrspace(1), ptr addrspace(1) %152, align 8
  %154 = bitcast ptr addrspace(1) %153 to ptr addrspace(1)
  %155 = load i1, ptr %19
  %156 = zext i1 %155 to i64
  %157 = or i64 %156, 72057594037927936
  %158 = getelementptr i8, ptr addrspace(1) null, i64 %157
  %159 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %154, i64 0, i64 0
  store ptr addrspace(1) %158, ptr addrspace(1) %159
  %160 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %151, i64 0, i32 1
  store i64 1, ptr addrspace(1) %160
  %161 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %162 = getelementptr i8, ptr addrspace(1) %161, i64 864691128455135236
  store ptr addrspace(1) %162, ptr %20
  %163 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %163), !dbg !23
  store ptr addrspace(1) null, ptr %21
  ret void
164:
  %165 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %165), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/03-equal/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 12, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 15, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 4, scope: !5)
!16 = !DILocation(line: 9, column: 8, scope: !5)
!17 = !DILocation(line: 10, column: 15, scope: !5)
!18 = !DILocation(line: 10, column: 4, scope: !5)
!19 = !DILocation(line: 11, column: 8, scope: !5)
!20 = !DILocation(line: 12, column: 15, scope: !5)
!21 = !DILocation(line: 12, column: 4, scope: !5)
!22 = !DILocation(line: 13, column: 15, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
