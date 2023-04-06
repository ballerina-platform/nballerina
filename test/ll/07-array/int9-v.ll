@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
@_Bt04root2 = external constant {i32, i32, [0 x ptr]}
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"string[]\00\00\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare i1 @_bal_type_contains(ptr, ptr addrspace(1)) readonly
define void @_B04rootmain() !dbg !5 {
  %iv = alloca ptr addrspace(1)
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %iv.1 = alloca ptr addrspace(1)
  %iv.2 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca i8
  %11 = load ptr, ptr @_bal_stack_guard
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %60, label %13
13:
  %14 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 0), !dbg !9
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = getelementptr i8, ptr addrspace(1) %15, i64 864691128455135236
  store ptr addrspace(1) %16, ptr %1
  %17 = load ptr addrspace(1), ptr %1
  store ptr addrspace(1) %17, ptr %iv
  %18 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !10
  %19 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 3
  %20 = load ptr addrspace(1), ptr addrspace(1) %19, align 8
  %21 = bitcast ptr addrspace(1) %20 to ptr addrspace(1)
  %22 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %21, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738187874896277089), ptr addrspace(1) %22
  %23 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %18, i64 0, i32 1
  store i64 1, ptr addrspace(1) %23
  %24 = bitcast ptr addrspace(1) %18 to ptr addrspace(1)
  %25 = getelementptr i8, ptr addrspace(1) %24, i64 864691128455135236
  store ptr addrspace(1) %25, ptr %2
  %26 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %26), !dbg !11
  store ptr addrspace(1) null, ptr %3
  %27 = load ptr addrspace(1), ptr %iv
  %28 = call i1 @_bal_type_contains(ptr @_Bt04root2, ptr addrspace(1) %27), !dbg !12
  br i1 %28, label %29, label %40
29:
  %30 = load ptr addrspace(1), ptr %iv
  store ptr addrspace(1) %30, ptr %iv.1
  %31 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !13
  %32 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 3
  %33 = load ptr addrspace(1), ptr addrspace(1) %32, align 8
  %34 = bitcast ptr addrspace(1) %33 to ptr addrspace(1)
  %35 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %34, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) %35
  %36 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %31, i64 0, i32 1
  store i64 1, ptr addrspace(1) %36
  %37 = bitcast ptr addrspace(1) %31 to ptr addrspace(1)
  %38 = getelementptr i8, ptr addrspace(1) %37, i64 864691128455135236
  store ptr addrspace(1) %38, ptr %4
  %39 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %39), !dbg !14
  store ptr addrspace(1) null, ptr %5
  br label %40
40:
  %41 = load ptr addrspace(1), ptr %iv
  store ptr addrspace(1) %41, ptr %iv.2
  %42 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !15
  %43 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 3
  %44 = load ptr addrspace(1), ptr addrspace(1) %43, align 8
  %45 = bitcast ptr addrspace(1) %44 to ptr addrspace(1)
  %46 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %45, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738009744952553065), ptr addrspace(1) %46
  %47 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %42, i64 0, i32 1
  store i64 1, ptr addrspace(1) %47
  %48 = bitcast ptr addrspace(1) %42 to ptr addrspace(1)
  %49 = getelementptr i8, ptr addrspace(1) %48, i64 864691128455135236
  store ptr addrspace(1) %49, ptr %6
  %50 = load ptr addrspace(1), ptr %6
  call void @_Bb02ioprintln(ptr addrspace(1) %50), !dbg !16
  store ptr addrspace(1) null, ptr %7
  %51 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root1, i64 1), !dbg !17
  %52 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 3
  %53 = load ptr addrspace(1), ptr addrspace(1) %52, align 8
  %54 = bitcast ptr addrspace(1) %53 to ptr addrspace(1)
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %54, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573428765513), ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %51, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %51 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %8
  %59 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !18
  store ptr addrspace(1) null, ptr %9
  ret void
60:
  %61 = call ptr addrspace(1) @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %61), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/int9-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 6, column: 16, scope: !5)
!9 = !DILocation(line: 7, column: 15, scope: !5)
!10 = !DILocation(line: 9, column: 19, scope: !5)
!11 = !DILocation(line: 9, column: 8, scope: !5)
!12 = !DILocation(line: 11, column: 10, scope: !5)
!13 = !DILocation(line: 12, column: 19, scope: !5)
!14 = !DILocation(line: 12, column: 8, scope: !5)
!15 = !DILocation(line: 15, column: 19, scope: !5)
!16 = !DILocation(line: 15, column: 8, scope: !5)
!17 = !DILocation(line: 18, column: 19, scope: !5)
!18 = !DILocation(line: 18, column: 8, scope: !5)
