@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %big = alloca i64
  %1 = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %10 = alloca i8 addrspace(1)*
  %one = alloca i64
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %zero = alloca i64
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i64
  %32 = alloca i1
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i64
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i64
  %38 = alloca i1
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i64
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i64
  %44 = alloca i1
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i64
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i64
  %50 = alloca i1
  %51 = alloca i8 addrspace(1)*
  %52 = alloca i64
  %53 = alloca i1
  %54 = alloca i8 addrspace(1)*
  %55 = alloca i64
  %56 = alloca i1
  %57 = alloca i8 addrspace(1)*
  %58 = alloca i64
  %59 = alloca i1
  %60 = alloca i8 addrspace(1)*
  %61 = alloca i8 addrspace(1)*
  %62 = alloca i8
  %63 = load i8*, i8** @_bal_stack_guard
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %116, label %65
65:
  store i64 9223372036854775806, i64* %big
  %66 = load i64, i64* %big
  %67 = icmp eq i64 %66, 9223372036854775806
  store i1 %67, i1* %1
  %68 = load i1, i1* %1, !dbg !10
  call void @_B_printBoolean(i1 %68), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !10
  %69 = load i64, i64* %big
  %70 = icmp eq i64 %69, 1
  store i1 %70, i1* %3
  %71 = load i1, i1* %3, !dbg !11
  call void @_B_printBoolean(i1 %71), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !11
  %72 = load i64, i64* %big
  %73 = icmp eq i64 %72, 0
  store i1 %73, i1* %5
  %74 = load i1, i1* %5, !dbg !12
  call void @_B_printBoolean(i1 %74), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !12
  %75 = load i64, i64* %big
  %76 = icmp eq i64 %75, -1
  store i1 %76, i1* %7
  %77 = load i1, i1* %7, !dbg !13
  call void @_B_printBoolean(i1 %77), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !13
  %78 = load i64, i64* %big
  %79 = icmp eq i64 %78, -9223372036854775806
  store i1 %79, i1* %9
  %80 = load i1, i1* %9, !dbg !14
  call void @_B_printBoolean(i1 %80), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !14
  store i64 1, i64* %one
  %81 = load i64, i64* %one
  %82 = icmp eq i64 %81, 9223372036854775806
  store i1 %82, i1* %11
  %83 = load i1, i1* %11, !dbg !15
  call void @_B_printBoolean(i1 %83), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !15
  %84 = load i64, i64* %one
  %85 = icmp eq i64 %84, 1
  store i1 %85, i1* %13
  %86 = load i1, i1* %13, !dbg !16
  call void @_B_printBoolean(i1 %86), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !16
  %87 = load i64, i64* %one
  %88 = icmp eq i64 %87, 0
  store i1 %88, i1* %15
  %89 = load i1, i1* %15, !dbg !17
  call void @_B_printBoolean(i1 %89), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !17
  %90 = load i64, i64* %one
  %91 = icmp eq i64 %90, -1
  store i1 %91, i1* %17
  %92 = load i1, i1* %17, !dbg !18
  call void @_B_printBoolean(i1 %92), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !18
  %93 = load i64, i64* %one
  %94 = icmp eq i64 %93, -9223372036854775806
  store i1 %94, i1* %19
  %95 = load i1, i1* %19, !dbg !19
  call void @_B_printBoolean(i1 %95), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !19
  store i64 0, i64* %zero
  %96 = load i64, i64* %zero
  %97 = icmp eq i64 %96, 9223372036854775806
  store i1 %97, i1* %21
  %98 = load i1, i1* %21, !dbg !20
  call void @_B_printBoolean(i1 %98), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !20
  %99 = load i64, i64* %zero
  %100 = icmp eq i64 %99, 1
  store i1 %100, i1* %23
  %101 = load i1, i1* %23, !dbg !21
  call void @_B_printBoolean(i1 %101), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !21
  %102 = load i64, i64* %zero
  %103 = icmp eq i64 %102, 0
  store i1 %103, i1* %25
  %104 = load i1, i1* %25, !dbg !22
  call void @_B_printBoolean(i1 %104), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !22
  %105 = load i64, i64* %zero
  %106 = icmp eq i64 %105, -1
  store i1 %106, i1* %27
  %107 = load i1, i1* %27, !dbg !23
  call void @_B_printBoolean(i1 %107), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !23
  %108 = load i64, i64* %zero
  %109 = icmp eq i64 %108, -9223372036854775806
  store i1 %109, i1* %29
  %110 = load i1, i1* %29, !dbg !24
  call void @_B_printBoolean(i1 %110), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !24
  %111 = load i64, i64* %one
  %112 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %111)
  %113 = extractvalue {i64, i1} %112, 1
  br i1 %113, label %126, label %118
