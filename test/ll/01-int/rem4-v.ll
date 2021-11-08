@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i64
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i64
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i64
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i64
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i64
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i64
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i64
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i64
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i64
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i64
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i64
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i64
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i64
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i64
  %50 = alloca i8 addrspace(1)*
  %51 = alloca i64
  %52 = alloca i8 addrspace(1)*
  %53 = alloca i64
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i64
  %56 = alloca i8 addrspace(1)*
  %57 = alloca i64
  %58 = alloca i8 addrspace(1)*
  %59 = alloca i64
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i8
  %62 = load i8*, i8** @_bal_stack_guard
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %155, label %64
64:
  %65 = call i64 @_B_rem(i64 9223372036854775806, i64 9223372036854775806), !dbg !10
  store i64 %65, i64* %1, !dbg !10
  %66 = load i64, i64* %1, !dbg !11
  %67 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %66), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %67), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  %68 = call i64 @_B_rem(i64 1, i64 9223372036854775806), !dbg !12
  store i64 %68, i64* %3, !dbg !12
  %69 = load i64, i64* %3, !dbg !13
  %70 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %69), !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %70), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !13
  %71 = call i64 @_B_rem(i64 0, i64 9223372036854775806), !dbg !14
  store i64 %71, i64* %5, !dbg !14
  %72 = load i64, i64* %5, !dbg !15
  %73 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %72), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %73), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !15
  %74 = call i64 @_B_rem(i64 -1, i64 9223372036854775806), !dbg !16
  store i64 %74, i64* %7, !dbg !16
  %75 = load i64, i64* %7, !dbg !17
  %76 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %75), !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %76), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !17
  %77 = call i64 @_B_rem(i64 -9223372036854775806, i64 9223372036854775806), !dbg !18
  store i64 %77, i64* %9, !dbg !18
  %78 = load i64, i64* %9, !dbg !19
  %79 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %78), !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !19
  %80 = call i64 @_B_rem(i64 9223372036854775806, i64 10), !dbg !20
  store i64 %80, i64* %11, !dbg !20
  %81 = load i64, i64* %11, !dbg !21
  %82 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %81), !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %82), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !21
  %83 = call i64 @_B_rem(i64 1, i64 10), !dbg !22
  store i64 %83, i64* %13, !dbg !22
  %84 = load i64, i64* %13, !dbg !23
  %85 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %84), !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %85), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !23
  %86 = call i64 @_B_rem(i64 0, i64 10), !dbg !24
  store i64 %86, i64* %15, !dbg !24
  %87 = load i64, i64* %15, !dbg !25
  %88 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %87), !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %88), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !25
  %89 = call i64 @_B_rem(i64 -1, i64 10), !dbg !26
  store i64 %89, i64* %17, !dbg !26
  %90 = load i64, i64* %17, !dbg !27
  %91 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %90), !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %91), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !27
  %92 = call i64 @_B_rem(i64 -9223372036854775806, i64 10), !dbg !28
  store i64 %92, i64* %19, !dbg !28
  %93 = load i64, i64* %19, !dbg !29
  %94 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %93), !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %94), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !29
  %95 = call i64 @_B_rem(i64 9223372036854775806, i64 1), !dbg !30
  store i64 %95, i64* %21, !dbg !30
  %96 = load i64, i64* %21, !dbg !31
  %97 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %96), !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %97), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !31
  %98 = call i64 @_B_rem(i64 1, i64 1), !dbg !32
  store i64 %98, i64* %23, !dbg !32
  %99 = load i64, i64* %23, !dbg !33
  %100 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %99), !dbg !33
  call void @_Bb02ioprintln(i8 addrspace(1)* %100), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !33
  %101 = call i64 @_B_rem(i64 0, i64 1), !dbg !34
  store i64 %101, i64* %25, !dbg !34
  %102 = load i64, i64* %25, !dbg !35
  %103 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %102), !dbg !35
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !35
  %104 = call i64 @_B_rem(i64 -1, i64 1), !dbg !36
  store i64 %104, i64* %27, !dbg !36
  %105 = load i64, i64* %27, !dbg !37
  %106 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %105), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %106), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !37
  %107 = call i64 @_B_rem(i64 -9223372036854775806, i64 1), !dbg !38
  store i64 %107, i64* %29, !dbg !38
  %108 = load i64, i64* %29, !dbg !39
  %109 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %108), !dbg !39
  call void @_Bb02ioprintln(i8 addrspace(1)* %109), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !39
  %110 = call i64 @_B_rem(i64 9223372036854775806, i64 -1), !dbg !40
  store i64 %110, i64* %31, !dbg !40
  %111 = load i64, i64* %31, !dbg !41
  %112 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %111), !dbg !41
  call void @_Bb02ioprintln(i8 addrspace(1)* %112), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !41
  %113 = call i64 @_B_rem(i64 1, i64 -1), !dbg !42
  store i64 %113, i64* %33, !dbg !42
  %114 = load i64, i64* %33, !dbg !43
  %115 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %114), !dbg !43
  call void @_Bb02ioprintln(i8 addrspace(1)* %115), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !43
  %116 = call i64 @_B_rem(i64 0, i64 -1), !dbg !44
  store i64 %116, i64* %35, !dbg !44
  %117 = load i64, i64* %35, !dbg !45
  %118 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %117), !dbg !45
  call void @_Bb02ioprintln(i8 addrspace(1)* %118), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !45
  %119 = call i64 @_B_rem(i64 -1, i64 -1), !dbg !46
  store i64 %119, i64* %37, !dbg !46
  %120 = load i64, i64* %37, !dbg !47
  %121 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %120), !dbg !47
  call void @_Bb02ioprintln(i8 addrspace(1)* %121), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !47
  %122 = call i64 @_B_rem(i64 -9223372036854775806, i64 -1), !dbg !48
  store i64 %122, i64* %39, !dbg !48
  %123 = load i64, i64* %39, !dbg !49
  %124 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %123), !dbg !49
  call void @_Bb02ioprintln(i8 addrspace(1)* %124), !dbg !49
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !49
  %125 = call i64 @_B_rem(i64 9223372036854775806, i64 -10), !dbg !50
  store i64 %125, i64* %41, !dbg !50
  %126 = load i64, i64* %41, !dbg !51
  %127 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %126), !dbg !51
  call void @_Bb02ioprintln(i8 addrspace(1)* %127), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !51
  %128 = call i64 @_B_rem(i64 1, i64 -10), !dbg !52
  store i64 %128, i64* %43, !dbg !52
  %129 = load i64, i64* %43, !dbg !53
  %130 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %129), !dbg !53
  call void @_Bb02ioprintln(i8 addrspace(1)* %130), !dbg !53
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !53
  %131 = call i64 @_B_rem(i64 0, i64 -10), !dbg !54
  store i64 %131, i64* %45, !dbg !54
  %132 = load i64, i64* %45, !dbg !55
  %133 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %132), !dbg !55
  call void @_Bb02ioprintln(i8 addrspace(1)* %133), !dbg !55
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !55
  %134 = call i64 @_B_rem(i64 -1, i64 -10), !dbg !56
  store i64 %134, i64* %47, !dbg !56
  %135 = load i64, i64* %47, !dbg !57
  %136 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %135), !dbg !57
  call void @_Bb02ioprintln(i8 addrspace(1)* %136), !dbg !57
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !57
  %137 = call i64 @_B_rem(i64 -9223372036854775806, i64 -10), !dbg !58
  store i64 %137, i64* %49, !dbg !58
  %138 = load i64, i64* %49, !dbg !59
  %139 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %138), !dbg !59
  call void @_Bb02ioprintln(i8 addrspace(1)* %139), !dbg !59
  store i8 addrspace(1)* null, i8 addrspace(1)** %50, !dbg !59
  %140 = call i64 @_B_rem(i64 9223372036854775806, i64 -9223372036854775806), !dbg !60
  store i64 %140, i64* %51, !dbg !60
  %141 = load i64, i64* %51, !dbg !61
  %142 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %141), !dbg !61
  call void @_Bb02ioprintln(i8 addrspace(1)* %142), !dbg !61
  store i8 addrspace(1)* null, i8 addrspace(1)** %52, !dbg !61
  %143 = call i64 @_B_rem(i64 1, i64 -9223372036854775806), !dbg !62
  store i64 %143, i64* %53, !dbg !62
  %144 = load i64, i64* %53, !dbg !63
  %145 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %144), !dbg !63
  call void @_Bb02ioprintln(i8 addrspace(1)* %145), !dbg !63
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !63
  %146 = call i64 @_B_rem(i64 0, i64 -9223372036854775806), !dbg !64
  store i64 %146, i64* %55, !dbg !64
  %147 = load i64, i64* %55, !dbg !65
  %148 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %147), !dbg !65
  call void @_Bb02ioprintln(i8 addrspace(1)* %148), !dbg !65
  store i8 addrspace(1)* null, i8 addrspace(1)** %56, !dbg !65
  %149 = call i64 @_B_rem(i64 -1, i64 -9223372036854775806), !dbg !66
  store i64 %149, i64* %57, !dbg !66
  %150 = load i64, i64* %57, !dbg !67
  %151 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %150), !dbg !67
  call void @_Bb02ioprintln(i8 addrspace(1)* %151), !dbg !67
  store i8 addrspace(1)* null, i8 addrspace(1)** %58, !dbg !67
  %152 = call i64 @_B_rem(i64 -9223372036854775806, i64 -9223372036854775806), !dbg !68
  store i64 %152, i64* %59, !dbg !68
  %153 = load i64, i64* %59, !dbg !69
  %154 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %153), !dbg !69
  call void @_Bb02ioprintln(i8 addrspace(1)* %154), !dbg !69
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !69
  ret void
