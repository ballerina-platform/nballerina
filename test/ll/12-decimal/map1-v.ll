@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec1 = internal unnamed_addr constant [4 x i8] c"2.3\00", align 8
@.dec2 = internal unnamed_addr constant [8 x i8] c"2.3E+34\00", align 8
@_Bi04root1 = external constant {i32}
@.dec3 = internal unnamed_addr constant [4 x i8] c"1.2\00", align 8
@.dec4 = internal unnamed_addr constant [8 x i8] c"2.3E+35\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %m1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %m2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %40, label %12
12:
  %13 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 3)
  %14 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec0 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848376), i8 addrspace(1)* %14)
  %15 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec1 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848632), i8 addrspace(1)* %15)
  %16 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec2 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %13, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848888), i8 addrspace(1)* %16)
  store i8 addrspace(1)* %13, i8 addrspace(1)** %1
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %17, i8 addrspace(1)** %m1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %m1, !dbg !8
  %19 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %18), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %19), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %20 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %21 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %20, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848376), i8 addrspace(1)* %21)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %3
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %22, i8 addrspace(1)** %m2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %24 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848376))
  store i8 addrspace(1)* %24, i8 addrspace(1)** %4
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %26 = addrspacecast i8 addrspace(1)* %25 to i8*
  %27 = ptrtoint i8* %26 to i64
  %28 = and i64 %27, 2233785415175766016
  %29 = icmp eq i64 %28, 648518346341351424
  store i1 %29, i1* %5
  %30 = load i1, i1* %5, !dbg !9
  %31 = zext i1 %30 to i64, !dbg !9
  %32 = or i64 %31, 72057594037927936, !dbg !9
  %33 = getelementptr i8, i8 addrspace(1)* null, i64 %32, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %33), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %m2
  %35 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec4 to i8*))
  %36 = call i64 @_bal_mapping_set(i8 addrspace(1)* %34, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848632), i8 addrspace(1)* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %42, label %45
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  call void @_bal_panic(i8 addrspace(1)* %39)
  unreachable
40:
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %41)
  unreachable
42:
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %m2, !dbg !10
  %44 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %43), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %44), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !10
  ret void
45:
  %46 = or i64 %36, 2304
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 %46), !dbg !7
  store i8 addrspace(1)* %47, i8 addrspace(1)** %8
  br label %38
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/map1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 4, scope: !5)
!9 = !DILocation(line: 7, column: 4, scope: !5)
!10 = !DILocation(line: 10, column: 4, scope: !5)
