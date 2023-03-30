@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %v = alloca ptr addrspace(1)
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i1
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca i1
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca i64
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca i8
  %22 = load ptr, ptr @_bal_stack_guard
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %30, label %24
24:
  store i64 1, ptr %x
  %25 = load i64, ptr %x
  %26 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %25, i64 3)
  %27 = extractvalue {i64, i1} %26, 1
  br i1 %27, label %114, label %32
28:
  %29 = load ptr addrspace(1), ptr %20
  call void @_bal_panic(ptr addrspace(1) %29), !dbg !23
  unreachable
30:
  %31 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %31), !dbg !8
  unreachable
32:
  %33 = extractvalue {i64, i1} %26, 0
  store i64 %33, ptr %1
  %34 = load i64, ptr %1
  %35 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %34), !dbg !9
  store ptr addrspace(1) %35, ptr %v
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load ptr addrspace(1), ptr %v
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
  %46 = load i64, ptr %x
  %47 = icmp eq i64 %46, 1
  store i1 %47, ptr %4
  %48 = load i1, ptr %4
  %49 = zext i1 %48 to i64
  %50 = or i64 %49, 72057594037927936
  %51 = getelementptr i8, ptr addrspace(1) null, i64 %50
  store ptr addrspace(1) %51, ptr %v
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = load ptr addrspace(1), ptr %v
  %57 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) %56, ptr addrspace(1) %57
  %58 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %58
  %59 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %60 = getelementptr i8, ptr addrspace(1) %59, i64 864691128455135236
  store ptr addrspace(1) %60, ptr %5
  %61 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %61), !dbg !13
  store ptr addrspace(1) null, ptr %6
  %62 = load i64, ptr %x
  %63 = icmp sgt i64 %62, 2
  store i1 %63, ptr %7
  %64 = load i1, ptr %7
  %65 = zext i1 %64 to i64
  %66 = or i64 %65, 72057594037927936
  %67 = getelementptr i8, ptr addrspace(1) null, i64 %66
  store ptr addrspace(1) %67, ptr %v
  %68 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !14
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 3
  %70 = load ptr addrspace(1), ptr addrspace(1) %69, align 8
  %71 = bitcast ptr addrspace(1) %70 to ptr addrspace(1)
  %72 = load ptr addrspace(1), ptr %v
  %73 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %71, i64 0, i64 0
  store ptr addrspace(1) %72, ptr addrspace(1) %73
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %68, i64 0, i32 1
  store i64 1, ptr addrspace(1) %74
  %75 = bitcast ptr addrspace(1) %68 to ptr addrspace(1)
  %76 = getelementptr i8, ptr addrspace(1) %75, i64 864691128455135236
  store ptr addrspace(1) %76, ptr %8
  %77 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %77), !dbg !15
  store ptr addrspace(1) null, ptr %9
  %78 = load i64, ptr %x
  %79 = icmp sgt i64 %78, 2
  store i1 %79, ptr %10
  %80 = load i1, ptr %10
  %81 = xor i1 1, %80
  store i1 %81, ptr %11
  %82 = load i1, ptr %11
  %83 = zext i1 %82 to i64
  %84 = or i64 %83, 72057594037927936
  %85 = getelementptr i8, ptr addrspace(1) null, i64 %84
  store ptr addrspace(1) %85, ptr %v
  %86 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %87 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 3
  %88 = load ptr addrspace(1), ptr addrspace(1) %87, align 8
  %89 = bitcast ptr addrspace(1) %88 to ptr addrspace(1)
  %90 = load ptr addrspace(1), ptr %v
  %91 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %89, i64 0, i64 0
  store ptr addrspace(1) %90, ptr addrspace(1) %91
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %86, i64 0, i32 1
  store i64 1, ptr addrspace(1) %92
  %93 = bitcast ptr addrspace(1) %86 to ptr addrspace(1)
  %94 = getelementptr i8, ptr addrspace(1) %93, i64 864691128455135236
  store ptr addrspace(1) %94, ptr %12
  %95 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %95), !dbg !17
  store ptr addrspace(1) null, ptr %13
  %96 = load i64, ptr %x
  %97 = icmp sge i64 %96, 1
  store i1 %97, ptr %14
  %98 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %99 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 3
  %100 = load ptr addrspace(1), ptr addrspace(1) %99, align 8
  %101 = bitcast ptr addrspace(1) %100 to ptr addrspace(1)
  %102 = load i1, ptr %14
  %103 = zext i1 %102 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, ptr addrspace(1) null, i64 %104
  %106 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %101, i64 0, i64 0
  store ptr addrspace(1) %105, ptr addrspace(1) %106
  %107 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %98, i64 0, i32 1
  store i64 1, ptr addrspace(1) %107
  %108 = bitcast ptr addrspace(1) %98 to ptr addrspace(1)
  %109 = getelementptr i8, ptr addrspace(1) %108, i64 864691128455135236
  store ptr addrspace(1) %109, ptr %15
  %110 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %110), !dbg !19
  store ptr addrspace(1) null, ptr %16
  %111 = load i64, ptr %x
  %112 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %111, i64 2)
  %113 = extractvalue {i64, i1} %112, 1
  br i1 %113, label %129, label %116
114:
  %115 = call ptr addrspace(1) @_bal_panic_construct(i64 1281), !dbg !7
  store ptr addrspace(1) %115, ptr %20
  br label %28
116:
  %117 = extractvalue {i64, i1} %112, 0
  store i64 %117, ptr %17
  %118 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !20
  %119 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 3
  %120 = load ptr addrspace(1), ptr addrspace(1) %119, align 8
  %121 = bitcast ptr addrspace(1) %120 to ptr addrspace(1)
  %122 = load i64, ptr %17
  %123 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %122), !dbg !21
  %124 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %121, i64 0, i64 0
  store ptr addrspace(1) %123, ptr addrspace(1) %124
  %125 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %118, i64 0, i32 1
  store i64 1, ptr addrspace(1) %125
  %126 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %127 = getelementptr i8, ptr addrspace(1) %126, i64 864691128455135236
  store ptr addrspace(1) %127, ptr %18
  %128 = load ptr addrspace(1), ptr %18
  call void @_Bb02ioprintln(ptr addrspace(1) %128), !dbg !22
  store ptr addrspace(1) null, ptr %19
  ret void
129:
  %130 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !7
  store ptr addrspace(1) %130, ptr %20
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/02-any/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 10, scope: !5)
!10 = !DILocation(line: 6, column: 15, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 8, column: 15, scope: !5)
!13 = !DILocation(line: 8, column: 4, scope: !5)
!14 = !DILocation(line: 10, column: 15, scope: !5)
!15 = !DILocation(line: 10, column: 4, scope: !5)
!16 = !DILocation(line: 12, column: 15, scope: !5)
!17 = !DILocation(line: 12, column: 4, scope: !5)
!18 = !DILocation(line: 13, column: 15, scope: !5)
!19 = !DILocation(line: 13, column: 4, scope: !5)
!20 = !DILocation(line: 14, column: 15, scope: !5)
!21 = !DILocation(line: 14, column: 15, scope: !5)
!22 = !DILocation(line: 14, column: 4, scope: !5)
!23 = !DILocation(line: 15, column: 0, scope: !5)
