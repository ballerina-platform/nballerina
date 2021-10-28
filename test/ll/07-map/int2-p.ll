@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) nofree nosync nounwind readnone speculatable willreturn
declare i64 @_bal_mapping_set(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %mi = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %ma = alloca i8 addrspace(1)*
  %x = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %x.1 = alloca i64
  %4 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %30, label %10
10:
  %11 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 0)
  store i8 addrspace(1)* %11, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %12, i8 addrspace(1)** %mi
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %mi
  %14 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %13, i64 -5)
  store i8 addrspace(1)* %14, i8 addrspace(1)** %ma
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %ma
  %16 = zext i1 1 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17
  %19 = call i64 @_bal_mapping_set(i8 addrspace(1)* %15, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %32, label %39
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %23 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %22)
  store i64 %23, i64* %x.1
  %24 = load i64, i64* %x.1
  %25 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %24, i64 1)
  %26 = extractvalue {i64, i1} %25, 1
  br i1 %26, label %46, label %42
27:
  ret void
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
30:
  %31 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %31)
  unreachable
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %mi
  %34 = call i8 addrspace(1)* @_bal_mapping_get(i8 addrspace(1)* %33, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112))
  store i8 addrspace(1)* %34, i8 addrspace(1)** %2
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  store i8 addrspace(1)* %35, i8 addrspace(1)** %x
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %37 = icmp ne i8 addrspace(1)* %36, null
  store i1 %37, i1* %3
  %38 = load i1, i1* %3
  br i1 %38, label %21, label %27
39:
  %40 = or i64 %19, 1536
  %41 = call i8 addrspace(1)* @_bal_panic_construct(i64 %40), !dbg !7
  store i8 addrspace(1)* %41, i8 addrspace(1)** %6
  br label %28
42:
  %43 = extractvalue {i64, i1} %25, 0
  store i64 %43, i64* %4
  %44 = load i64, i64* %4, !dbg !8
  %45 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %44), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %45), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !8
  br label %27
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 2305), !dbg !7
  store i8 addrspace(1)* %47, i8 addrspace(1)** %6
  br label %28
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-map/int2-p.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 9, column: 8, scope: !5)
