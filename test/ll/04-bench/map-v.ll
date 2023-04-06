@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64)
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1)) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %sum = alloca i64
  %count = alloca i64
  %i = alloca i64
  %2 = alloca i1
  %x = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca i64
  %i.1 = alloca i64
  %7 = alloca i1
  %x.1 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca i8
  %19 = load ptr, ptr @_bal_stack_guard
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %65, label %21
21:
  %22 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %22, ptr %1
  %23 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %23, ptr %m
  store i64 0, ptr %sum
  store i64 10000000, ptr %count
  store i64 0, ptr %i
  br label %24
24:
  %25 = load i64, ptr %i
  %26 = load i64, ptr %count
  %27 = icmp slt i64 %25, %26
  store i1 %27, ptr %2
  %28 = load i1, ptr %2
  br i1 %28, label %30, label %29
29:
  store i64 0, ptr %i.1
  br label %38
30:
  %31 = load i64, ptr %i
  %32 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 48879, i64 %31)
  %33 = extractvalue {i64, i1} %32, 1
  br i1 %33, label %110, label %103
34:
  %35 = load i64, ptr %i
  %36 = add nsw i64 %35, 1
  store i64 %36, ptr %6
  %37 = load i64, ptr %6
  store i64 %37, ptr %i
  br label %24
38:
  %39 = load i64, ptr %i.1
  %40 = load i64, ptr %count
  %41 = icmp slt i64 %39, %40
  store i1 %41, ptr %7
  %42 = load i1, ptr %7
  br i1 %42, label %55, label %43
43:
  %44 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 3
  %46 = load ptr addrspace(1), ptr addrspace(1) %45, align 8
  %47 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %48 = load i64, ptr %sum
  %49 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %48), !dbg !11
  %50 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %47, i64 0, i64 0
  store ptr addrspace(1) %49, ptr addrspace(1) %50
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %44, i64 0, i32 1
  store i64 1, ptr addrspace(1) %51
  %52 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %53 = getelementptr i8, ptr addrspace(1) %52, i64 864691128455135236
  store ptr addrspace(1) %53, ptr %15
  %54 = load ptr addrspace(1), ptr %15
  call void @_Bb02ioprintln(ptr addrspace(1) %54), !dbg !12
  store ptr addrspace(1) null, ptr %16
  ret void
55:
  %56 = load i64, ptr %i.1
  %57 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 48879, i64 %56)
  %58 = extractvalue {i64, i1} %57, 1
  br i1 %58, label %79, label %67
59:
  %60 = load i64, ptr %i.1
  %61 = add nsw i64 %60, 1
  store i64 %61, ptr %14
  %62 = load i64, ptr %14
  store i64 %62, ptr %i.1
  br label %38
63:
  %64 = load ptr addrspace(1), ptr %17
  call void @_bal_panic(ptr addrspace(1) %64), !dbg !21
  unreachable
65:
  %66 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %66), !dbg !8
  unreachable
67:
  %68 = extractvalue {i64, i1} %57, 0
  store i64 %68, ptr %8
  %69 = load i64, ptr %8
  store i64 %69, ptr %x.1
  %70 = load i64, ptr %x.1
  %71 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 %70), !dbg !13
  store ptr addrspace(1) %71, ptr %9
  %72 = load ptr addrspace(1), ptr %9
  %73 = load ptr addrspace(1), ptr %m
  %74 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %73, ptr addrspace(1) %72), !dbg !14
  %75 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %73, ptr addrspace(1) %74), !dbg !15
  store ptr addrspace(1) %75, ptr %10
  %76 = load ptr addrspace(1), ptr %10
  %77 = call {ptr addrspace(1), i1} @_bal_convert_to_int(ptr addrspace(1) %76), !dbg !16
  %78 = extractvalue {ptr addrspace(1), i1} %77, 1
  br i1 %78, label %88, label %81
79:
  %80 = call ptr addrspace(1) @_bal_panic_construct(i64 3585), !dbg !7
  store ptr addrspace(1) %80, ptr %17
  br label %63
