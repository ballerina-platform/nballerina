@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_alloc(i64)
define internal i64 @_B_one() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %6), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !14
  ret i64 1
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define internal i64 @_B_two() !dbg !7 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %7, label %5
5:
  %6 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %6), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !16
  ret i64 2
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 2308), !dbg !15
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
define void @_B04rootmain() !dbg !9 {
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %mul = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %div = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %rmd = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %add = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %sub = alloca i64
  %16 = alloca i1
  %17 = alloca i64
  %18 = alloca i64
  %lt = alloca i1
  %19 = alloca i1
  %20 = alloca i64
  %21 = alloca i64
  %lteq = alloca i1
  %22 = alloca i1
  %23 = alloca i64
  %24 = alloca i64
  %gt = alloca i1
  %25 = alloca i1
  %26 = alloca i64
  %27 = alloca i64
  %gteq = alloca i1
  %28 = alloca i1
  %29 = alloca i64
  %30 = alloca i64
  %eq = alloca i1
  %31 = alloca i1
  %32 = alloca i64
  %33 = alloca i64
  %neq = alloca i1
  %34 = alloca i1
  %35 = alloca i64
  %36 = alloca i64
  %eeq = alloca i1
  %37 = alloca i1
  %38 = alloca i64
  %39 = alloca i64
  %neeq = alloca i1
  %40 = alloca i64
  %41 = alloca i64
  %42 = alloca i64
  %and = alloca i64
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca i64
  %xor = alloca i64
  %46 = alloca i64
  %47 = alloca i64
  %48 = alloca i64
  %or = alloca i64
  %49 = alloca i64
  %50 = alloca i64
  %51 = alloca i8 addrspace(1)*
  %arr = alloca i8 addrspace(1)*
  %52 = alloca i64
  %53 = alloca i64
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i8 addrspace(1)*
  %56 = alloca i8
  %57 = load i8*, i8** @_bal_stack_guard
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %68, label %59
59:
  %60 = call i64 @_B_one(), !dbg !18
  store i64 %60, i64* %1, !dbg !18
  %61 = call i64 @_B_two(), !dbg !19
  store i64 %61, i64* %2, !dbg !19
  %62 = load i64, i64* %1
  %63 = load i64, i64* %2
  %64 = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %62, i64 %63)
  %65 = extractvalue {i64, i1} %64, 1
  br i1 %65, label %78, label %70
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %55
  call void @_bal_panic(i8 addrspace(1)* %67)
  unreachable
68:
  %69 = call i8 addrspace(1)* @_bal_panic_construct(i64 3844), !dbg !17
  call void @_bal_panic(i8 addrspace(1)* %69)
  unreachable
70:
  %71 = extractvalue {i64, i1} %64, 0
  store i64 %71, i64* %3
  %72 = load i64, i64* %3
  store i64 %72, i64* %mul
  %73 = call i64 @_B_one(), !dbg !20
  store i64 %73, i64* %4, !dbg !20
  %74 = call i64 @_B_two(), !dbg !21
  store i64 %74, i64* %5, !dbg !21
  %75 = load i64, i64* %4
  %76 = load i64, i64* %5
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %80, label %82
78:
  %79 = call i8 addrspace(1)* @_bal_panic_construct(i64 4097), !dbg !17
  store i8 addrspace(1)* %79, i8 addrspace(1)** %55
  br label %66
80:
  %81 = call i8 addrspace(1)* @_bal_panic_construct(i64 4866), !dbg !17
  store i8 addrspace(1)* %81, i8 addrspace(1)** %55
  br label %66
82:
  %83 = icmp eq i64 %75, -9223372036854775808
  %84 = icmp eq i64 %76, -1
  %85 = and i1 %83, %84
  br i1 %85, label %94, label %86
86:
  %87 = sdiv i64 %75, %76
  store i64 %87, i64* %6
  %88 = load i64, i64* %6
  store i64 %88, i64* %div
  %89 = call i64 @_B_one(), !dbg !22
  store i64 %89, i64* %7, !dbg !22
  %90 = call i64 @_B_two(), !dbg !23
  store i64 %90, i64* %8, !dbg !23
  %91 = load i64, i64* %7
  %92 = load i64, i64* %8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %96, label %98
94:
  %95 = call i8 addrspace(1)* @_bal_panic_construct(i64 4865), !dbg !17
  store i8 addrspace(1)* %95, i8 addrspace(1)** %55
  br label %66
