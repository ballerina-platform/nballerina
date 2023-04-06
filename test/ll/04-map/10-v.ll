@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 9, i16 9, [12 x i8] c"Wednesday\00\00\00"}, align 8
@.str3 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Thursday\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"Saturday\00\00\00\00"}, align 8
@_Bi04root1 = external constant {i32}
@_Bi04root2 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1)) readnone
declare i64 @_Bb0m4lang5arraylength(ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1), ptr addrspace(1)) readnone
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1), i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %days = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %dayNumber = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i64
  %i = alloca i64
  %4 = alloca i1
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %70, label %16
16:
  %17 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 7), !dbg !9
  %18 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 3
  %19 = load ptr addrspace(1), ptr addrspace(1) %18, align 8
  %20 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %21 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738040557668298573), ptr addrspace(1) %21
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 1
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2700296535645975892), ptr addrspace(1) %22
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 2
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %23
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 3
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str3 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %24
  %25 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 4
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738040557667971654), ptr addrspace(1) %25
  %26 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 5
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str5 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %26
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %20, i64 0, i64 6
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738040557668300115), ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %17, i64 0, i32 1
  store i64 7, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %1
  %31 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %31, ptr %days
  %32 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root1, i64 0), !dbg !10
  store ptr addrspace(1) %32, ptr %2
  %33 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %33, ptr %dayNumber
  %34 = load ptr addrspace(1), ptr %days
  %35 = call ptr addrspace(1) @_bal_tagged_clear_exact_ptr(ptr addrspace(1) %34), !dbg !11
  %36 = call i64 @_Bb0m4lang5arraylength(ptr addrspace(1) %35), !dbg !12
  store i64 %36, ptr %3
  store i64 0, ptr %i
  br label %37
37:
  %38 = load i64, ptr %i
  %39 = load i64, ptr %3
  %40 = icmp slt i64 %38, %39
  store i1 %40, ptr %4
  %41 = load i1, ptr %4
  br i1 %41, label %56, label %42
42:
  %43 = load ptr addrspace(1), ptr %dayNumber
  %44 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %43, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738040557668300115)), !dbg !13
  %45 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %43, ptr addrspace(1) %44), !dbg !14
  store ptr addrspace(1) %45, ptr %9
  %46 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root2, i64 1), !dbg !15
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 3
  %48 = load ptr addrspace(1), ptr addrspace(1) %47, align 8
  %49 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %50 = load ptr addrspace(1), ptr %9
  %51 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %49, i64 0, i64 0
  store ptr addrspace(1) %50, ptr addrspace(1) %51
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %46, i64 0, i32 1
  store i64 1, ptr addrspace(1) %52
  %53 = bitcast ptr addrspace(1) %46 to ptr addrspace(1)
  %54 = getelementptr i8, ptr addrspace(1) %53, i64 864691128455135236
  store ptr addrspace(1) %54, ptr %10
  %55 = load ptr addrspace(1), ptr %10
  call void @_Bb02ioprintln(ptr addrspace(1) %55), !dbg !16
  store ptr addrspace(1) null, ptr %11
  ret void
56:
  %57 = load ptr addrspace(1), ptr %days
  %58 = load i64, ptr %i
  %59 = call ptr addrspace(1) @llvm.ptrmask.p1.i64(ptr addrspace(1) %57, i64 72057594037927928)
  %60 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %61 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 1
  %62 = load i64, ptr addrspace(1) %61, align 8
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %72, label %84
64:
  %65 = load i64, ptr %i
  %66 = add nsw i64 %65, 1
  store i64 %66, ptr %8
  %67 = load i64, ptr %8
  store i64 %67, ptr %i
  br label %37
68:
  %69 = load ptr addrspace(1), ptr %12
  call void @_bal_panic(ptr addrspace(1) %69), !dbg !20
  unreachable
70:
  %71 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %71), !dbg !8
  unreachable
72:
  %73 = getelementptr {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %60, i64 0, i32 0
  %74 = load ptr, ptr addrspace(1) %73, align 8
  %75 = getelementptr {i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, [0 x i64]}, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = call ptr addrspace(1) %76(ptr addrspace(1) %57, i64 %58)
  %78 = call ptr addrspace(1) @_bal_tagged_member_clear_exact_any(ptr addrspace(1) %57, ptr addrspace(1) %77), !dbg !17
  store ptr addrspace(1) %78, ptr %5
  %79 = load ptr addrspace(1), ptr %5
  %80 = addrspacecast ptr addrspace(1) %79 to ptr
  %81 = ptrtoint ptr %80 to i64
  %82 = and i64 %81, 2233785415175766016
  %83 = icmp eq i64 %82, 360287970189639680
  br i1 %83, label %86, label %90
84:
  %85 = call ptr addrspace(1) @_bal_panic_construct(i64 2053), !dbg !7
  store ptr addrspace(1) %85, ptr %12
  br label %68
86:
  store ptr addrspace(1) %79, ptr %6
  %87 = load i64, ptr %i
  %88 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %87, i64 1)
  %89 = extractvalue {i64, i1} %88, 1
  br i1 %89, label %100, label %92
90:
  %91 = call ptr addrspace(1) @_bal_panic_construct(i64 2051), !dbg !7
  store ptr addrspace(1) %91, ptr %12
  br label %68
92:
  %93 = extractvalue {i64, i1} %88, 0
  store i64 %93, ptr %7
  %94 = load ptr addrspace(1), ptr %6
  %95 = load ptr addrspace(1), ptr %dayNumber
  %96 = load i64, ptr %7
  %97 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %96), !dbg !18
  %98 = call i64 @_bal_mapping_set(ptr addrspace(1) %95, ptr addrspace(1) %94, ptr addrspace(1) %97), !dbg !19
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %102, label %103
100:
  %101 = call ptr addrspace(1) @_bal_panic_construct(i64 2049), !dbg !7
  store ptr addrspace(1) %101, ptr %12
  br label %68
102:
  br label %64
103:
  %104 = or i64 %98, 2048
  %105 = call ptr addrspace(1) @_bal_panic_construct(i64 %104), !dbg !7
  store ptr addrspace(1) %105, ptr %12
  br label %68
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-map/10-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 17, scope: !5)
!10 = !DILocation(line: 6, column: 25, scope: !5)
!11 = !DILocation(line: 7, column: 32, scope: !5)
!12 = !DILocation(line: 7, column: 32, scope: !5)
!13 = !DILocation(line: 10, column: 24, scope: !5)
!14 = !DILocation(line: 10, column: 24, scope: !5)
!15 = !DILocation(line: 10, column: 15, scope: !5)
!16 = !DILocation(line: 10, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 30, scope: !5)
!18 = !DILocation(line: 8, column: 17, scope: !5)
!19 = !DILocation(line: 8, column: 17, scope: !5)
!20 = !DILocation(line: 11, column: 0, scope: !5)
