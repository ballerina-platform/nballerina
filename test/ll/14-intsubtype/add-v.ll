@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %a = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %b = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca i8
  %20 = load ptr, ptr @_bal_stack_guard
  %21 = icmp ult ptr %19, %20
  br i1 %21, label %73, label %22
22:
  store i64 4294967295, ptr %a
  %23 = load i64, ptr %a
  %24 = load i64, ptr %a
  %25 = add nsw i64 %23, %24
  store i64 %25, ptr %1
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = load i64, ptr %1
  %31 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %30), !dbg !10
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %2
  %36 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !11
  store ptr addrspace(1) null, ptr %3
  store i64 -2147483648, ptr %b
  %37 = load i64, ptr %b
  %38 = load i64, ptr %b
  %39 = add nsw i64 %37, %38
  store i64 %39, ptr %4
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = load i64, ptr %4
  %45 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %44), !dbg !13
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) %45, ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %5
  %50 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !14
  store ptr addrspace(1) null, ptr %6
  %51 = load i64, ptr %a
  %52 = load i64, ptr %b
  %53 = add nsw i64 %51, %52
  store i64 %53, ptr %7
  %54 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %55 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 3
  %56 = load ptr addrspace(1), ptr addrspace(1) %55, align 8
  %57 = bitcast ptr addrspace(1) %56 to ptr addrspace(1)
  %58 = load i64, ptr %7
  %59 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %58), !dbg !16
  %60 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %57, i64 0, i64 0
  store ptr addrspace(1) %59, ptr addrspace(1) %60
  %61 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %54, i64 0, i32 1
  store i64 1, ptr addrspace(1) %61
  %62 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %63 = getelementptr i8, ptr addrspace(1) %62, i64 864691128455135236
  store ptr addrspace(1) %63, ptr %8
  %64 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %64), !dbg !17
  store ptr addrspace(1) null, ptr %9
  %65 = load i64, ptr %a
  %66 = sub nsw i64 0, %65
  store i64 %66, ptr %10
  %67 = load i64, ptr %10
  %68 = load i64, ptr %a
  %69 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %67, i64 %68)
  %70 = extractvalue {i64, i1} %69, 1
  br i1 %70, label %91, label %75
71:
  %72 = load ptr addrspace(1), ptr %18
  call void @_bal_panic(ptr addrspace(1) %72), !dbg !24
  unreachable
73:
  %74 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %74), !dbg !8
  unreachable
75:
  %76 = extractvalue {i64, i1} %69, 0
  store i64 %76, ptr %11
  %77 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 3
  %79 = load ptr addrspace(1), ptr addrspace(1) %78, align 8
  %80 = bitcast ptr addrspace(1) %79 to ptr addrspace(1)
  %81 = load i64, ptr %11
  %82 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %81), !dbg !19
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %80, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %77, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %77 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %12
  %87 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !20
  store ptr addrspace(1) null, ptr %13
  %88 = load i64, ptr %a
  %89 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %88)
  %90 = extractvalue {i64, i1} %89, 1
  br i1 %90, label %99, label %93
91:
  %92 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !7
  store ptr addrspace(1) %92, ptr %18
  br label %71
93:
  %94 = extractvalue {i64, i1} %89, 0
  store i64 %94, ptr %14
  %95 = load i64, ptr %14
  %96 = load i64, ptr %a
  %97 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %95, i64 %96)
  %98 = extractvalue {i64, i1} %97, 1
  br i1 %98, label %114, label %101
99:
  %100 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %100, ptr %18
  br label %71
101:
  %102 = extractvalue {i64, i1} %97, 0
  store i64 %102, ptr %15
  %103 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %104 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 3
  %105 = load ptr addrspace(1), ptr addrspace(1) %104, align 8
  %106 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %107 = load i64, ptr %15
  %108 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %107), !dbg !22
  %109 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %106, i64 0, i64 0
  store ptr addrspace(1) %108, ptr addrspace(1) %109
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %103, i64 0, i32 1
  store i64 1, ptr addrspace(1) %110
  %111 = bitcast ptr addrspace(1) %103 to ptr addrspace(1)
  %112 = getelementptr i8, ptr addrspace(1) %111, i64 864691128455135236
  store ptr addrspace(1) %112, ptr %16
  %113 = load ptr addrspace(1), ptr %16
  call void @_Bb02ioprintln(ptr addrspace(1) %113), !dbg !23
  store ptr addrspace(1) null, ptr %17
  ret void
114:
  %115 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %115, ptr %18
  br label %71
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-intsubtype/add-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 4, column: 15, scope: !5)
!10 = !DILocation(line: 4, column: 15, scope: !5)
!11 = !DILocation(line: 4, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 15, scope: !5)
!14 = !DILocation(line: 6, column: 4, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 15, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 15, scope: !5)
!20 = !DILocation(line: 8, column: 4, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 15, scope: !5)
!23 = !DILocation(line: 9, column: 4, scope: !5)
!24 = !DILocation(line: 10, column: 0, scope: !5)