96:
  %97 = call i8 addrspace(1)* @_bal_panic_construct(i64 5634), !dbg !17
  store i8 addrspace(1)* %97, i8 addrspace(1)** %55
  br label %66
98:
  %99 = icmp eq i64 %91, -9223372036854775808
  %100 = icmp eq i64 %92, -1
  %101 = and i1 %99, %100
  br i1 %101, label %104, label %102
102:
  %103 = srem i64 %91, %92
  store i64 %103, i64* %9
  br label %105
104:
  store i64 0, i64* %9
  br label %105
105:
  %106 = load i64, i64* %9
  store i64 %106, i64* %rmd
  %107 = call i64 @_B_one(), !dbg !24
  store i64 %107, i64* %10, !dbg !24
  %108 = call i64 @_B_two(), !dbg !25
  store i64 %108, i64* %11, !dbg !25
  %109 = load i64, i64* %10
  %110 = load i64, i64* %11
  %111 = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %109, i64 %110)
  %112 = extractvalue {i64, i1} %111, 1
  br i1 %112, label %122, label %113
113:
  %114 = extractvalue {i64, i1} %111, 0
  store i64 %114, i64* %12
  %115 = load i64, i64* %12
  store i64 %115, i64* %add
  %116 = call i64 @_B_one(), !dbg !26
  store i64 %116, i64* %13, !dbg !26
  %117 = call i64 @_B_two(), !dbg !27
  store i64 %117, i64* %14, !dbg !27
  %118 = load i64, i64* %13
  %119 = load i64, i64* %14
  %120 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %118, i64 %119)
  %121 = extractvalue {i64, i1} %120, 1
  br i1 %121, label %216, label %124
122:
  %123 = call i8 addrspace(1)* @_bal_panic_construct(i64 6401), !dbg !17
  store i8 addrspace(1)* %123, i8 addrspace(1)** %55
  br label %66
