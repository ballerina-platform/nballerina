@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
@_Bi04root1 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %j1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %j2 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %j3 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8
  %17 = load i8*, i8** @_bal_stack_guard
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %37, label %19
19:
  %20 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %20, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* null)
  store i8 addrspace(1)* %20, i8 addrspace(1)** %1
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %21, i8 addrspace(1)** %j1
  %22 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* null)
  store i8 addrspace(1)* %22, i8 addrspace(1)** %2
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %23, i8 addrspace(1)** %j2
  %24 = load i8 addrspace(1)*, i8 addrspace(1)** %j1
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %j2
  %26 = call i1 @_bal_eq(i8 addrspace(1)* %24, i8 addrspace(1)* %25)
  store i1 %26, i1* %3
  %27 = load i1, i1* %3, !dbg !8
  %28 = zext i1 %27 to i64, !dbg !8
  %29 = or i64 %28, 72057594037927936, !dbg !8
  %30 = getelementptr i8, i8 addrspace(1)* null, i64 %29, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %30), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !8
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %j1
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %j1
  %33 = call i64 @_bal_mapping_set(i8 addrspace(1)* %31, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %51
35:
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  call void @_bal_panic(i8 addrspace(1)* %36)
  unreachable
37:
  %38 = call i8 addrspace(1)* @_bal_panic_construct(i64 1284), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %38)
  unreachable
39:
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %j1
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %j2
  %42 = call i1 @_bal_eq(i8 addrspace(1)* %40, i8 addrspace(1)* %41)
  store i1 %42, i1* %5
  %43 = load i1, i1* %5, !dbg !9
  %44 = zext i1 %43 to i64, !dbg !9
  %45 = or i64 %44, 72057594037927936, !dbg !9
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %46), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !9
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %j2
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %j2
  %49 = call i64 @_bal_mapping_set(i8 addrspace(1)* %47, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %66
51:
  %52 = or i64 %33, 2304
  %53 = call i8 addrspace(1)* @_bal_panic_construct(i64 %52), !dbg !7
  store i8 addrspace(1)* %53, i8 addrspace(1)** %15
  br label %35
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %j1
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %j2
  %57 = call i1 @_bal_eq(i8 addrspace(1)* %55, i8 addrspace(1)* %56)
  store i1 %57, i1* %7
  %58 = load i1, i1* %7, !dbg !10
  %59 = zext i1 %58 to i64, !dbg !10
  %60 = or i64 %59, 72057594037927936, !dbg !10
  %61 = getelementptr i8, i8 addrspace(1)* null, i64 %60, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %61), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !10
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %j2
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %j1
  %64 = call i64 @_bal_mapping_set(i8 addrspace(1)* %62, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %82
66:
  %67 = or i64 %49, 2816
  %68 = call i8 addrspace(1)* @_bal_panic_construct(i64 %67), !dbg !7
  store i8 addrspace(1)* %68, i8 addrspace(1)** %15
  br label %35
69:
  %70 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 1)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %70, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* null)
  store i8 addrspace(1)* %70, i8 addrspace(1)** %9
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %9
  store i8 addrspace(1)* %71, i8 addrspace(1)** %j3
  %72 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %j3
  call void @_bal_mapping_init_member(i8 addrspace(1)* %72, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* %73)
  store i8 addrspace(1)* %72, i8 addrspace(1)** %10
  %74 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %10
  call void @_bal_mapping_init_member(i8 addrspace(1)* %74, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* %75)
  store i8 addrspace(1)* %74, i8 addrspace(1)** %11
  %76 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root1, i64 1)
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  call void @_bal_mapping_init_member(i8 addrspace(1)* %76, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* %77)
  store i8 addrspace(1)* %76, i8 addrspace(1)** %12
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %j3
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %12
  %80 = call i64 @_bal_mapping_set(i8 addrspace(1)* %78, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541222285164), i8 addrspace(1)* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %85, label %93
82:
  %83 = or i64 %64, 3328
  %84 = call i8 addrspace(1)* @_bal_panic_construct(i64 %83), !dbg !7
  store i8 addrspace(1)* %84, i8 addrspace(1)** %15
  br label %35
85:
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %j1
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %j3
  %88 = call i1 @_bal_eq(i8 addrspace(1)* %86, i8 addrspace(1)* %87)
  store i1 %88, i1* %13
  %89 = load i1, i1* %13, !dbg !11
  %90 = zext i1 %89 to i64, !dbg !11
  %91 = or i64 %90, 72057594037927936, !dbg !11
  %92 = getelementptr i8, i8 addrspace(1)* null, i64 %91, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %92), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !11
  ret void
93:
  %94 = or i64 %80, 3840
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 %94), !dbg !7
  store i8 addrspace(1)* %95, i8 addrspace(1)** %15
  br label %35
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/eqcycle1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 5, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 10, column: 4, scope: !5)
!10 = !DILocation(line: 12, column: 4, scope: !5)
!11 = !DILocation(line: 16, column: 4, scope: !5)