114:
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %61
  call void @_bal_panic(i8 addrspace(1)* %115)
  unreachable
116:
  %117 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %117)
  unreachable
118:
  %119 = extractvalue {i64, i1} %112, 0
  store i64 %119, i64* %31
  %120 = load i64, i64* %31
  %121 = icmp eq i64 %120, 9223372036854775806
  store i1 %121, i1* %32
  %122 = load i1, i1* %32, !dbg !25
  call void @_B_printBoolean(i1 %122), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !25
  %123 = load i64, i64* %one
  %124 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %123)
  %125 = extractvalue {i64, i1} %124, 1
  br i1 %125, label %136, label %128
126:
  %127 = call i8 addrspace(1)* @_bal_panic_construct(i64 7169), !dbg !9
  store i8 addrspace(1)* %127, i8 addrspace(1)** %61
  br label %114
128:
  %129 = extractvalue {i64, i1} %124, 0
  store i64 %129, i64* %34
  %130 = load i64, i64* %34
  %131 = icmp eq i64 %130, 1
  store i1 %131, i1* %35
  %132 = load i1, i1* %35, !dbg !26
  call void @_B_printBoolean(i1 %132), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !26
  %133 = load i64, i64* %one
  %134 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %133)
  %135 = extractvalue {i64, i1} %134, 1
  br i1 %135, label %146, label %138
136:
  %137 = call i8 addrspace(1)* @_bal_panic_construct(i64 7425), !dbg !9
  store i8 addrspace(1)* %137, i8 addrspace(1)** %61
  br label %114
138:
  %139 = extractvalue {i64, i1} %134, 0
  store i64 %139, i64* %37
  %140 = load i64, i64* %37
  %141 = icmp eq i64 %140, 0
  store i1 %141, i1* %38
  %142 = load i1, i1* %38, !dbg !27
  call void @_B_printBoolean(i1 %142), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !27
  %143 = load i64, i64* %one
  %144 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %143)
  %145 = extractvalue {i64, i1} %144, 1
  br i1 %145, label %156, label %148
146:
  %147 = call i8 addrspace(1)* @_bal_panic_construct(i64 7681), !dbg !9
  store i8 addrspace(1)* %147, i8 addrspace(1)** %61
  br label %114
148:
  %149 = extractvalue {i64, i1} %144, 0
  store i64 %149, i64* %40
  %150 = load i64, i64* %40
  %151 = icmp eq i64 %150, -1
  store i1 %151, i1* %41
  %152 = load i1, i1* %41, !dbg !28
  call void @_B_printBoolean(i1 %152), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !28
  %153 = load i64, i64* %one
  %154 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %153)
  %155 = extractvalue {i64, i1} %154, 1
  br i1 %155, label %166, label %158
156:
  %157 = call i8 addrspace(1)* @_bal_panic_construct(i64 7937), !dbg !9
  store i8 addrspace(1)* %157, i8 addrspace(1)** %61
  br label %114
158:
  %159 = extractvalue {i64, i1} %154, 0
  store i64 %159, i64* %43
  %160 = load i64, i64* %43
  %161 = icmp eq i64 %160, -9223372036854775806
  store i1 %161, i1* %44
  %162 = load i1, i1* %44, !dbg !29
  call void @_B_printBoolean(i1 %162), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %45, !dbg !29
  %163 = load i64, i64* %big
  %164 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %163)
  %165 = extractvalue {i64, i1} %164, 1
  br i1 %165, label %176, label %168
166:
  %167 = call i8 addrspace(1)* @_bal_panic_construct(i64 8193), !dbg !9
  store i8 addrspace(1)* %167, i8 addrspace(1)** %61
  br label %114
168:
  %169 = extractvalue {i64, i1} %164, 0
  store i64 %169, i64* %46
  %170 = load i64, i64* %46
  %171 = icmp eq i64 %170, 9223372036854775806
  store i1 %171, i1* %47
  %172 = load i1, i1* %47, !dbg !30
  call void @_B_printBoolean(i1 %172), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !30
  %173 = load i64, i64* %big
  %174 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %173)
  %175 = extractvalue {i64, i1} %174, 1
  br i1 %175, label %186, label %178
176:
  %177 = call i8 addrspace(1)* @_bal_panic_construct(i64 8705), !dbg !9
  store i8 addrspace(1)* %177, i8 addrspace(1)** %61
  br label %114
178:
  %179 = extractvalue {i64, i1} %174, 0
  store i64 %179, i64* %49
  %180 = load i64, i64* %49
  %181 = icmp eq i64 %180, 1
  store i1 %181, i1* %50
  %182 = load i1, i1* %50, !dbg !31
  call void @_B_printBoolean(i1 %182), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %51, !dbg !31
  %183 = load i64, i64* %big
  %184 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %183)
  %185 = extractvalue {i64, i1} %184, 1
  br i1 %185, label %196, label %188
