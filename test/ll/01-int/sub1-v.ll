@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %sub1 = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %sub2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %17, label %8
8:
  %9 = call i64 @_B_sub(i64 5, i64 2), !dbg !10
  store i64 %9, i64* %1, !dbg !10
  %10 = load i64, i64* %1
  store i64 %10, i64* %sub1
  %11 = load i64, i64* %sub1, !dbg !11
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %13 = call i64 @_B_sub(i64 0, i64 1), !dbg !12
  store i64 %13, i64* %3, !dbg !12
  %14 = load i64, i64* %3
  store i64 %14, i64* %sub2
  %15 = load i64, i64* %sub2, !dbg !13
  %16 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %15), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %16), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  ret void
17:
  %18 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %18)
  unreachable
}
define internal i64 @_B_sub(i64 %0, i64 %1) !dbg !7 {
  %x = alloca i64
  %y = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %x
  store i64 %1, i64* %y
  %9 = load i64, i64* %x
  %10 = load i64, i64* %y
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !14
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 2817), !dbg !14
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/sub1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"sub", linkageName:"_B_sub", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 13, scope: !5)
!11 = !DILocation(line: 5, column: 2, scope: !5)
!12 = !DILocation(line: 6, column: 13, scope: !5)
!13 = !DILocation(line: 7, column: 2, scope: !5)
!14 = !DILocation(line: 0, column: 0, scope: !7)
