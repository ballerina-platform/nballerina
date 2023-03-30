@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64, i64) nocallback nofree nosync nounwind readnone speculatable willreturn
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %big = alloca i64
  %1 = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
  %one = alloca i64
  %11 = alloca i1
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
  %zero = alloca i64
  %21 = alloca i1
  %22 = alloca ptr addrspace(1)
  %23 = alloca i1
  %24 = alloca ptr addrspace(1)
  %25 = alloca i1
  %26 = alloca ptr addrspace(1)
  %27 = alloca i1
  %28 = alloca ptr addrspace(1)
  %29 = alloca i1
  %30 = alloca ptr addrspace(1)
  %31 = alloca i64
  %32 = alloca i1
  %33 = alloca ptr addrspace(1)
  %34 = alloca i64
  %35 = alloca i1
  %36 = alloca ptr addrspace(1)
  %37 = alloca i64
  %38 = alloca i1
  %39 = alloca ptr addrspace(1)
  %40 = alloca i64
  %41 = alloca i1
  %42 = alloca ptr addrspace(1)
  %43 = alloca i64
  %44 = alloca i1
  %45 = alloca ptr addrspace(1)
  %46 = alloca i64
  %47 = alloca i1
  %48 = alloca ptr addrspace(1)
  %49 = alloca i64
  %50 = alloca i1
  %51 = alloca ptr addrspace(1)
  %52 = alloca i64
  %53 = alloca i1
  %54 = alloca ptr addrspace(1)
  %55 = alloca i64
  %56 = alloca i1
  %57 = alloca ptr addrspace(1)
  %58 = alloca i64
  %59 = alloca i1
  %60 = alloca ptr addrspace(1)
  %61 = alloca ptr addrspace(1)
  %62 = alloca i8
  %63 = load ptr, ptr @_bal_stack_guard
  %64 = icmp ult ptr %62, %63
  br i1 %64, label %116, label %65
65:
  store i64 9223372036854775806, ptr %big
  %66 = load i64, ptr %big
  %67 = icmp eq i64 %66, 9223372036854775806
  store i1 %67, ptr %1
  %68 = load i1, ptr %1
  call void @_B_printBoolean(i1 %68), !dbg !11
  store ptr addrspace(1) null, ptr %2
  %69 = load i64, ptr %big
  %70 = icmp eq i64 %69, 1
  store i1 %70, ptr %3
  %71 = load i1, ptr %3
  call void @_B_printBoolean(i1 %71), !dbg !12
  store ptr addrspace(1) null, ptr %4
  %72 = load i64, ptr %big
  %73 = icmp eq i64 %72, 0
  store i1 %73, ptr %5
  %74 = load i1, ptr %5
  call void @_B_printBoolean(i1 %74), !dbg !13
  store ptr addrspace(1) null, ptr %6
  %75 = load i64, ptr %big
  %76 = icmp eq i64 %75, -1
  store i1 %76, ptr %7
  %77 = load i1, ptr %7
  call void @_B_printBoolean(i1 %77), !dbg !14
  store ptr addrspace(1) null, ptr %8
  %78 = load i64, ptr %big
  %79 = icmp eq i64 %78, -9223372036854775806
  store i1 %79, ptr %9
  %80 = load i1, ptr %9
  call void @_B_printBoolean(i1 %80), !dbg !15
  store ptr addrspace(1) null, ptr %10
  store i64 1, ptr %one
  %81 = load i64, ptr %one
  %82 = icmp eq i64 %81, 9223372036854775806
  store i1 %82, ptr %11
  %83 = load i1, ptr %11
  call void @_B_printBoolean(i1 %83), !dbg !16
  store ptr addrspace(1) null, ptr %12
  %84 = load i64, ptr %one
  %85 = icmp eq i64 %84, 1
  store i1 %85, ptr %13
  %86 = load i1, ptr %13
  call void @_B_printBoolean(i1 %86), !dbg !17
  store ptr addrspace(1) null, ptr %14
  %87 = load i64, ptr %one
  %88 = icmp eq i64 %87, 0
  store i1 %88, ptr %15
  %89 = load i1, ptr %15
  call void @_B_printBoolean(i1 %89), !dbg !18
  store ptr addrspace(1) null, ptr %16
  %90 = load i64, ptr %one
  %91 = icmp eq i64 %90, -1
  store i1 %91, ptr %17
  %92 = load i1, ptr %17
  call void @_B_printBoolean(i1 %92), !dbg !19
  store ptr addrspace(1) null, ptr %18
  %93 = load i64, ptr %one
  %94 = icmp eq i64 %93, -9223372036854775806
  store i1 %94, ptr %19
  %95 = load i1, ptr %19
  call void @_B_printBoolean(i1 %95), !dbg !20
  store ptr addrspace(1) null, ptr %20
  store i64 0, ptr %zero
  %96 = load i64, ptr %zero
  %97 = icmp eq i64 %96, 9223372036854775806
  store i1 %97, ptr %21
  %98 = load i1, ptr %21
  call void @_B_printBoolean(i1 %98), !dbg !21
  store ptr addrspace(1) null, ptr %22
  %99 = load i64, ptr %zero
  %100 = icmp eq i64 %99, 1
  store i1 %100, ptr %23
  %101 = load i1, ptr %23
  call void @_B_printBoolean(i1 %101), !dbg !22
  store ptr addrspace(1) null, ptr %24
  %102 = load i64, ptr %zero
  %103 = icmp eq i64 %102, 0
  store i1 %103, ptr %25
  %104 = load i1, ptr %25
  call void @_B_printBoolean(i1 %104), !dbg !23
  store ptr addrspace(1) null, ptr %26
  %105 = load i64, ptr %zero
  %106 = icmp eq i64 %105, -1
  store i1 %106, ptr %27
  %107 = load i1, ptr %27
  call void @_B_printBoolean(i1 %107), !dbg !24
  store ptr addrspace(1) null, ptr %28
  %108 = load i64, ptr %zero
  %109 = icmp eq i64 %108, -9223372036854775806
  store i1 %109, ptr %29
  %110 = load i1, ptr %29
  call void @_B_printBoolean(i1 %110), !dbg !25
  store ptr addrspace(1) null, ptr %30
  %111 = load i64, ptr %one
  %112 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %111)
  %113 = extractvalue {i64, i1} %112, 1
  br i1 %113, label %126, label %118