186:
  %187 = call i8 addrspace(1)* @_bal_panic_construct(i64 8961), !dbg !9
  store i8 addrspace(1)* %187, i8 addrspace(1)** %61
  br label %114
188:
  %189 = extractvalue {i64, i1} %184, 0
  store i64 %189, i64* %52
  %190 = load i64, i64* %52
  %191 = icmp eq i64 %190, 0
  store i1 %191, i1* %53
  %192 = load i1, i1* %53, !dbg !32
  call void @_B_printBoolean(i1 %192), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %54, !dbg !32
  %193 = load i64, i64* %big
  %194 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %193)
  %195 = extractvalue {i64, i1} %194, 1
  br i1 %195, label %206, label %198
196:
  %197 = call i8 addrspace(1)* @_bal_panic_construct(i64 9217), !dbg !9
  store i8 addrspace(1)* %197, i8 addrspace(1)** %61
  br label %114
198:
  %199 = extractvalue {i64, i1} %194, 0
  store i64 %199, i64* %55
  %200 = load i64, i64* %55
  %201 = icmp eq i64 %200, -1
  store i1 %201, i1* %56
  %202 = load i1, i1* %56, !dbg !33
  call void @_B_printBoolean(i1 %202), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %57, !dbg !33
  %203 = load i64, i64* %big
  %204 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 0, i64 %203)
  %205 = extractvalue {i64, i1} %204, 1
  br i1 %205, label %213, label %208
206:
  %207 = call i8 addrspace(1)* @_bal_panic_construct(i64 9473), !dbg !9
  store i8 addrspace(1)* %207, i8 addrspace(1)** %61
  br label %114
208:
  %209 = extractvalue {i64, i1} %204, 0
  store i64 %209, i64* %58
  %210 = load i64, i64* %58
  %211 = icmp eq i64 %210, -9223372036854775806
  store i1 %211, i1* %59
  %212 = load i1, i1* %59, !dbg !34
  call void @_B_printBoolean(i1 %212), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %60, !dbg !34
  ret void
213:
  %214 = call i8 addrspace(1)* @_bal_panic_construct(i64 9729), !dbg !9
  store i8 addrspace(1)* %214, i8 addrspace(1)** %61
  br label %114
}
define internal void @_B_printBoolean(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i1 %0, i1* %b
  %8 = load i1, i1* %b
  br i1 %8, label %9, label %11
9:
  %10 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !36
  call void @_Bb02ioprintln(i8 addrspace(1)* %10), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !36
  br label %13
11:
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !37
  call void @_Bb02ioprintln(i8 addrspace(1)* %12), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !37
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 10500), !dbg !35
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-int/equal1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBoolean", linkageName:"_B_printBoolean", scope: !1, file: !1, line: 41, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 8, column: 4, scope: !5)
!11 = !DILocation(line: 9, column: 4, scope: !5)
!12 = !DILocation(line: 10, column: 4, scope: !5)
!13 = !DILocation(line: 11, column: 4, scope: !5)
!14 = !DILocation(line: 12, column: 4, scope: !5)
!15 = !DILocation(line: 15, column: 4, scope: !5)
!16 = !DILocation(line: 16, column: 4, scope: !5)
!17 = !DILocation(line: 17, column: 4, scope: !5)
!18 = !DILocation(line: 18, column: 4, scope: !5)
!19 = !DILocation(line: 19, column: 4, scope: !5)
!20 = !DILocation(line: 22, column: 4, scope: !5)
!21 = !DILocation(line: 23, column: 4, scope: !5)
!22 = !DILocation(line: 24, column: 4, scope: !5)
!23 = !DILocation(line: 25, column: 4, scope: !5)
!24 = !DILocation(line: 26, column: 4, scope: !5)
!25 = !DILocation(line: 28, column: 4, scope: !5)
!26 = !DILocation(line: 29, column: 4, scope: !5)
!27 = !DILocation(line: 30, column: 4, scope: !5)
!28 = !DILocation(line: 31, column: 4, scope: !5)
!29 = !DILocation(line: 32, column: 4, scope: !5)
!30 = !DILocation(line: 34, column: 4, scope: !5)
!31 = !DILocation(line: 35, column: 4, scope: !5)
!32 = !DILocation(line: 36, column: 4, scope: !5)
!33 = !DILocation(line: 37, column: 4, scope: !5)
!34 = !DILocation(line: 38, column: 4, scope: !5)
!35 = !DILocation(line: 0, column: 0, scope: !7)
!36 = !DILocation(line: 43, column: 8, scope: !7)
!37 = !DILocation(line: 46, column: 8, scope: !7)