81:
  %82 = extractvalue {ptr addrspace(1), i1} %77, 0
  store ptr addrspace(1) %82, ptr %11
  %83 = load ptr addrspace(1), ptr %11
  %84 = addrspacecast ptr addrspace(1) %83 to ptr
  %85 = ptrtoint ptr %84 to i64
  %86 = and i64 %85, 2233785415175766016
  %87 = icmp eq i64 %86, 144115188075855872
  br i1 %87, label %90, label %96
88:
  %89 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !7
  store ptr addrspace(1) %89, ptr %17
  br label %63
90:
  %91 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %83), !dbg !17
  store i64 %91, ptr %12
  %92 = load i64, ptr %sum
  %93 = load i64, ptr %12
  %94 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 %92, i64 %93)
  %95 = extractvalue {i64, i1} %94, 1
  br i1 %95, label %101, label %98
96:
  %97 = call ptr addrspace(1) @_bal_panic_construct(i64 3843), !dbg !7
  store ptr addrspace(1) %97, ptr %17
  br label %63
98:
  %99 = extractvalue {i64, i1} %94, 0
  store i64 %99, ptr %13
  %100 = load i64, ptr %13
  store i64 %100, ptr %sum
  br label %59
101:
  %102 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !7
  store ptr addrspace(1) %102, ptr %17
  br label %63
103:
  %104 = extractvalue {i64, i1} %32, 0
  store i64 %104, ptr %3
  %105 = load i64, ptr %3
  store i64 %105, ptr %x
  %106 = load i64, ptr %sum
  %107 = load i64, ptr %i
  %108 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %106, i64 %107)
  %109 = extractvalue {i64, i1} %108, 1
  br i1 %109, label %123, label %112
110:
  %111 = call ptr addrspace(1) @_bal_panic_construct(i64 2305), !dbg !7
  store ptr addrspace(1) %111, ptr %17
  br label %63
112:
  %113 = extractvalue {i64, i1} %108, 0
  store i64 %113, ptr %4
  %114 = load i64, ptr %4
  store i64 %114, ptr %sum
  %115 = load i64, ptr %x
  %116 = call ptr addrspace(1) @_Bb0m4lang3inttoHexString(i64 %115), !dbg !18
  store ptr addrspace(1) %116, ptr %5
  %117 = load ptr addrspace(1), ptr %5
  %118 = load ptr addrspace(1), ptr %m
  %119 = load i64, ptr %i
  %120 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %119), !dbg !19
  %121 = call i64 @_bal_mapping_set(ptr addrspace(1) %118, ptr addrspace(1) %117, ptr addrspace(1) %120), !dbg !20
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %125, label %126
123:
  %124 = call ptr addrspace(1) @_bal_panic_construct(i64 2561), !dbg !7
  store ptr addrspace(1) %124, ptr %17
  br label %63
125:
  br label %34
126:
  %127 = or i64 %121, 2816
  %128 = call ptr addrspace(1) @_bal_panic_construct(i64 %127), !dbg !7
  store ptr addrspace(1) %128, ptr %17
  br label %63
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-bench/map-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 17, scope: !5)
!10 = !DILocation(line: 17, column: 15, scope: !5)
!11 = !DILocation(line: 17, column: 15, scope: !5)
!12 = !DILocation(line: 17, column: 4, scope: !5)
!13 = !DILocation(line: 15, column: 29, scope: !5)
!14 = !DILocation(line: 15, column: 26, scope: !5)
!15 = !DILocation(line: 15, column: 26, scope: !5)
!16 = !DILocation(line: 15, column: 20, scope: !5)
!17 = !DILocation(line: 15, column: 20, scope: !5)
!18 = !DILocation(line: 11, column: 12, scope: !5)
!19 = !DILocation(line: 11, column: 9, scope: !5)
!20 = !DILocation(line: 11, column: 9, scope: !5)
!21 = !DILocation(line: 18, column: 0, scope: !5)
