@_bal_stack_guard = external global ptr
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 2, i64 2452209997103235072], align 8
@_Bi04root0 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i64] [i64 33, i64 2453758109475143680], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x1 = alloca ptr addrspace(1)
  %1 = alloca double
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %x2 = alloca ptr addrspace(1)
  %4 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %x3 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca double
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %60, label %15
15:
  %16 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %17 = getelementptr i8, ptr addrspace(1) %16, i64 288230376151711744
  store ptr addrspace(1) %17, ptr %x1
  %18 = load ptr addrspace(1), ptr %x1
  %19 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %18), !dbg !9
  %20 = call double @_bal_tagged_to_float(ptr addrspace(1) %19), !dbg !10
  store double %20, ptr %1
  %21 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %22 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 3
  %23 = load ptr addrspace(1), ptr addrspace(1) %22, align 8
  %24 = bitcast ptr addrspace(1) %23 to ptr addrspace(1)
  %25 = load double, ptr %1
  %26 = call ptr addrspace(1) @_bal_float_to_tagged(double %25), !dbg !12
  %27 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %24, i64 0, i64 0
  store ptr addrspace(1) %26, ptr addrspace(1) %27
  %28 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %21, i64 0, i32 1
  store i64 1, ptr addrspace(1) %28
  %29 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %30 = getelementptr i8, ptr addrspace(1) %29, i64 864691128455135236
  store ptr addrspace(1) %30, ptr %2
  %31 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %31), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %32 = addrspacecast ptr bitcast(ptr @.dec1 to ptr) to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 288230376151711744
  store ptr addrspace(1) %33, ptr %x2
  %34 = load ptr addrspace(1), ptr %x2
  %35 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %34), !dbg !14
  %36 = call double @_bal_tagged_to_float(ptr addrspace(1) %35), !dbg !15
  store double %36, ptr %4
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = load double, ptr %4
  %42 = call ptr addrspace(1) @_bal_float_to_tagged(double %41), !dbg !17
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %42, ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %5
  %47 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !18
  store ptr addrspace(1) null, ptr %6
  %48 = and i64 72057594037927935, 2
  %49 = or i64 2449958197289549824, %48
  %50 = getelementptr i8, ptr addrspace(1) null, i64 %49
  store ptr addrspace(1) %50, ptr %x3
  %51 = load ptr addrspace(1), ptr %x3
  %52 = call ptr addrspace(1) @_bal_convert_to_float(ptr addrspace(1) %51), !dbg !19
  store ptr addrspace(1) %52, ptr %7
  %53 = load ptr addrspace(1), ptr %7
  %54 = addrspacecast ptr addrspace(1) %53 to ptr
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 2233785415175766016
  %57 = icmp eq i64 %56, 216172782113783808
  br i1 %57, label %62, label %75
58:
  %59 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %59), !dbg !24
  unreachable
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %61), !dbg !8
  unreachable
62:
  %63 = call double @_bal_tagged_to_float(ptr addrspace(1) %53), !dbg !20
  store double %63, ptr %8
  %64 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %65 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 3
  %66 = load ptr addrspace(1), ptr addrspace(1) %65, align 8
  %67 = bitcast ptr addrspace(1) %66 to ptr addrspace(1)
  %68 = load double, ptr %8
  %69 = call ptr addrspace(1) @_bal_float_to_tagged(double %68), !dbg !22
  %70 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %67, i64 0, i64 0
  store ptr addrspace(1) %69, ptr addrspace(1) %70
  %71 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %64, i64 0, i32 1
  store i64 1, ptr addrspace(1) %71
  %72 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %73 = getelementptr i8, ptr addrspace(1) %72, i64 864691128455135236
  store ptr addrspace(1) %73, ptr %9
  %74 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %74), !dbg !23
  store ptr addrspace(1) null, ptr %10
  ret void
75:
  %76 = call ptr addrspace(1) @_bal_panic_construct(i64 2819), !dbg !7
  store ptr addrspace(1) %76, ptr %11
  br label %58
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/tofloat3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 15, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 15, scope: !5)
!15 = !DILocation(line: 8, column: 15, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 11, column: 15, scope: !5)
!20 = !DILocation(line: 11, column: 15, scope: !5)
!21 = !DILocation(line: 11, column: 15, scope: !5)
!22 = !DILocation(line: 11, column: 15, scope: !5)
!23 = !DILocation(line: 11, column: 4, scope: !5)
!24 = !DILocation(line: 12, column: 0, scope: !5)
