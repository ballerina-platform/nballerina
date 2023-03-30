@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %x.1 = alloca double
  %x.2 = alloca ptr addrspace(1)
  %y.1 = alloca double
  %y.2 = alloca ptr addrspace(1)
  %4 = alloca double
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %55, label %10
10:
  %11 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 2), !dbg !9
  %12 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.5), !dbg !10
  call void @_bal_mapping_init_member(ptr addrspace(1) %11, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %12), !dbg !11
  %13 = call ptr addrspace(1) @_bal_float_to_tagged(double 2.0), !dbg !12
  call void @_bal_mapping_init_member(ptr addrspace(1) %11, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) %13), !dbg !13
  store ptr addrspace(1) %11, ptr %1
  %14 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %14, ptr %m
  %15 = load ptr addrspace(1), ptr %m
  %16 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %15, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !14
  store ptr addrspace(1) %16, ptr %2
  %17 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %17, ptr %x
  %18 = load ptr addrspace(1), ptr %m
  %19 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %18, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !15
  store ptr addrspace(1) %19, ptr %3
  %20 = load ptr addrspace(1), ptr %3
  store ptr addrspace(1) %20, ptr %y
  %21 = load ptr addrspace(1), ptr %x
  %22 = addrspacecast ptr addrspace(1) %21 to ptr
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 2233785415175766016
  %25 = icmp eq i64 %24, 216172782113783808
  br i1 %25, label %26, label %34
26:
  %27 = load ptr addrspace(1), ptr %x
  %28 = call double @_bal_tagged_to_float(ptr addrspace(1) %27), !dbg !16
  store double %28, ptr %x.1
  %29 = load ptr addrspace(1), ptr %y
  %30 = addrspacecast ptr addrspace(1) %29 to ptr
  %31 = ptrtoint ptr %30 to i64
  %32 = and i64 %31, 2233785415175766016
  %33 = icmp eq i64 %32, 216172782113783808
  br i1 %33, label %36, label %53
34:
  %35 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %35, ptr %x.2
  ret void
36:
  %37 = load ptr addrspace(1), ptr %y
  %38 = call double @_bal_tagged_to_float(ptr addrspace(1) %37), !dbg !17
  store double %38, ptr %y.1
  %39 = load double, ptr %x.1
  %40 = load double, ptr %y.1
  %41 = fadd double %39, %40
  store double %41, ptr %4
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !18
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = load double, ptr %4
  %47 = call ptr addrspace(1) @_bal_float_to_tagged(double %46), !dbg !19
  %48 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) %47, ptr addrspace(1) %48
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %49
  %50 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %51 = getelementptr i8, ptr addrspace(1) %50, i64 864691128455135236
  store ptr addrspace(1) %51, ptr %5
  %52 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %52), !dbg !20
  store ptr addrspace(1) null, ptr %6
  br label %53
53:
  %54 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %54, ptr %y.2
  br label %34
55:
  %56 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %56), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/float1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 19, scope: !5)
!10 = !DILocation(line: 5, column: 19, scope: !5)
!11 = !DILocation(line: 5, column: 19, scope: !5)
!12 = !DILocation(line: 5, column: 19, scope: !5)
!13 = !DILocation(line: 5, column: 19, scope: !5)
!14 = !DILocation(line: 6, column: 16, scope: !5)
!15 = !DILocation(line: 7, column: 16, scope: !5)
!16 = !DILocation(line: 8, column: 9, scope: !5)
!17 = !DILocation(line: 9, column: 13, scope: !5)
!18 = !DILocation(line: 10, column: 23, scope: !5)
!19 = !DILocation(line: 10, column: 23, scope: !5)
!20 = !DILocation(line: 10, column: 12, scope: !5)
