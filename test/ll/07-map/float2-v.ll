@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare i64 @_bal_mapping_set(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1), ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %m = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %x.1 = alloca double
  %x.2 = alloca ptr addrspace(1)
  %3 = alloca double
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i8
  %8 = load ptr, ptr @_bal_stack_guard
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %37, label %10
10:
  %11 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 0), !dbg !9
  store ptr addrspace(1) %11, ptr %1
  %12 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %12, ptr %m
  %13 = load ptr addrspace(1), ptr %m
  %14 = call ptr addrspace(1) @_bal_float_to_tagged(double 1.0), !dbg !10
  %15 = call i64 @_bal_mapping_set(ptr addrspace(1) %13, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) %14), !dbg !11
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %39, label %48
17:
  %18 = load ptr addrspace(1), ptr %x
  %19 = call double @_bal_tagged_to_float(ptr addrspace(1) %18), !dbg !13
  store double %19, ptr %x.1
  %20 = load double, ptr %x.1
  %21 = fadd double %20, 0.5
  store double %21, ptr %3
  %22 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !14
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 3
  %24 = load ptr addrspace(1), ptr addrspace(1) %23, align 8
  %25 = bitcast ptr addrspace(1) %24 to ptr addrspace(1)
  %26 = load double, ptr %3
  %27 = call ptr addrspace(1) @_bal_float_to_tagged(double %26), !dbg !15
  %28 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %25, i64 0, i64 0
  store ptr addrspace(1) %27, ptr addrspace(1) %28
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %22, i64 0, i32 1
  store i64 1, ptr addrspace(1) %29
  %30 = bitcast ptr addrspace(1) %22 to ptr addrspace(1)
  %31 = getelementptr i8, ptr addrspace(1) %30, i64 864691128455135236
  store ptr addrspace(1) %31, ptr %4
  %32 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %32), !dbg !16
  store ptr addrspace(1) null, ptr %5
  br label %33
33:
  %34 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %34, ptr %x.2
  ret void
35:
  %36 = load ptr addrspace(1), ptr %6
  call void @_bal_panic(ptr addrspace(1) %36), !dbg !17
  unreachable
37:
  %38 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %38), !dbg !8
  unreachable
39:
  %40 = load ptr addrspace(1), ptr %m
  %41 = call ptr addrspace(1) @_bal_mapping_get(ptr addrspace(1) %40, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !12
  store ptr addrspace(1) %41, ptr %2
  %42 = load ptr addrspace(1), ptr %2
  store ptr addrspace(1) %42, ptr %x
  %43 = load ptr addrspace(1), ptr %x
  %44 = addrspacecast ptr addrspace(1) %43 to ptr
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 2233785415175766016
  %47 = icmp eq i64 %46, 216172782113783808
  br i1 %47, label %17, label %33
48:
  %49 = or i64 %15, 1536
  %50 = call ptr addrspace(1) @_bal_panic_construct(i64 %49), !dbg !7
  store ptr addrspace(1) %50, ptr %6
  br label %35
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/float2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 19, scope: !5)
!10 = !DILocation(line: 6, column: 5, scope: !5)
!11 = !DILocation(line: 6, column: 5, scope: !5)
!12 = !DILocation(line: 7, column: 16, scope: !5)
!13 = !DILocation(line: 8, column: 9, scope: !5)
!14 = !DILocation(line: 9, column: 19, scope: !5)
!15 = !DILocation(line: 9, column: 19, scope: !5)
!16 = !DILocation(line: 9, column: 8, scope: !5)
!17 = !DILocation(line: 11, column: 0, scope: !5)