114:
  %115 = load ptr addrspace(1), ptr %61
  call void @_bal_panic(ptr addrspace(1) %115), !dbg !36
  unreachable
116:
  %117 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %117), !dbg !10
  unreachable
118:
  %119 = extractvalue {i64, i1} %112, 0
  store i64 %119, ptr %31
  %120 = load i64, ptr %31
  %121 = icmp eq i64 %120, 9223372036854775806
  store i1 %121, ptr %32
  %122 = load i1, ptr %32
  call void @_B_printBoolean(i1 %122), !dbg !26
  store ptr addrspace(1) null, ptr %33
  %123 = load i64, ptr %one
  %124 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %123)
  %125 = extractvalue {i64, i1} %124, 1
  br i1 %125, label %136, label %128
126:
  %127 = call ptr addrspace(1) @_bal_panic_construct(i64 7169), !dbg !9
  store ptr addrspace(1) %127, ptr %61
  br label %114
128:
  %129 = extractvalue {i64, i1} %124, 0
  store i64 %129, ptr %34
  %130 = load i64, ptr %34
  %131 = icmp eq i64 %130, 1
  store i1 %131, ptr %35
  %132 = load i1, ptr %35
  call void @_B_printBoolean(i1 %132), !dbg !27
  store ptr addrspace(1) null, ptr %36
  %133 = load i64, ptr %one
  %134 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %133)
  %135 = extractvalue {i64, i1} %134, 1
  br i1 %135, label %146, label %138
136:
  %137 = call ptr addrspace(1) @_bal_panic_construct(i64 7425), !dbg !9
  store ptr addrspace(1) %137, ptr %61
  br label %114
138:
  %139 = extractvalue {i64, i1} %134, 0
  store i64 %139, ptr %37
  %140 = load i64, ptr %37
  %141 = icmp eq i64 %140, 0
  store i1 %141, ptr %38
  %142 = load i1, ptr %38
  call void @_B_printBoolean(i1 %142), !dbg !28
  store ptr addrspace(1) null, ptr %39
  %143 = load i64, ptr %one
  %144 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %143)
  %145 = extractvalue {i64, i1} %144, 1
  br i1 %145, label %156, label %148
146:
  %147 = call ptr addrspace(1) @_bal_panic_construct(i64 7681), !dbg !9
  store ptr addrspace(1) %147, ptr %61
  br label %114
