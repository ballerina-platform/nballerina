@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@.dec0 = internal unnamed_addr constant [8 x i8] c"1.2E+34\00", align 8
@_Bi04root1 = external constant {i32}
@.dec1 = internal unnamed_addr constant [2 x i8] c"2\00", align 8
@.dec2 = internal unnamed_addr constant [3 x i8] c"34\00", align 8
@.dec3 = internal unnamed_addr constant [4 x i8] c"1.2\00", align 8
@.dec4 = internal unnamed_addr constant [7 x i8] c"1.2E+3\00", align 8
@_Bi04root2 = external constant {i32}
@.dec5 = internal unnamed_addr constant [3 x i8] c"23\00", align 8
@_Bi04root3 = external constant {i32}
@.dec6 = internal unnamed_addr constant [5 x i8] c"23.1\00", align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_decimal_const(i8*) readonly
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
define void @_B04rootmain() !dbg !5 {
  %r1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %r2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %r3 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8
  %13 = load i8*, i8** @_bal_stack_guard
  %14 = icmp ult i8* %12, %13
  br i1 %14, label %34, label %15
15:
  %16 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  %17 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([8 x i8]* @.dec0 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %16, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901092), i8 addrspace(1)* %17)
  store i8 addrspace(1)* %16, i8 addrspace(1)** %1
  %18 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %18, i8 addrspace(1)** %r1
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %r1, !dbg !8
  %20 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %19), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %21 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 3)
  %22 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([2 x i8]* @.dec1 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901092), i8 addrspace(1)* %22)
  %23 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec2 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848356), i8 addrspace(1)* %23)
  %24 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([4 x i8]* @.dec3 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %21, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848612), i8 addrspace(1)* %24)
  store i8 addrspace(1)* %21, i8 addrspace(1)** %3
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %25, i8 addrspace(1)** %r2
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %r2, !dbg !9
  %27 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %26), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %27), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %r2
  %29 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([7 x i8]* @.dec4 to i8*))
  %30 = call i64 @_bal_mapping_set(i8 addrspace(1)* %28, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848868), i8 addrspace(1)* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %53
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_bal_panic(i8 addrspace(1)* %33)
  unreachable
34:
  %35 = call i8 addrspace(1)* @_bal_panic_construct(i64 4356), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %35)
  unreachable
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %r2, !dbg !10
  %38 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %37), !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %38), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !10
  %39 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root2, i64 1)
  %40 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([3 x i8]* @.dec5 to i8*))
  call void @_bal_mapping_init_member(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848356), i8 addrspace(1)* %40)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %6
  %41 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root3, i64 1)
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_mapping_init_member(i8 addrspace(1)* %41, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901092), i8 addrspace(1)* %42)
  store i8 addrspace(1)* %41, i8 addrspace(1)** %7
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  store i8 addrspace(1)* %43, i8 addrspace(1)** %r3
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %r3, !dbg !11
  %45 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %44), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %r3
  %47 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %46, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901092))
  %48 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %46, i8 addrspace(1)* %47)
  store i8 addrspace(1)* %48, i8 addrspace(1)** %9
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  %50 = call i8 addrspace(1)* @_bal_decimal_const(i8* bitcast([5 x i8]* @.dec6 to i8*))
  %51 = call i64 @_bal_mapping_set(i8 addrspace(1)* %49, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630848356), i8 addrspace(1)* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %59
53:
  %54 = or i64 %30, 5888
  %55 = call i8 addrspace(1)* @_bal_panic_construct(i64 %54), !dbg !7
  store i8 addrspace(1)* %55, i8 addrspace(1)** %11
  br label %32
56:
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %r3, !dbg !12
  %58 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %57), !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %58), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  ret void
59:
  %60 = or i64 %51, 7424
  %61 = call i8 addrspace(1)* @_bal_panic_construct(i64 %60), !dbg !7
  store i8 addrspace(1)* %61, i8 addrspace(1)** %11
  br label %32
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-decimal/record1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 17, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 19, column: 4, scope: !5)
!9 = !DILocation(line: 22, column: 4, scope: !5)
!10 = !DILocation(line: 24, column: 4, scope: !5)
!11 = !DILocation(line: 27, column: 4, scope: !5)
!12 = !DILocation(line: 30, column: 4, scope: !5)
