@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca i8
  %6 = load ptr, ptr @_bal_stack_guard
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %9, label %8
8:
  call void @_B_foo(i64 1), !dbg !11
  store ptr addrspace(1) null, ptr %1
  call void @_B_foo(i64 0), !dbg !12
  store ptr addrspace(1) null, ptr %2
  call void @_B_foo(i64 2), !dbg !13
  store ptr addrspace(1) null, ptr %3
  call void @_B_foo(i64 17), !dbg !14
  store ptr addrspace(1) null, ptr %4
  ret void
9:
  %10 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %10), !dbg !10
  unreachable
}
define internal void @_B_foo(i64 %0) !dbg !7 {
  %v = alloca i64
  %v.1 = alloca i64
  %v.2 = alloca i64
  %v.3 = alloca i64
  %v.4 = alloca i64
  %v.5 = alloca i64
  %v.6 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %69, label %13
13:
  store i64 %0, ptr %v
  %14 = load i64, ptr %v
  %15 = icmp sle i64 0, %14
  %16 = icmp sge i64 0, %14
  %17 = and i1 %15, %16
  br i1 %17, label %clause.0, label %gard.0
clause.0:
  %18 = load i64, ptr %v
  store i64 %18, ptr %v.1
  %19 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 3
  %21 = load ptr addrspace(1), ptr addrspace(1) %20, align 8
  %22 = bitcast ptr addrspace(1) %21 to ptr addrspace(1)
  %23 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %22, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570848030574), ptr addrspace(1) %23
  %24 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %19, i64 0, i32 1
  store i64 1, ptr addrspace(1) %24
  %25 = bitcast ptr addrspace(1) %19 to ptr addrspace(1)
  %26 = getelementptr i8, ptr addrspace(1) %25, i64 864691128455135236
  store ptr addrspace(1) %26, ptr %2
  %27 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %27), !dbg !24
  store ptr addrspace(1) null, ptr %3
  br label %68
clause.1:
  %28 = load i64, ptr %v
  store i64 %28, ptr %v.3
  %29 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %30 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 3
  %31 = load ptr addrspace(1), ptr addrspace(1) %30, align 8
  %32 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %33 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %32, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431131759), ptr addrspace(1) %33
  %34 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %29, i64 0, i32 1
  store i64 1, ptr addrspace(1) %34
  %35 = bitcast ptr addrspace(1) %29 to ptr addrspace(1)
  %36 = getelementptr i8, ptr addrspace(1) %35, i64 864691128455135236
  store ptr addrspace(1) %36, ptr %4
  %37 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %37), !dbg !22
  store ptr addrspace(1) null, ptr %5
  br label %68
clause.2:
  %38 = load i64, ptr %v
  store i64 %38, ptr %v.5
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573431789428), ptr addrspace(1) %43
  %44 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %44
  %45 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %46 = getelementptr i8, ptr addrspace(1) %45, i64 864691128455135236
  store ptr addrspace(1) %46, ptr %6
  %47 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %47), !dbg !20
  store ptr addrspace(1) null, ptr %7
  br label %68
clause.3:
  %48 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %49 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 3
  %50 = load ptr addrspace(1), ptr addrspace(1) %49, align 8
  %51 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %52 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %51, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571183571309), ptr addrspace(1) %52
  %53 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %48, i64 0, i32 1
  store i64 1, ptr addrspace(1) %53
  %54 = bitcast ptr addrspace(1) %48 to ptr addrspace(1)
  %55 = getelementptr i8, ptr addrspace(1) %54, i64 864691128455135236
  store ptr addrspace(1) %55, ptr %8
  %56 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %56), !dbg !18
  store ptr addrspace(1) null, ptr %9
  br label %68
gard.0:
  %57 = load i64, ptr %v
  store i64 %57, ptr %v.2
  %58 = load i64, ptr %v.2
  %59 = icmp sle i64 1, %58
  %60 = icmp sge i64 1, %58
  %61 = and i1 %59, %60
  br i1 %61, label %clause.1, label %gard.1
gard.1:
  %62 = load i64, ptr %v
  store i64 %62, ptr %v.4
  %63 = load i64, ptr %v.4
  %64 = icmp sle i64 2, %63
  %65 = icmp sge i64 2, %63
  %66 = and i1 %64, %65
  br i1 %66, label %clause.2, label %gard.2
gard.2:
  %67 = load i64, ptr %v
  store i64 %67, ptr %v.6
  br label %clause.3
68:
  ret void
69:
  %70 = call ptr addrspace(1) @_bal_panic_construct(i64 3844), !dbg !15
  call void @_bal_panic(ptr addrspace(1) %70), !dbg !16
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/05-match/02-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 4, scope: !5)
!13 = !DILocation(line: 7, column: 4, scope: !5)
!14 = !DILocation(line: 8, column: 4, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 15, column: 9, scope: !7)
!17 = !DILocation(line: 27, column: 23, scope: !7)
!18 = !DILocation(line: 27, column: 12, scope: !7)
!19 = !DILocation(line: 24, column: 23, scope: !7)
!20 = !DILocation(line: 24, column: 12, scope: !7)
!21 = !DILocation(line: 21, column: 23, scope: !7)
!22 = !DILocation(line: 21, column: 12, scope: !7)
!23 = !DILocation(line: 18, column: 23, scope: !7)
!24 = !DILocation(line: 18, column: 12, scope: !7)
