@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_mapping_construct(ptr, i64)
declare void @_bal_mapping_init_member(ptr addrspace(1), ptr addrspace(1), ptr addrspace(1))
declare ptr addrspace(1) @_bal_float_to_tagged(double)
declare ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1), i64) readonly
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare double @_bal_tagged_to_float(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %r = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca i8
  %4 = load ptr, ptr @_bal_stack_guard
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = call ptr addrspace(1) @_bal_mapping_construct(ptr @_Bi04root0, i64 1), !dbg !11
  %8 = zext i1 1 to i64
  %9 = or i64 %8, 72057594037927936
  %10 = getelementptr i8, ptr addrspace(1) null, i64 %9
  call void @_bal_mapping_init_member(ptr addrspace(1) %7, ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %10), !dbg !12
  store ptr addrspace(1) %7, ptr %1
  %11 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %11, ptr %r
  %12 = load ptr addrspace(1), ptr %r
  call void @_B_func(ptr addrspace(1) %12), !dbg !13
  store ptr addrspace(1) null, ptr %2
  ret void
13:
  %14 = call ptr addrspace(1) @_bal_panic_construct(i64 1796), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %14), !dbg !10
  unreachable
}
define internal void @_B_func(ptr addrspace(1) %0) !dbg !7 {
  %r = alloca ptr addrspace(1)
  %x = alloca ptr addrspace(1)
  %y = alloca ptr addrspace(1)
  %2 = alloca i1
  %3 = alloca i1
  %x.1 = alloca ptr addrspace(1)
  %x.2 = alloca double
  %y.1 = alloca ptr addrspace(1)
  %y.2 = alloca i1
  %x.3 = alloca ptr addrspace(1)
  %x.4 = alloca i64
  %y.3 = alloca ptr addrspace(1)
  %y.4 = alloca double
  %y.5 = alloca ptr addrspace(1)
  %x.5 = alloca ptr addrspace(1)
  %fi = alloca ptr addrspace(1)
  %bi = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca i8
  %9 = load ptr, ptr @_bal_stack_guard
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %105, label %11
11:
  store ptr addrspace(1) %0, ptr %r
  %12 = call ptr addrspace(1) @_bal_float_to_tagged(double 0.1), !dbg !16
  store ptr addrspace(1) %12, ptr %x
  %13 = zext i1 1 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  store ptr addrspace(1) %15, ptr %y
  %16 = load ptr addrspace(1), ptr %r
  %17 = call ptr addrspace(1) @_bal_mapping_indexed_get(ptr addrspace(1) %16, i64 0), !dbg !17
  %18 = addrspacecast ptr addrspace(1) %17 to ptr
  %19 = ptrtoint ptr %18 to i64
  %20 = trunc i64 %19 to i1
  store i1 %20, ptr %2
  %21 = load i1, ptr %2
  %22 = icmp eq i1 %21, 1
  store i1 %22, ptr %3
  %23 = load i1, ptr %3
  br i1 %23, label %24, label %33
24:
  %25 = load ptr addrspace(1), ptr %x
  %26 = addrspacecast ptr addrspace(1) %25 to ptr
  %27 = ptrtoint ptr %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = lshr i64 %28, 56
  %30 = shl i64 1, %29
  %31 = and i64 %30, 6
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %44
33:
  %34 = load ptr addrspace(1), ptr %x
  %35 = addrspacecast ptr addrspace(1) %34 to ptr
  %36 = ptrtoint ptr %35 to i64
  %37 = and i64 %36, 2233785415175766016
  %38 = lshr i64 %37, 56
  %39 = shl i64 1, %38
  %40 = and i64 %39, 10
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %62, label %64
42:
  %43 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %43, ptr %x.1
  ret void
44:
  %45 = load ptr addrspace(1), ptr %x
  %46 = call double @_bal_tagged_to_float(ptr addrspace(1) %45), !dbg !20
  store double %46, ptr %x.2
  %47 = load ptr addrspace(1), ptr %y
  %48 = addrspacecast ptr addrspace(1) %47 to ptr
  %49 = ptrtoint ptr %48 to i64
  %50 = and i64 %49, 2233785415175766016
  %51 = lshr i64 %50, 56
  %52 = shl i64 1, %51
  %53 = and i64 %52, 12
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57
55:
  %56 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %56, ptr %y.1
  ret void
57:
  %58 = load ptr addrspace(1), ptr %y
  %59 = addrspacecast ptr addrspace(1) %58 to ptr
  %60 = ptrtoint ptr %59 to i64
  %61 = trunc i64 %60 to i1
  store i1 %61, ptr %y.2
  br label %80
62:
  %63 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %63, ptr %x.3
  ret void
64:
  %65 = load ptr addrspace(1), ptr %x
  %66 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %65), !dbg !18
  store i64 %66, ptr %x.4
  %67 = load ptr addrspace(1), ptr %y
  %68 = addrspacecast ptr addrspace(1) %67 to ptr
  %69 = ptrtoint ptr %68 to i64
  %70 = and i64 %69, 2233785415175766016
  %71 = lshr i64 %70, 56
  %72 = shl i64 1, %71
  %73 = and i64 %72, 6
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77
75:
  %76 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %76, ptr %y.3
  ret void