148:
  %149 = extractvalue {i64, i1} %144, 0
  store i64 %149, ptr %40
  %150 = load i64, ptr %40
  %151 = icmp eq i64 %150, -1
  store i1 %151, ptr %41
  %152 = load i1, ptr %41
  call void @_B_printBoolean(i1 %152), !dbg !29
  store ptr addrspace(1) null, ptr %42
  %153 = load i64, ptr %one
  %154 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %153)
  %155 = extractvalue {i64, i1} %154, 1
  br i1 %155, label %166, label %158
156:
  %157 = call ptr addrspace(1) @_bal_panic_construct(i64 7937), !dbg !9
  store ptr addrspace(1) %157, ptr %61
  br label %114
158:
  %159 = extractvalue {i64, i1} %154, 0
  store i64 %159, ptr %43
  %160 = load i64, ptr %43
  %161 = icmp eq i64 %160, -9223372036854775806
  store i1 %161, ptr %44
  %162 = load i1, ptr %44
  call void @_B_printBoolean(i1 %162), !dbg !30
  store ptr addrspace(1) null, ptr %45
  %163 = load i64, ptr %big
  %164 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %163)
  %165 = extractvalue {i64, i1} %164, 1
  br i1 %165, label %176, label %168
166:
  %167 = call ptr addrspace(1) @_bal_panic_construct(i64 8193), !dbg !9
  store ptr addrspace(1) %167, ptr %61
  br label %114
168:
  %169 = extractvalue {i64, i1} %164, 0
  store i64 %169, ptr %46
  %170 = load i64, ptr %46
  %171 = icmp eq i64 %170, 9223372036854775806
  store i1 %171, ptr %47
  %172 = load i1, ptr %47
  call void @_B_printBoolean(i1 %172), !dbg !31
  store ptr addrspace(1) null, ptr %48
  %173 = load i64, ptr %big
  %174 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %173)
  %175 = extractvalue {i64, i1} %174, 1
  br i1 %175, label %186, label %178
176:
  %177 = call ptr addrspace(1) @_bal_panic_construct(i64 8705), !dbg !9
  store ptr addrspace(1) %177, ptr %61
  br label %114
178:
  %179 = extractvalue {i64, i1} %174, 0
  store i64 %179, ptr %49
  %180 = load i64, ptr %49
  %181 = icmp eq i64 %180, 1
  store i1 %181, ptr %50
  %182 = load i1, ptr %50
  call void @_B_printBoolean(i1 %182), !dbg !32
  store ptr addrspace(1) null, ptr %51
  %183 = load i64, ptr %big
  %184 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %183)
  %185 = extractvalue {i64, i1} %184, 1
  br i1 %185, label %196, label %188
186:
  %187 = call ptr addrspace(1) @_bal_panic_construct(i64 8961), !dbg !9
  store ptr addrspace(1) %187, ptr %61
  br label %114
188:
  %189 = extractvalue {i64, i1} %184, 0
  store i64 %189, ptr %52
  %190 = load i64, ptr %52
  %191 = icmp eq i64 %190, 0
  store i1 %191, ptr %53
  %192 = load i1, ptr %53
  call void @_B_printBoolean(i1 %192), !dbg !33
  store ptr addrspace(1) null, ptr %54
  %193 = load i64, ptr %big
  %194 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %193)
  %195 = extractvalue {i64, i1} %194, 1
  br i1 %195, label %206, label %198
196:
  %197 = call ptr addrspace(1) @_bal_panic_construct(i64 9217), !dbg !9
  store ptr addrspace(1) %197, ptr %61
  br label %114
198:
  %199 = extractvalue {i64, i1} %194, 0
  store i64 %199, ptr %55
  %200 = load i64, ptr %55
  %201 = icmp eq i64 %200, -1
  store i1 %201, ptr %56
  %202 = load i1, ptr %56
  call void @_B_printBoolean(i1 %202), !dbg !34
  store ptr addrspace(1) null, ptr %57
  %203 = load i64, ptr %big
  %204 = call {i64, i1} @llvm.ssub.with.overflow.i64.i64(i64 0, i64 %203)
  %205 = extractvalue {i64, i1} %204, 1
  br i1 %205, label %213, label %208
206:
  %207 = call ptr addrspace(1) @_bal_panic_construct(i64 9473), !dbg !9
  store ptr addrspace(1) %207, ptr %61
  br label %114
208:
  %209 = extractvalue {i64, i1} %204, 0
  store i64 %209, ptr %58
  %210 = load i64, ptr %58
  %211 = icmp eq i64 %210, -9223372036854775806
  store i1 %211, ptr %59
  %212 = load i1, ptr %59
  call void @_B_printBoolean(i1 %212), !dbg !35
  store ptr addrspace(1) null, ptr %60
  ret void
