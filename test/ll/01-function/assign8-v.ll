@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32, i32}
@.str0 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"test str\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}*, i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define internal i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %0, i64 %1) !dbg !5 {
  %arr = alloca i8 addrspace(1)*
  %i = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %arr
  store i64 %1, i64* %i
  %9 = load i64, i64* %i
  %10 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %9, i64 10)
  %11 = extractvalue {i64, i1} %10, 1
  br i1 %11, label %31, label %16
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = extractvalue {i64, i1} %10, 0
  store i64 %17, i64* %3
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %19 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %18, i64 72057594037927928)
  %20 = bitcast i8 addrspace(1)* %19 to {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %21 = getelementptr {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %20, i64 0, i32 0
  %22 = load {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* addrspace(1)* %21, align 8
  %23 = getelementptr {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}, {i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}* %22, i64 0, i32 2
  %24 = load i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)** %23, align 8
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  %26 = load i64, i64* %i
  %27 = load i64, i64* %3
  %28 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %27)
  %29 = call i64 %24(i8 addrspace(1)* %25, i64 %26, i8 addrspace(1)* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %35
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 1281), !dbg !9
  store i8 addrspace(1)* %32, i8 addrspace(1)** %4
  br label %12
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %arr
  ret i8 addrspace(1)* %34
35:
  %36 = or i64 %29, 1280
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 %36), !dbg !9
  store i8 addrspace(1)* %37, i8 addrspace(1)** %4
  br label %12
}
define void @_B04rootmain() !dbg !7 {
  %arr = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %_ = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %_.1 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %_.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %str = alloca i8 addrspace(1)*
  %_.3 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %31, label %10
10:
  %11 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* @_bal_list_construct({i32, i32}* @_Bi04root0, i64 0)
  %12 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i32}*, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %11 to i8 addrspace(1)*
  %13 = getelementptr i8, i8 addrspace(1)* %12, i64 1297036692682702852
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %14, i8 addrspace(1)** %arr
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !11
  %16 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %15, i64 0), !dbg !11
  store i8 addrspace(1)* %16, i8 addrspace(1)** %2, !dbg !11
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  %18 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %17, i64 -5)
  store i8 addrspace(1)* %18, i8 addrspace(1)** %_
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !12
  %20 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %19, i64 1), !dbg !12
  store i8 addrspace(1)* %20, i8 addrspace(1)** %3, !dbg !12
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  %22 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %21, i64 -5)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %_.1
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !13
  %24 = call i8 addrspace(1)* @_B_foo(i8 addrspace(1)* %23, i64 2), !dbg !13
  store i8 addrspace(1)* %24, i8 addrspace(1)** %4, !dbg !13
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %26 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %25, i64 -5)
  store i8 addrspace(1)* %26, i8 addrspace(1)** %_.2
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %arr, !dbg !14
  %28 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %27, i64 -5), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %28), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !14
  store i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str0 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)** %str
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %str
  store i8 addrspace(1)* %29, i8 addrspace(1)** %_.3
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %str, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  ret void
31:
  %32 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !10
  call void @_bal_panic(i8 addrspace(1)* %32)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-function/assign8-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"foo", linkageName:"_B_foo", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 0, column: 0, scope: !7)
!11 = !DILocation(line: 11, column: 8, scope: !7)
!12 = !DILocation(line: 12, column: 8, scope: !7)
!13 = !DILocation(line: 13, column: 8, scope: !7)
!14 = !DILocation(line: 14, column: 4, scope: !7)
!15 = !DILocation(line: 18, column: 4, scope: !7)
