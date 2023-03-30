@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca i8
  %13 = load ptr, ptr @_bal_stack_guard
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %48, label %15
15:
  %16 = zext i1 1 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  store ptr addrspace(1) %18, ptr %x
  %19 = load ptr addrspace(1), ptr %x
  %20 = addrspacecast ptr addrspace(1) %19 to ptr
  %21 = ptrtoint ptr %20 to i64
  %22 = and i64 %21, 2233785415175766016
  %23 = lshr i64 %22, 56
  %24 = shl i64 1, %23
  %25 = and i64 %24, 3
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %50, label %69
27:
  %28 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %29 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 3
  %30 = load ptr addrspace(1), ptr addrspace(1) %29, align 8
  %31 = bitcast ptr addrspace(1) %30 to ptr addrspace(1)
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %31, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431589230), ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %28, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %6
  %36 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !12
  store ptr addrspace(1) null, ptr %7
  br label %37
37:
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187952490046824), ptr %x
  %38 = load ptr addrspace(1), ptr %x
  %39 = addrspacecast ptr addrspace(1) %38 to ptr
  %40 = ptrtoint ptr %39 to i64
  %41 = and i64 %40, 2233785415175766016
  %42 = lshr i64 %41, 56
  %43 = shl i64 1, %42
  %44 = and i64 %43, 34
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %77, label %88
46:
  %47 = load ptr addrspace(1), ptr %11
  call void @_bal_panic(ptr addrspace(1) %47), !dbg !15
  unreachable
48:
  %49 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %49), !dbg !8
  unreachable
50:
  store ptr addrspace(1) %19, ptr %1
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = load ptr addrspace(1), ptr %1
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) %55, ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %2
  %60 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !10
  store ptr addrspace(1) null, ptr %3
  store ptr addrspace(1) null, ptr %x
  %61 = load ptr addrspace(1), ptr %x
  %62 = addrspacecast ptr addrspace(1) %61 to ptr
  %63 = ptrtoint ptr %62 to i64
  %64 = and i64 %63, 2233785415175766016
  %65 = lshr i64 %64, 56
  %66 = shl i64 1, %65
  %67 = and i64 %66, 3
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %71, label %75
69:
  %70 = call ptr addrspace(1) @_bal_panic_construct(i64 1539), !dbg !7
  store ptr addrspace(1) %70, ptr %11
  br label %46
71:
  store ptr addrspace(1) %61, ptr %4
  %72 = load ptr addrspace(1), ptr %4
  %73 = icmp eq ptr addrspace(1) %72, null
  store i1 %73, ptr %5
  %74 = load i1, ptr %5
  br i1 %74, label %27, label %37
75:
  %76 = call ptr addrspace(1) @_bal_panic_construct(i64 2051), !dbg !7
  store ptr addrspace(1) %76, ptr %11
  br label %46
77:
  store ptr addrspace(1) %38, ptr %8
  %78 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %79 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 3
  %80 = load ptr addrspace(1), ptr addrspace(1) %79, align 8
  %81 = bitcast ptr addrspace(1) %80 to ptr addrspace(1)
  %82 = load ptr addrspace(1), ptr %8
  %83 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %81, i64 0, i64 0
  store ptr addrspace(1) %82, ptr addrspace(1) %83
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %78, i64 0, i32 1
  store i64 1, ptr addrspace(1) %84
  %85 = bitcast ptr addrspace(1) %78 to ptr addrspace(1)
  %86 = getelementptr i8, ptr addrspace(1) %85, i64 864691128455135236
  store ptr addrspace(1) %86, ptr %9
  %87 = load ptr addrspace(1), ptr %9
  call void @_Bb02ioprintln(ptr addrspace(1) %87), !dbg !14
  store ptr addrspace(1) null, ptr %10
  ret void
88:
  %89 = call ptr addrspace(1) @_bal_panic_construct(i64 3075), !dbg !7
  store ptr addrspace(1) %89, ptr %11
  br label %46
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-typecast/07-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 16, scope: !5)
!9 = !DILocation(line: 6, column: 15, scope: !5)
!10 = !DILocation(line: 6, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 19, scope: !5)
!12 = !DILocation(line: 9, column: 8, scope: !5)
!13 = !DILocation(line: 12, column: 15, scope: !5)
!14 = !DILocation(line: 12, column: 4, scope: !5)
!15 = !DILocation(line: 13, column: 0, scope: !5)