124:
  %125 = extractvalue {i64, i1} %120, 0
  store i64 %125, i64* %15
  %126 = load i64, i64* %15
  store i64 %126, i64* %sub
  %127 = call i64 @_B_one(), !dbg !28
  store i64 %127, i64* %17, !dbg !28
  %128 = call i64 @_B_two(), !dbg !29
  store i64 %128, i64* %18, !dbg !29
  %129 = load i64, i64* %17
  %130 = load i64, i64* %18
  %131 = icmp slt i64 %129, %130
  store i1 %131, i1* %16
  %132 = load i1, i1* %16
  store i1 %132, i1* %lt
  %133 = call i64 @_B_one(), !dbg !30
  store i64 %133, i64* %20, !dbg !30
  %134 = call i64 @_B_two(), !dbg !31
  store i64 %134, i64* %21, !dbg !31
  %135 = load i64, i64* %20
  %136 = load i64, i64* %21
  %137 = icmp sle i64 %135, %136
  store i1 %137, i1* %19
  %138 = load i1, i1* %19
  store i1 %138, i1* %lteq
  %139 = call i64 @_B_one(), !dbg !32
  store i64 %139, i64* %23, !dbg !32
  %140 = call i64 @_B_two(), !dbg !33
  store i64 %140, i64* %24, !dbg !33
  %141 = load i64, i64* %23
  %142 = load i64, i64* %24
  %143 = icmp sgt i64 %141, %142
  store i1 %143, i1* %22
  %144 = load i1, i1* %22
  store i1 %144, i1* %gt
  %145 = call i64 @_B_one(), !dbg !34
  store i64 %145, i64* %26, !dbg !34
  %146 = call i64 @_B_two(), !dbg !35
  store i64 %146, i64* %27, !dbg !35
  %147 = load i64, i64* %26
  %148 = load i64, i64* %27
  %149 = icmp sge i64 %147, %148
  store i1 %149, i1* %25
  %150 = load i1, i1* %25
  store i1 %150, i1* %gteq
  %151 = call i64 @_B_one(), !dbg !36
  store i64 %151, i64* %29, !dbg !36
  %152 = call i64 @_B_two(), !dbg !37
  store i64 %152, i64* %30, !dbg !37
  %153 = load i64, i64* %29
  %154 = load i64, i64* %30
  %155 = icmp eq i64 %153, %154
  store i1 %155, i1* %28
  %156 = load i1, i1* %28
  store i1 %156, i1* %eq
  %157 = call i64 @_B_one(), !dbg !38
  store i64 %157, i64* %32, !dbg !38
  %158 = call i64 @_B_two(), !dbg !39
  store i64 %158, i64* %33, !dbg !39
  %159 = load i64, i64* %32
  %160 = load i64, i64* %33
  %161 = icmp ne i64 %159, %160
  store i1 %161, i1* %31
  %162 = load i1, i1* %31
  store i1 %162, i1* %neq
  %163 = call i64 @_B_one(), !dbg !40
  store i64 %163, i64* %35, !dbg !40
  %164 = call i64 @_B_two(), !dbg !41
  store i64 %164, i64* %36, !dbg !41
  %165 = load i64, i64* %35
  %166 = load i64, i64* %36
  %167 = icmp eq i64 %165, %166
  store i1 %167, i1* %34
  %168 = load i1, i1* %34
  store i1 %168, i1* %eeq
  %169 = call i64 @_B_one(), !dbg !42
  store i64 %169, i64* %38, !dbg !42
  %170 = call i64 @_B_two(), !dbg !43
  store i64 %170, i64* %39, !dbg !43
  %171 = load i64, i64* %38
  %172 = load i64, i64* %39
  %173 = icmp ne i64 %171, %172
  store i1 %173, i1* %37
  %174 = load i1, i1* %37
  store i1 %174, i1* %neeq
  %175 = call i64 @_B_one(), !dbg !44
  store i64 %175, i64* %40, !dbg !44
  %176 = call i64 @_B_two(), !dbg !45
  store i64 %176, i64* %41, !dbg !45
  %177 = load i64, i64* %40
  %178 = load i64, i64* %41
  %179 = and i64 %177, %178
  store i64 %179, i64* %42
  %180 = load i64, i64* %42
  store i64 %180, i64* %and
  %181 = call i64 @_B_one(), !dbg !46
  store i64 %181, i64* %43, !dbg !46
  %182 = call i64 @_B_two(), !dbg !47
  store i64 %182, i64* %44, !dbg !47
  %183 = load i64, i64* %43
  %184 = load i64, i64* %44
  %185 = xor i64 %183, %184
  store i64 %185, i64* %45
  %186 = load i64, i64* %45
  store i64 %186, i64* %xor
  %187 = call i64 @_B_one(), !dbg !48
  store i64 %187, i64* %46, !dbg !48
  %188 = call i64 @_B_two(), !dbg !49
  store i64 %188, i64* %47, !dbg !49
  %189 = load i64, i64* %46
  %190 = load i64, i64* %47
  %191 = or i64 %189, %190
  store i64 %191, i64* %48
  %192 = load i64, i64* %48
  store i64 %192, i64* %or
  %193 = call i64 @_B_one(), !dbg !50
  store i64 %193, i64* %49, !dbg !50
  %194 = call i64 @_B_two(), !dbg !51
  store i64 %194, i64* %50, !dbg !51
  %195 = call i8 addrspace(1)* @_bal_alloc(i64 16)
  %196 = bitcast i8 addrspace(1)* %195 to [2 x i8 addrspace(1)*] addrspace(1)*
  %197 = load i64, i64* %49
  %198 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %197)
  %199 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %196, i64 0, i64 0
  store i8 addrspace(1)* %198, i8 addrspace(1)* addrspace(1)* %199
  %200 = load i64, i64* %50
  %201 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %200)
  %202 = getelementptr inbounds [2 x i8 addrspace(1)*], [2 x i8 addrspace(1)*] addrspace(1)* %196, i64 0, i64 1
  store i8 addrspace(1)* %201, i8 addrspace(1)* addrspace(1)* %202
  %203 = bitcast [2 x i8 addrspace(1)*] addrspace(1)* %196 to [0 x i8 addrspace(1)*] addrspace(1)*
  %204 = call i8 addrspace(1)* @_bal_alloc(i64 32)
  %205 = bitcast i8 addrspace(1)* %204 to {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)*
  %206 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 0
  store i64 8386559, i64 addrspace(1)* %206
  %207 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 1
  store i64 2, i64 addrspace(1)* %207
  %208 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 2
  store i64 2, i64 addrspace(1)* %208
  %209 = getelementptr inbounds {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*}, {i64, i64, i64, [0 x i8 addrspace(1)*] addrspace(1)*} addrspace(1)* %205, i64 0, i32 3
  store [0 x i8 addrspace(1)*] addrspace(1)* %203, [0 x i8 addrspace(1)*] addrspace(1)* addrspace(1)* %209
  %210 = getelementptr i8, i8 addrspace(1)* %204, i64 1297036692682702852
  store i8 addrspace(1)* %210, i8 addrspace(1)** %51
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %51
  store i8 addrspace(1)* %211, i8 addrspace(1)** %arr
  %212 = call i64 @_B_one(), !dbg !52
  store i64 %212, i64* %52, !dbg !52
  %213 = call i64 @_B_two(), !dbg !53
  store i64 %213, i64* %53, !dbg !53
  %214 = load i64, i64* %52, !dbg !54
  %215 = load i64, i64* %53, !dbg !54
  call void @_B_ignore(i64 %214, i64 %215), !dbg !54
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !54
  ret void
