@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 1, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 1, i64 -6771162039751540736], align 8
@.dec2 = internal unnamed_addr constant [2 x i64] [i64 0, i64 2452209997103235072], align 8
@.dec3 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 8646858456403230671], align 8
@.dec4 = internal unnamed_addr constant [2 x i64] [i64 -865536378825081601, i64 7215769306062077903], align 8
@.dec5 = internal unnamed_addr constant [2 x i64] [i64 5, i64 2462202358776463360], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %d1 = alloca ptr addrspace(1)
  %d2 = alloca ptr addrspace(1)
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
  br i1 %19, label %32, label %20
20:
  %21 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 288230376151711744
  store ptr addrspace(1) %22, ptr %d1
  %23 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %24 = getelementptr i8, ptr addrspace(1) %23, i64 288230376151711744
  store ptr addrspace(1) %24, ptr %d2
  %25 = load ptr addrspace(1), ptr %d1
  %26 = load ptr addrspace(1), ptr %d2
  %27 = call {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1) %25, ptr addrspace(1) %26), !dbg !9
  %28 = extractvalue {ptr addrspace(1), i64} %27, 1
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %55, label %34
30:
  %31 = load ptr addrspace(1), ptr %16
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !24
  unreachable
32:
  %33 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %33), !dbg !8
  unreachable
34:
  %35 = extractvalue {ptr addrspace(1), i64} %27, 0
  store ptr addrspace(1) %35, ptr %1
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load ptr addrspace(1), ptr %1
  %41 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %40, ptr addrspace(1) %41
  %42 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %42
  %43 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %44 = getelementptr i8, ptr addrspace(1) %43, i64 864691128455135236
  store ptr addrspace(1) %44, ptr %2
  %45 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %45), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %46 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 288230376151711744
  store ptr addrspace(1) %47, ptr %d1
  %48 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 288230376151711744
  store ptr addrspace(1) %49, ptr %d2
  %50 = load ptr addrspace(1), ptr %d1
  %51 = load ptr addrspace(1), ptr %d2
  %52 = call {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1) %50, ptr addrspace(1) %51), !dbg !12
  %53 = extractvalue {ptr addrspace(1), i64} %52, 1
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %79, label %58
55:
  %56 = or i64 %28, 1280
  %57 = call ptr addrspace(1) @_bal_panic_construct(i64 %56), !dbg !7
  store ptr addrspace(1) %57, ptr %16
  br label %30
58:
  %59 = extractvalue {ptr addrspace(1), i64} %52, 0
  store ptr addrspace(1) %59, ptr %4
  %60 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 3
  %62 = load ptr addrspace(1), ptr addrspace(1) %61, align 8
  %63 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %64 = load ptr addrspace(1), ptr %4
  %65 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %63, i64 0, i64 0
  store ptr addrspace(1) %64, ptr addrspace(1) %65
  %66 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  store i64 1, ptr addrspace(1) %66
  %67 = bitcast ptr addrspace(1) %60 to ptr addrspace(1)
  %68 = getelementptr i8, ptr addrspace(1) %67, i64 864691128455135236
  store ptr addrspace(1) %68, ptr %5
  %69 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %69), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %70 = addrspacecast ptr bitcast(ptr @.dec2 to ptr) to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 288230376151711744
  store ptr addrspace(1) %71, ptr %d1
  %72 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 288230376151711744
  store ptr addrspace(1) %73, ptr %d2
  %74 = load ptr addrspace(1), ptr %d1
  %75 = load ptr addrspace(1), ptr %d2
  %76 = call {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1) %74, ptr addrspace(1) %75), !dbg !15
  %77 = extractvalue {ptr addrspace(1), i64} %76, 1
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %103, label %82
79:
  %80 = or i64 %53, 2304
  %81 = call ptr addrspace(1) @_bal_panic_construct(i64 %80), !dbg !7
  store ptr addrspace(1) %81, ptr %16
  br label %30
82:
  %83 = extractvalue {ptr addrspace(1), i64} %76, 0
  store ptr addrspace(1) %83, ptr %7
  %84 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %85 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 3
  %86 = load ptr addrspace(1), ptr addrspace(1) %85, align 8
  %87 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %88 = load ptr addrspace(1), ptr %7
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %87, i64 0, i64 0
  store ptr addrspace(1) %88, ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %84, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %84 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %8
  %93 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %94 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %95 = getelementptr i8, ptr addrspace(1) %94, i64 288230376151711744
  store ptr addrspace(1) %95, ptr %d1
  %96 = addrspacecast ptr bitcast(ptr @.dec3 to ptr) to ptr addrspace(1)
  %97 = getelementptr i8, ptr addrspace(1) %96, i64 288230376151711744
  store ptr addrspace(1) %97, ptr %d2
  %98 = load ptr addrspace(1), ptr %d1
  %99 = load ptr addrspace(1), ptr %d2
  %100 = call {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1) %98, ptr addrspace(1) %99), !dbg !18
  %101 = extractvalue {ptr addrspace(1), i64} %100, 1
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %127, label %106
103:
  %104 = or i64 %77, 3328
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 %104), !dbg !7
  store ptr addrspace(1) %105, ptr %16
  br label %30
