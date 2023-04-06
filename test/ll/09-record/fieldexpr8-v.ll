@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 12, i16 12, [12 x i8] c"booleanField"}, align 8
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"floatField\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"intField\00\00\00\00"}, align 8
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca double
  %3 = alloca double
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca i8
  %16 = load ptr, ptr @_bal_stack_guard
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %72, label %18
18:
  %19 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 3), !dbg !9
  %20 = zext i1 0 to i64
  %21 = or i64 %20, 72057594037927936
  %22 = getelementptr i8, ptr addrspace(1) null, i64 %21
  call void @_bal_mapping_init_member(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str0 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %22), !dbg !10
  %23 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !11
  call void @_bal_mapping_init_member(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %23), !dbg !12
  %24 = and i64 72057594037927935, 17
  %25 = or i64 2449958197289549824, %24
  %26 = getelementptr i8, ptr addrspace(1) null, i64 %25
  call void @_bal_mapping_init_member(ptr addrspace(1) %19, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %26), !dbg !13
  store ptr addrspace(1) %19, ptr %1
  %27 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %27, ptr %r
  %28 = load ptr addrspace(1), ptr %r
  %29 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %28, i64 1), !dbg !14
  %30 = call double @_bal_tagged_to_float(ptr addrspace(1) %29), !dbg !15
  store double %30, ptr %2
  %31 = load double, ptr %2
  %32 = fadd double %31, 1.0
  store double %32, ptr %3
  %33 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !16
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 3
  %35 = load ptr addrspace(1), ptr addrspace(1) %34, align 8
  %36 = bitcast ptr addrspace(1) %35 to ptr addrspace(1)
  %37 = load double, ptr %3
  %38 = call ptr addrspace(1) @_bal_float_to_tagged(double %37), !dbg !17
  %39 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %36, i64 0, i64 0
  store ptr addrspace(1) %38, ptr addrspace(1) %39
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %33, i64 0, i32 1
  store i64 1, ptr addrspace(1) %40
  %41 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %42 = getelementptr i8, ptr addrspace(1) %41, i64 864691128455135236
  store ptr addrspace(1) %42, ptr %4
  %43 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %43), !dbg !18
  store ptr addrspace(1) null, ptr %5
  %44 = load ptr addrspace(1), ptr %r
  %45 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %44, i64 0), !dbg !19
  %46 = addrspacecast ptr addrspace(1) %45 to ptr
  %47 = ptrtoint ptr %46 to i64
  %48 = trunc i64 %47 to i1
  store i1 %48, ptr %6
  %49 = load i1, ptr %6
  %50 = xor i1 1, %49
  store i1 %50, ptr %7
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !20
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load i1, ptr %7
  %56 = zext i1 %55 to i64
  %57 = or i64 %56, 72057594037927936
  %58 = getelementptr i8, ptr addrspace(1) null, i64 %57
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %58, ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %8
  %63 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !21
  store ptr addrspace(1) null, ptr %9
  %64 = load ptr addrspace(1), ptr %r
  %65 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %64, i64 2), !dbg !22
  %66 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %65), !dbg !23
  store i64 %66, ptr %10
  %67 = load i64, ptr %10
  %68 = call {i64, i1} @llvm.sadd.with.overflow.i64.i64(i64 %67, i64 2)
  %69 = extractvalue {i64, i1} %68, 1
  br i1 %69, label %87, label %74
70:
  %71 = load ptr addrspace(1), ptr %14
  call void @_bal_panic(ptr addrspace(1) %71), !dbg !27
  unreachable
72:
  %73 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %73), !dbg !8
  unreachable
74:
  %75 = extractvalue {i64, i1} %68, 0
  store i64 %75, ptr %11
  %76 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !24
  %77 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 3
  %78 = load ptr addrspace(1), ptr addrspace(1) %77, align 8
  %79 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %80 = load i64, ptr %11
  %81 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %80), !dbg !25
  %82 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %79, i64 0, i64 0
  store ptr addrspace(1) %81, ptr addrspace(1) %82
  %83 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %76, i64 0, i32 1
  store i64 1, ptr addrspace(1) %83
  %84 = bitcast ptr addrspace(1) %76 to ptr addrspace(1)
  %85 = getelementptr i8, ptr addrspace(1) %84, i64 864691128455135236
  store ptr addrspace(1) %85, ptr %12
  %86 = load ptr addrspace(1), ptr %12
  call void @_Bb02ioprintln(ptr addrspace(1) %86), !dbg !26
  store ptr addrspace(1) null, ptr %13
  ret void
87:
  %88 = call ptr addrspace(1) @_bal_panic_construct(i64 3841), !dbg !7
  store ptr addrspace(1) %88, ptr %14
  br label %70
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/09-record/fieldexpr8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 8, column: 11, scope: !5)
!10 = !DILocation(line: 8, column: 11, scope: !5)
!11 = !DILocation(line: 8, column: 11, scope: !5)
!12 = !DILocation(line: 8, column: 11, scope: !5)
!13 = !DILocation(line: 8, column: 11, scope: !5)
!14 = !DILocation(line: 13, column: 16, scope: !5)
!15 = !DILocation(line: 13, column: 16, scope: !5)
!16 = !DILocation(line: 13, column: 15, scope: !5)
!17 = !DILocation(line: 13, column: 15, scope: !5)
!18 = !DILocation(line: 13, column: 4, scope: !5)
!19 = !DILocation(line: 14, column: 17, scope: !5)
!20 = !DILocation(line: 14, column: 15, scope: !5)
!21 = !DILocation(line: 14, column: 4, scope: !5)
!22 = !DILocation(line: 15, column: 16, scope: !5)
!23 = !DILocation(line: 15, column: 16, scope: !5)
!24 = !DILocation(line: 15, column: 15, scope: !5)
!25 = !DILocation(line: 15, column: 15, scope: !5)
!26 = !DILocation(line: 15, column: 4, scope: !5)
!27 = !DILocation(line: 16, column: 0, scope: !5)
