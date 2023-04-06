@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i64] [i64 16, i64 2452209997103235072], align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca double
  %x.2 = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %x.3 = alloca ptr addrspace(1)
  %x.4 = alloca double
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %x.5 = alloca ptr addrspace(1)
  %x.6 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %71, label %10
10:
  %11 = call ptr addrspace(1) @_bal_float_to_tagged(double 10.0), !dbg !9
  store ptr addrspace(1) %11, ptr %x
  %12 = load ptr addrspace(1), ptr %x
  %13 = addrspacecast ptr addrspace(1) %12 to ptr
  %14 = ptrtoint ptr %13 to i64
  %15 = and i64 %14, 2233785415175766016
  %16 = icmp eq i64 %15, 216172782113783808
  br i1 %16, label %17, label %29
17:
  %18 = load ptr addrspace(1), ptr %x
  %19 = call double @_bal_tagged_to_float(ptr addrspace(1) %18), !dbg !10
  store double %19, ptr %x.1
  %20 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %21 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 3
  %22 = load ptr addrspace(1), ptr addrspace(1) %21, align 8
  %23 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %24 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %23, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187973780532326), ptr addrspace(1) %24
  %25 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %20, i64 0, i32 1
  store i64 1, ptr addrspace(1) %25
  %26 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %27 = getelementptr i8, ptr addrspace(1) %26, i64 864691128455135236
  store ptr addrspace(1) %27, ptr %1
  %28 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %28), !dbg !12
  store ptr addrspace(1) null, ptr %2
  br label %29
29:
  %30 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %30, ptr %x.2
  %31 = addrspacecast ptr bitcast(ptr @.dec0 to ptr) to ptr addrspace(1)
  %32 = getelementptr i8, ptr addrspace(1) %31, i64 288230376151711744
  store ptr addrspace(1) %32, ptr %x
  %33 = load ptr addrspace(1), ptr %x
  %34 = addrspacecast ptr addrspace(1) %33 to ptr
  %35 = ptrtoint ptr %34 to i64
  %36 = and i64 %35, 2233785415175766016
  %37 = icmp eq i64 %36, 288230376151711744
  br i1 %37, label %38, label %49
38:
  %39 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %39, ptr %x.3
  %40 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %41 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 3
  %42 = load ptr addrspace(1), ptr addrspace(1) %41, align 8
  %43 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %43, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2696637399435535716), ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %40, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %40 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %3
  %48 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !14
  store ptr addrspace(1) null, ptr %4
  br label %49
49:
  %50 = load ptr addrspace(1), ptr %x
  %51 = call double @_bal_tagged_to_float(ptr addrspace(1) %50), !dbg !15
  store double %51, ptr %x.4
  %52 = load ptr addrspace(1), ptr %x
  %53 = addrspacecast ptr addrspace(1) %52 to ptr
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %54, 2233785415175766016
  %56 = icmp eq i64 %55, 288230376151711744
  br i1 %56, label %57, label %68
57:
  %58 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %58, ptr %x.5
  %59 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !16
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 3
  %61 = load ptr addrspace(1), ptr addrspace(1) %60, align 8
  %62 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %62, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2696637399435535716), ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %59, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %59 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %5
  %67 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !17
  store ptr addrspace(1) null, ptr %6
  br label %68
68:
  %69 = load ptr addrspace(1), ptr %x
  %70 = call double @_bal_tagged_to_float(ptr addrspace(1) %69), !dbg !18
  store double %70, ptr %x.6
  ret void
71:
  %72 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %72), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/typetest1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 3, column: 20, scope: !5)
!10 = !DILocation(line: 4, column: 9, scope: !5)
!11 = !DILocation(line: 5, column: 19, scope: !5)
!12 = !DILocation(line: 5, column: 8, scope: !5)
!13 = !DILocation(line: 9, column: 19, scope: !5)
!14 = !DILocation(line: 9, column: 8, scope: !5)
!15 = !DILocation(line: 8, column: 7, scope: !5)
!16 = !DILocation(line: 12, column: 19, scope: !5)
!17 = !DILocation(line: 12, column: 8, scope: !5)
!18 = !DILocation(line: 11, column: 7, scope: !5)
