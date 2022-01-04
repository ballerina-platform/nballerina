@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)*) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_float_to_tagged(double)
define void @_B04rootmain() !dbg !5 {
  %x = alloca i8 addrspace(1)*
  %i = alloca i64
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %16, label %9
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %10, i8 addrspace(1)** %x
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %12 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %11)
  %13 = extractvalue {i8 addrspace(1)*, i1} %12, 1
  br i1 %13, label %28, label %18
14:
  %15 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %17)
  unreachable
18:
  %19 = extractvalue {i8 addrspace(1)*, i1} %12, 0
  %20 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %19)
  store i64 %20, i64* %1
  %21 = load i64, i64* %1
  store i64 %21, i64* %i
  %22 = load i64, i64* %i, !dbg !8
  %23 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %22), !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %23), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %24 = call i8 addrspace(1)* @_bal_float_to_tagged(double 4.0)
  store i8 addrspace(1)* %24, i8 addrspace(1)** %x
  %25 = load i8 addrspace(1)*, i8 addrspace(1)** %x
  %26 = call {i8 addrspace(1)*, i1} @_bal_convert_to_int(i8 addrspace(1)* %25)
  %27 = extractvalue {i8 addrspace(1)*, i1} %26, 1
  br i1 %27, label %36, label %30
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 1025), !dbg !7
  store i8 addrspace(1)* %29, i8 addrspace(1)** %5
  br label %14
30:
  %31 = extractvalue {i8 addrspace(1)*, i1} %26, 0
  %32 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %31)
  store i64 %32, i64* %3
  %33 = load i64, i64* %3
  store i64 %33, i64* %i
  %34 = load i64, i64* %i, !dbg !9
  %35 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %34), !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %35), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  ret void
36:
  %37 = call i8 addrspace(1)* @_bal_panic_construct(i64 2049), !dbg !7
  store i8 addrspace(1)* %37, i8 addrspace(1)** %5
  br label %14
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-bug/float2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 5, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