77:
  %78 = load ptr addrspace(1), ptr %y
  %79 = call double @_bal_tagged_to_float(ptr addrspace(1) %78), !dbg !19
  store double %79, ptr %y.4
  br label %80
80:
  %81 = load ptr addrspace(1), ptr %y
  store ptr addrspace(1) %81, ptr %y.5
  %82 = load ptr addrspace(1), ptr %x
  store ptr addrspace(1) %82, ptr %x.5
  %83 = load ptr addrspace(1), ptr %x.5
  store ptr addrspace(1) %83, ptr %fi
  %84 = load ptr addrspace(1), ptr %y.5
  store ptr addrspace(1) %84, ptr %bi
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !21
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 3
  %87 = load ptr addrspace(1), ptr addrspace(1) %86, align 8
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = load ptr addrspace(1), ptr %fi
  %90 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 0
  store ptr addrspace(1) %89, ptr addrspace(1) %90
  %91 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 1
  store i64 1, ptr addrspace(1) %91
  %92 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %93 = getelementptr i8, ptr addrspace(1) %92, i64 864691128455135236
  store ptr addrspace(1) %93, ptr %4
  %94 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %94), !dbg !22
  store ptr addrspace(1) null, ptr %5
  %95 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !23
  %96 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 3
  %97 = load ptr addrspace(1), ptr addrspace(1) %96, align 8
  %98 = bitcast ptr addrspace(1) %97 to ptr addrspace(1)
  %99 = load ptr addrspace(1), ptr %bi
  %100 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %98, i64 0, i64 0
  store ptr addrspace(1) %99, ptr addrspace(1) %100
  %101 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %95, i64 0, i32 1
  store i64 1, ptr addrspace(1) %101
  %102 = bitcast ptr addrspace(1) %95 to ptr addrspace(1)
  %103 = getelementptr i8, ptr addrspace(1) %102, i64 864691128455135236
  store ptr addrspace(1) %103, ptr %6
  %104 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %104), !dbg !24
  store ptr addrspace(1) null, ptr %7
  ret void
105:
  %106 = call ptr addrspace(1) @_bal_panic_construct(i64 3076), !dbg !14
  call void @_bal_panic(ptr addrspace(1) %106), !dbg !15
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 7, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"func", linkageName:"_B_func", scope: !1, file: !1, line: 12, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 7, column: 16, scope: !5)
!11 = !DILocation(line: 8, column: 10, scope: !5)
!12 = !DILocation(line: 8, column: 10, scope: !5)
!13 = !DILocation(line: 9, column: 4, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
!15 = !DILocation(line: 12, column: 9, scope: !7)
!16 = !DILocation(line: 13, column: 24, scope: !7)
!17 = !DILocation(line: 15, column: 8, scope: !7)
!18 = !DILocation(line: 24, column: 13, scope: !7)
!19 = !DILocation(line: 27, column: 13, scope: !7)
!20 = !DILocation(line: 16, column: 13, scope: !7)
!21 = !DILocation(line: 33, column: 15, scope: !7)
!22 = !DILocation(line: 33, column: 4, scope: !7)
!23 = !DILocation(line: 34, column: 15, scope: !7)
!24 = !DILocation(line: 34, column: 4, scope: !7)