155:
  %156 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %156)
  unreachable
}
define internal i64 @_B_rem(i64 %0, i64 %1) !dbg !7 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %14, label %8
8:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  %9 = load i64, i64* %a
  %10 = load i64, i64* %b
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %16, label %18
12:
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %13)
  unreachable
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 10756), !dbg !70
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
16:
  %17 = call i8 addrspace(1)* @_bal_panic_construct(i64 11010), !dbg !70
  store i8 addrspace(1)* %17, i8 addrspace(1)** %4
  br label %12
18:
  %19 = icmp eq i64 %9, -9223372036854775808
  %20 = icmp eq i64 %10, -1
  %21 = and i1 %19, %20
  br i1 %21, label %24, label %22
22:
  %23 = srem i64 %9, %10
  store i64 %23, i64* %3
  br label %25
24:
  store i64 0, i64* %3
  br label %25
25:
  %26 = load i64, i64* %3
  ret i64 %26
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/rem4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"rem", linkageName:"_B_rem", scope: !1, file: !1, line: 42, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 15, scope: !5)
!11 = !DILocation(line: 5, column: 4, scope: !5)
!12 = !DILocation(line: 6, column: 15, scope: !5)
!13 = !DILocation(line: 6, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 4, scope: !5)
!16 = !DILocation(line: 8, column: 15, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 9, column: 15, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 15, scope: !5)
!21 = !DILocation(line: 11, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 15, scope: !5)
!23 = !DILocation(line: 12, column: 4, scope: !5)
!24 = !DILocation(line: 13, column: 15, scope: !5)
!25 = !DILocation(line: 13, column: 4, scope: !5)
!26 = !DILocation(line: 14, column: 15, scope: !5)
!27 = !DILocation(line: 14, column: 4, scope: !5)
!28 = !DILocation(line: 15, column: 15, scope: !5)
!29 = !DILocation(line: 15, column: 4, scope: !5)
!30 = !DILocation(line: 17, column: 15, scope: !5)
!31 = !DILocation(line: 17, column: 4, scope: !5)
!32 = !DILocation(line: 18, column: 15, scope: !5)
!33 = !DILocation(line: 18, column: 4, scope: !5)
!34 = !DILocation(line: 19, column: 15, scope: !5)
!35 = !DILocation(line: 19, column: 4, scope: !5)
!36 = !DILocation(line: 20, column: 15, scope: !5)
!37 = !DILocation(line: 20, column: 4, scope: !5)
!38 = !DILocation(line: 21, column: 15, scope: !5)
!39 = !DILocation(line: 21, column: 4, scope: !5)
!40 = !DILocation(line: 23, column: 15, scope: !5)
!41 = !DILocation(line: 23, column: 4, scope: !5)
!42 = !DILocation(line: 24, column: 15, scope: !5)
!43 = !DILocation(line: 24, column: 4, scope: !5)
!44 = !DILocation(line: 25, column: 15, scope: !5)
!45 = !DILocation(line: 25, column: 4, scope: !5)
!46 = !DILocation(line: 26, column: 15, scope: !5)
!47 = !DILocation(line: 26, column: 4, scope: !5)
!48 = !DILocation(line: 27, column: 15, scope: !5)
!49 = !DILocation(line: 27, column: 4, scope: !5)
!50 = !DILocation(line: 29, column: 15, scope: !5)
!51 = !DILocation(line: 29, column: 4, scope: !5)
!52 = !DILocation(line: 30, column: 15, scope: !5)
!53 = !DILocation(line: 30, column: 4, scope: !5)
!54 = !DILocation(line: 31, column: 15, scope: !5)
!55 = !DILocation(line: 31, column: 4, scope: !5)
!56 = !DILocation(line: 32, column: 15, scope: !5)
!57 = !DILocation(line: 32, column: 4, scope: !5)
!58 = !DILocation(line: 33, column: 15, scope: !5)
!59 = !DILocation(line: 33, column: 4, scope: !5)
!60 = !DILocation(line: 35, column: 15, scope: !5)
!61 = !DILocation(line: 35, column: 4, scope: !5)
!62 = !DILocation(line: 36, column: 15, scope: !5)
!63 = !DILocation(line: 36, column: 4, scope: !5)
!64 = !DILocation(line: 37, column: 15, scope: !5)
!65 = !DILocation(line: 37, column: 4, scope: !5)
!66 = !DILocation(line: 38, column: 15, scope: !5)
!67 = !DILocation(line: 38, column: 4, scope: !5)
!68 = !DILocation(line: 39, column: 15, scope: !5)
!69 = !DILocation(line: 39, column: 4, scope: !5)
!70 = !DILocation(line: 0, column: 0, scope: !7)