213:
  %214 = call ptr addrspace(1) @_bal_panic_construct(i64 9729), !dbg !9
  store ptr addrspace(1) %214, ptr %61
  br label %114
}
define internal void @_B_printBoolean(i1 %0) !dbg !7 {
  %b = alloca i1
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %38, label %9
9:
  store i1 %0, ptr %b
  %10 = load i1, ptr %b
  br i1 %10, label %11, label %24
11:
  %12 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !41
  %13 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 3
  %14 = load ptr addrspace(1), ptr addrspace(1) %13, align 8
  %15 = bitcast ptr addrspace(1) %14 to ptr addrspace(1)
  %16 = and i64 72057594037927935, 1
  %17 = or i64 2449958197289549824, %16
  %18 = getelementptr i8, ptr addrspace(1) null, i64 %17
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %15, i64 0, i64 0
  store ptr addrspace(1) %18, ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %12, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %12 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %2
  %23 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !42
  store ptr addrspace(1) null, ptr %3
  br label %37
24:
  %25 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %26 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 3
  %27 = load ptr addrspace(1), ptr addrspace(1) %26, align 8
  %28 = bitcast ptr addrspace(1) %27 to ptr addrspace(1)
  %29 = and i64 72057594037927935, 0
  %30 = or i64 2449958197289549824, %29
  %31 = getelementptr i8, ptr addrspace(1) null, i64 %30
  %32 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %28, i64 0, i64 0
  store ptr addrspace(1) %31, ptr addrspace(1) %32
  %33 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %25, i64 0, i32 1
  store i64 1, ptr addrspace(1) %33
  %34 = bitcast ptr addrspace(1) %25 to ptr addrspace(1)
  %35 = getelementptr i8, ptr addrspace(1) %34, i64 864691128455135236
  store ptr addrspace(1) %35, ptr %4
  %36 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %36), !dbg !40
  store ptr addrspace(1) null, ptr %5
  br label %37
37:
  ret void
38:
  %39 = call ptr addrspace(1) @_bal_panic_construct(i64 10500), !dbg !37
  call void @_bal_panic(ptr addrspace(1) %39), !dbg !38
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
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 8, column: 4, scope: !5)
!12 = !DILocation(line: 9, column: 4, scope: !5)
!13 = !DILocation(line: 10, column: 4, scope: !5)
!14 = !DILocation(line: 11, column: 4, scope: !5)
!15 = !DILocation(line: 12, column: 4, scope: !5)
!16 = !DILocation(line: 15, column: 4, scope: !5)
!17 = !DILocation(line: 16, column: 4, scope: !5)
!18 = !DILocation(line: 17, column: 4, scope: !5)
!19 = !DILocation(line: 18, column: 4, scope: !5)
!20 = !DILocation(line: 19, column: 4, scope: !5)
!21 = !DILocation(line: 22, column: 4, scope: !5)
!22 = !DILocation(line: 23, column: 4, scope: !5)
!23 = !DILocation(line: 24, column: 4, scope: !5)
!24 = !DILocation(line: 25, column: 4, scope: !5)
!25 = !DILocation(line: 26, column: 4, scope: !5)
!26 = !DILocation(line: 28, column: 4, scope: !5)
!27 = !DILocation(line: 29, column: 4, scope: !5)
!28 = !DILocation(line: 30, column: 4, scope: !5)
!29 = !DILocation(line: 31, column: 4, scope: !5)
!30 = !DILocation(line: 32, column: 4, scope: !5)
!31 = !DILocation(line: 34, column: 4, scope: !5)
!32 = !DILocation(line: 35, column: 4, scope: !5)
!33 = !DILocation(line: 36, column: 4, scope: !5)
!34 = !DILocation(line: 37, column: 4, scope: !5)
!35 = !DILocation(line: 38, column: 4, scope: !5)
!36 = !DILocation(line: 39, column: 0, scope: !5)
!37 = !DILocation(line: 0, column: 0, scope: !7)
!38 = !DILocation(line: 41, column: 9, scope: !7)
!39 = !DILocation(line: 46, column: 19, scope: !7)
!40 = !DILocation(line: 46, column: 8, scope: !7)
!41 = !DILocation(line: 43, column: 19, scope: !7)
!42 = !DILocation(line: 43, column: 8, scope: !7)