106:
  %107 = extractvalue {ptr addrspace(1), i64} %100, 0
  store ptr addrspace(1) %107, ptr %10
  %108 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %109 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 3
  %110 = load ptr addrspace(1), ptr addrspace(1) %109, align 8
  %111 = bitcast ptr addrspace(1) %110 to ptr addrspace(1)
  %112 = load ptr addrspace(1), ptr %10
  %113 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %111, i64 0, i64 0
  store ptr addrspace(1) %112, ptr addrspace(1) %113
  %114 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %108, i64 0, i32 1
  store i64 1, ptr addrspace(1) %114
  %115 = bitcast ptr addrspace(1) %108 to ptr addrspace(1)
  %116 = getelementptr i8, ptr addrspace(1) %115, i64 864691128455135236
  store ptr addrspace(1) %116, ptr %11
  %117 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %117), !dbg !20
  store ptr addrspace(1) null, ptr %12
  %118 = addrspacecast ptr bitcast(ptr @.dec4 to ptr) to ptr addrspace(1)
  %119 = getelementptr i8, ptr addrspace(1) %118, i64 288230376151711744
  store ptr addrspace(1) %119, ptr %d1
  %120 = addrspacecast ptr bitcast(ptr @.dec5 to ptr) to ptr addrspace(1)
  %121 = getelementptr i8, ptr addrspace(1) %120, i64 288230376151711744
  store ptr addrspace(1) %121, ptr %d2
  %122 = load ptr addrspace(1), ptr %d1
  %123 = load ptr addrspace(1), ptr %d2
  %124 = call {ptr addrspace(1), i64} @_bal_decimal_div(ptr addrspace(1) %122, ptr addrspace(1) %123), !dbg !21
  %125 = extractvalue {ptr addrspace(1), i64} %124, 1
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %142, label %130
127:
  %128 = or i64 %101, 4352
  %129 = call ptr addrspace(1) @_bal_panic_construct(i64 %128), !dbg !7
  store ptr addrspace(1) %129, ptr %16
  br label %30
130:
  %131 = extractvalue {ptr addrspace(1), i64} %124, 0
  store ptr addrspace(1) %131, ptr %13
  %132 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !22
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 3
  %134 = load ptr addrspace(1), ptr addrspace(1) %133, align 8
  %135 = bitcast ptr addrspace(1) %134 to ptr addrspace(1)
  %136 = load ptr addrspace(1), ptr %13
  %137 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %135, i64 0, i64 0
  store ptr addrspace(1) %136, ptr addrspace(1) %137
  %138 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %132, i64 0, i32 1
  store i64 1, ptr addrspace(1) %138
  %139 = bitcast ptr addrspace(1) %132 to ptr addrspace(1)
  %140 = getelementptr i8, ptr addrspace(1) %139, i64 864691128455135236
  store ptr addrspace(1) %140, ptr %14
  %141 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %141), !dbg !23
  store ptr addrspace(1) null, ptr %15
  ret void
142:
  %143 = or i64 %125, 5376
  %144 = call ptr addrspace(1) @_bal_panic_construct(i64 %143), !dbg !7
  store ptr addrspace(1) %144, ptr %16
  br label %30
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/div5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 18, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 18, scope: !5)
!13 = !DILocation(line: 9, column: 15, scope: !5)
!14 = !DILocation(line: 9, column: 4, scope: !5)
!15 = !DILocation(line: 13, column: 18, scope: !5)
!16 = !DILocation(line: 13, column: 15, scope: !5)
!17 = !DILocation(line: 13, column: 4, scope: !5)
!18 = !DILocation(line: 17, column: 18, scope: !5)
!19 = !DILocation(line: 17, column: 15, scope: !5)
!20 = !DILocation(line: 17, column: 4, scope: !5)
!21 = !DILocation(line: 21, column: 18, scope: !5)
!22 = !DILocation(line: 21, column: 15, scope: !5)
!23 = !DILocation(line: 21, column: 4, scope: !5)
!24 = !DILocation(line: 22, column: 0, scope: !5)