216:
  %217 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !17
  store i8 addrspace(1)* %217, i8 addrspace(1)** %55
  br label %66
}
define internal void @_B_ignore(i64 %0, i64 %1) !dbg !11 {
  %a = alloca i64
  %b = alloca i64
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %7, label %6
6:
  store i64 %0, i64* %a
  store i64 %1, i64* %b
  ret void
7:
  %8 = call i8 addrspace(1)* @_bal_panic_construct(i64 18180), !dbg !55
  call void @_bal_panic(i8 addrspace(1)* %8)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 1, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-misc/evalorder-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"one", linkageName:"_B_one", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"two", linkageName:"_B_two", scope: !1, file: !1, line: 9, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 15, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"ignore", linkageName:"_B_ignore", scope: !1, file: !1, line: 71, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 5, column: 3, scope: !5)
!15 = !DILocation(line: 0, column: 0, scope: !7)
!16 = !DILocation(line: 10, column: 3, scope: !7)
!17 = !DILocation(line: 0, column: 0, scope: !9)
!18 = !DILocation(line: 16, column: 13, scope: !9)
!19 = !DILocation(line: 16, column: 21, scope: !9)
!20 = !DILocation(line: 19, column: 13, scope: !9)
!21 = !DILocation(line: 19, column: 21, scope: !9)
!22 = !DILocation(line: 22, column: 13, scope: !9)
!23 = !DILocation(line: 22, column: 21, scope: !9)
!24 = !DILocation(line: 25, column: 13, scope: !9)
!25 = !DILocation(line: 25, column: 21, scope: !9)
!26 = !DILocation(line: 28, column: 13, scope: !9)
!27 = !DILocation(line: 28, column: 21, scope: !9)
!28 = !DILocation(line: 31, column: 16, scope: !9)
!29 = !DILocation(line: 31, column: 24, scope: !9)
!30 = !DILocation(line: 34, column: 18, scope: !9)
!31 = !DILocation(line: 34, column: 27, scope: !9)
!32 = !DILocation(line: 37, column: 16, scope: !9)
!33 = !DILocation(line: 37, column: 24, scope: !9)
!34 = !DILocation(line: 40, column: 18, scope: !9)
!35 = !DILocation(line: 40, column: 27, scope: !9)
!36 = !DILocation(line: 43, column: 16, scope: !9)
!37 = !DILocation(line: 43, column: 25, scope: !9)
!38 = !DILocation(line: 46, column: 17, scope: !9)
!39 = !DILocation(line: 46, column: 26, scope: !9)
!40 = !DILocation(line: 49, column: 17, scope: !9)
!41 = !DILocation(line: 49, column: 27, scope: !9)
!42 = !DILocation(line: 52, column: 18, scope: !9)
!43 = !DILocation(line: 52, column: 28, scope: !9)
!44 = !DILocation(line: 55, column: 13, scope: !9)
!45 = !DILocation(line: 55, column: 21, scope: !9)
!46 = !DILocation(line: 58, column: 13, scope: !9)
!47 = !DILocation(line: 58, column: 21, scope: !9)
!48 = !DILocation(line: 61, column: 12, scope: !9)
!49 = !DILocation(line: 61, column: 20, scope: !9)
!50 = !DILocation(line: 64, column: 16, scope: !9)
!51 = !DILocation(line: 64, column: 23, scope: !9)
!52 = !DILocation(line: 67, column: 10, scope: !9)
!53 = !DILocation(line: 67, column: 17, scope: !9)
!54 = !DILocation(line: 67, column: 3, scope: !9)
!55 = !DILocation(line: 0, column: 0, scope: !11)
