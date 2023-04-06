@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_tagged_to_int(ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare ptr addrspace(1) @_bal_int_to_tagged(i64)
define void @_B04rootmain() !dbg !5 {
  %x = alloca ptr addrspace(1)
  %x.1 = alloca i1
  %x.2 = alloca i64
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %b = alloca i1
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %i = alloca i64
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca i8
  %10 = load ptr, ptr @_bal_stack_guard
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %73, label %12
12:
  %13 = and i64 72057594037927935, 2
  %14 = or i64 2449958197289549824, %13
  %15 = getelementptr i8, ptr addrspace(1) null, i64 %14
  store ptr addrspace(1) %15, ptr %x
  %16 = load ptr addrspace(1), ptr %x
  %17 = addrspacecast ptr addrspace(1) %16 to ptr
  %18 = ptrtoint ptr %17 to i64
  %19 = and i64 %18, 2233785415175766016
  %20 = icmp eq i64 %19, 72057594037927936
  br i1 %20, label %21, label %49
21:
  %22 = load ptr addrspace(1), ptr %x
  %23 = addrspacecast ptr addrspace(1) %22 to ptr
  %24 = ptrtoint ptr %23 to i64
  %25 = trunc i64 %24 to i1
  store i1 %25, ptr %x.1
  %26 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %27 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 3
  %28 = load ptr addrspace(1), ptr addrspace(1) %27, align 8
  %29 = bitcast ptr addrspace(1) %28 to ptr addrspace(1)
  %30 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %29, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261410), ptr addrspace(1) %30
  %31 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %26, i64 0, i32 1
  store i64 1, ptr addrspace(1) %31
  %32 = bitcast ptr addrspace(1) %26 to ptr addrspace(1)
  %33 = getelementptr i8, ptr addrspace(1) %32, i64 864691128455135236
  store ptr addrspace(1) %33, ptr %1
  %34 = load ptr addrspace(1), ptr %1
  call void @_Bb02ioprintln(ptr addrspace(1) %34), !dbg !16
  store ptr addrspace(1) null, ptr %2
  %35 = load i1, ptr %x.1
  store i1 %35, ptr %b
  %36 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %37 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 3
  %38 = load ptr addrspace(1), ptr addrspace(1) %37, align 8
  %39 = bitcast ptr addrspace(1) %38 to ptr addrspace(1)
  %40 = load i1, ptr %b
  %41 = zext i1 %40 to i64
  %42 = or i64 %41, 72057594037927936
  %43 = getelementptr i8, ptr addrspace(1) null, i64 %42
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %39, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %36, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %36 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %3
  %48 = load ptr addrspace(1), ptr %3
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !18
  store ptr addrspace(1) null, ptr %4
  ret void
49:
  %50 = load ptr addrspace(1), ptr %x
  %51 = call i64 @_bal_tagged_to_int(ptr addrspace(1) %50), !dbg !9
  store i64 %51, ptr %x.2
  %52 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !10
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 3
  %54 = load ptr addrspace(1), ptr addrspace(1) %53, align 8
  %55 = bitcast ptr addrspace(1) %54 to ptr addrspace(1)
  %56 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %55, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261417), ptr addrspace(1) %56
  %57 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %52, i64 0, i32 1
  store i64 1, ptr addrspace(1) %57
  %58 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %59 = getelementptr i8, ptr addrspace(1) %58, i64 864691128455135236
  store ptr addrspace(1) %59, ptr %5
  %60 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %60), !dbg !11
  store ptr addrspace(1) null, ptr %6
  %61 = load i64, ptr %x.2
  store i64 %61, ptr %i
  %62 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %63 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 3
  %64 = load ptr addrspace(1), ptr addrspace(1) %63, align 8
  %65 = bitcast ptr addrspace(1) %64 to ptr addrspace(1)
  %66 = load i64, ptr %i
  %67 = call ptr addrspace(1) @_bal_int_to_tagged(i64 %66), !dbg !13
  %68 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %65, i64 0, i64 0
  store ptr addrspace(1) %67, ptr addrspace(1) %68
  %69 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %62, i64 0, i32 1
  store i64 1, ptr addrspace(1) %69
  %70 = bitcast ptr addrspace(1) %62 to ptr addrspace(1)
  %71 = getelementptr i8, ptr addrspace(1) %70, i64 864691128455135236
  store ptr addrspace(1) %71, ptr %7
  %72 = load ptr addrspace(1), ptr %7
  call void @_Bb02ioprintln(ptr addrspace(1) %72), !dbg !14
  store ptr addrspace(1) null, ptr %8
  ret void
73:
  %74 = call ptr addrspace(1) @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %74), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-narrow/if02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 3, column: 16, scope: !5)
!9 = !DILocation(line: 5, column: 9, scope: !5)
!10 = !DILocation(line: 12, column: 19, scope: !5)
!11 = !DILocation(line: 12, column: 8, scope: !5)
!12 = !DILocation(line: 15, column: 15, scope: !5)
!13 = !DILocation(line: 15, column: 15, scope: !5)
!14 = !DILocation(line: 15, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 19, scope: !5)
!16 = !DILocation(line: 6, column: 8, scope: !5)
!17 = !DILocation(line: 8, column: 19, scope: !5)
!18 = !DILocation(line: 8, column: 8, scope: !5)
