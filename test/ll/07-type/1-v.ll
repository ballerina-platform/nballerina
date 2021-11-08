@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@_Bi04root1 = external constant {i32, i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare i64 @_bal_list_set(i8 addrspace(1)*, i64, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)*, i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %20, label %9
9:
  %10 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %11 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %10 to i8 addrspace(1)*
  %12 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702852
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %v
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  %16 = call i64 @_bal_list_set(i8 addrspace(1)* %14, i64 0, i8 addrspace(1)* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %22, label %31
18:
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 1540), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
22:
  %23 = call {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root1, i64 0)
  %24 = bitcast {{i32, i32} addrspace(1)*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %23 to i8 addrspace(1)*
  %25 = getelementptr i8, i8 addrspace(1)* %24, i64 1297036692682702852
  store i8 addrspace(1)* %25, i8 addrspace(1)** %2
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %28 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %27, i64 -5)
  %29 = call i64 @_bal_list_set(i8 addrspace(1)* %26, i64 1, i8 addrspace(1)* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %40
31:
  %32 = or i64 %16, 2048
  %33 = call i8 addrspace(1)* @_bal_panic_construct(i64 %32), !dbg !7
  store i8 addrspace(1)* %33, i8 addrspace(1)** %5
  br label %18
34:
  %35 = call i8 addrspace(1)* @_bal_error_construct(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098321995397294199), i64 10), !dbg !7
  store i8 addrspace(1)* %35, i8 addrspace(1)** %3, !dbg !7
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %38 = call i64 @_bal_list_set(i8 addrspace(1)* %36, i64 2, i8 addrspace(1)* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %46
40:
  %41 = or i64 %29, 2304
  %42 = call i8 addrspace(1)* @_bal_panic_construct(i64 %41), !dbg !7
  store i8 addrspace(1)* %42, i8 addrspace(1)** %5
  br label %18
43:
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %45 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %44, i64 -5), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  ret void
46:
  %47 = or i64 %38, 2560
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 %47), !dbg !7
  store i8 addrspace(1)* %48, i8 addrspace(1)** %5
  br label %18
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-type/1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 6, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 11, column: 4, scope: !5)
