@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
define void @_B04rootmain() !dbg !5 {
  %x = alloca i64
  %a = alloca i64
  %b = alloca i64
  %c = alloca i64
  %d = alloca i64
  %e = alloca i64
  %f = alloca i64
  %g = alloca i64
  %h = alloca i64
  %i = alloca i64
  %x1 = alloca i64
  %1 = alloca i64
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %x2 = alloca i64
  %4 = alloca i64
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %x3 = alloca i64
  %7 = alloca i64
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %x4 = alloca i64
  %10 = alloca i64
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %x5 = alloca i64
  %13 = alloca i64
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %x6 = alloca i64
  %16 = alloca i64
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %x7 = alloca i64
  %19 = alloca i64
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %x8 = alloca i64
  %22 = alloca i64
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %x9 = alloca i64
  %25 = alloca i64
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca i8
  %29 = load ptr, ptr @_bal_stack_guard
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %194, label %31
31:
  store i64 250, ptr %x
  store i64 2, ptr %a
  store i64 -120, ptr %b
  store i64 1, ptr %c
  store i64 8, ptr %d
  store i64 -32755, ptr %e
  store i64 3, ptr %f
  store i64 6, ptr %g
  store i64 -2147483647, ptr %h
  store i64 5, ptr %i
  %32 = load i64, ptr %x
  %33 = load i64, ptr %a
  %34 = and i64 63, %33
  %35 = ashr i64 %32, %34
  store i64 %35, ptr %1
  %36 = load i64, ptr %1
  store i64 %36, ptr %x1
  %37 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !9
  %38 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 3
  %39 = load ptr addrspace(1), ptr addrspace(1) %38, align 8
  %40 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %41 = load i64, ptr %x1
  %42 = and i64 72057594037927935, %41
  %43 = or i64 2449958197289549824, %42
  %44 = getelementptr i8, ptr addrspace(1) null, i64 %43
  %45 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %40, i64 0, i64 0
  store ptr addrspace(1) %44, ptr addrspace(1) %45
  %46 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %37, i64 0, i32 1
  store i64 1, ptr addrspace(1) %46
  %47 = bitcast ptr addrspace(1) %37 to ptr addrspace(1)
  %48 = getelementptr i8, ptr addrspace(1) %47, i64 864691128455135236
  store ptr addrspace(1) %48, ptr %2
  %49 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %49), !dbg !10
  store ptr addrspace(1) null, ptr %3
  %50 = load i64, ptr %x
  %51 = load i64, ptr %b
  %52 = and i64 63, %51
  %53 = ashr i64 %50, %52
  store i64 %53, ptr %4
  %54 = load i64, ptr %4
  store i64 %54, ptr %x2
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !11
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = load i64, ptr %x2
  %60 = and i64 72057594037927935, %59
  %61 = or i64 2449958197289549824, %60
  %62 = getelementptr i8, ptr addrspace(1) null, i64 %61
  %63 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) %62, ptr addrspace(1) %63
  %64 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %64
  %65 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %66 = getelementptr i8, ptr addrspace(1) %65, i64 864691128455135236
  store ptr addrspace(1) %66, ptr %5
  %67 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %67), !dbg !12
  store ptr addrspace(1) null, ptr %6
  %68 = load i64, ptr %x
  %69 = load i64, ptr %c
  %70 = and i64 63, %69
  %71 = ashr i64 %68, %70
  store i64 %71, ptr %7
  %72 = load i64, ptr %7
  store i64 %72, ptr %x3
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !13
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = load i64, ptr %x3
  %78 = and i64 72057594037927935, %77
  %79 = or i64 2449958197289549824, %78
  %80 = getelementptr i8, ptr addrspace(1) null, i64 %79
  %81 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) %80, ptr addrspace(1) %81
  %82 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %82
  %83 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %84 = getelementptr i8, ptr addrspace(1) %83, i64 864691128455135236
  store ptr addrspace(1) %84, ptr %8
  %85 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %85), !dbg !14
  store ptr addrspace(1) null, ptr %9
  %86 = load i64, ptr %x
  %87 = load i64, ptr %d
  %88 = and i64 63, %87
  %89 = ashr i64 %86, %88
  store i64 %89, ptr %10
  %90 = load i64, ptr %10
  store i64 %90, ptr %x4
  %91 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %92 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 3
  %93 = load ptr addrspace(1), ptr addrspace(1) %92, align 8
  %94 = bitcast ptr addrspace(1) %93 to ptr addrspace(1)
  %95 = load i64, ptr %x4
  %96 = and i64 72057594037927935, %95
  %97 = or i64 2449958197289549824, %96
  %98 = getelementptr i8, ptr addrspace(1) null, i64 %97
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %94, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %91, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %91 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %11
  %103 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !16
  store ptr addrspace(1) null, ptr %12
  %104 = load i64, ptr %x
  %105 = load i64, ptr %e
  %106 = and i64 63, %105
  %107 = ashr i64 %104, %106
  store i64 %107, ptr %13
  %108 = load i64, ptr %13
  store i64 %108, ptr %x5
  %109 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !17
  %110 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 3
  %111 = load ptr addrspace(1), ptr addrspace(1) %110, align 8
  %112 = bitcast ptr addrspace(1) %111 to ptr addrspace(1)
  %113 = load i64, ptr %x5
  %114 = and i64 72057594037927935, %113
  %115 = or i64 2449958197289549824, %114
  %116 = getelementptr i8, ptr addrspace(1) null, i64 %115
  %117 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %112, i64 0, i64 0
  store ptr addrspace(1) %116, ptr addrspace(1) %117
  %118 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %109, i64 0, i32 1
  store i64 1, ptr addrspace(1) %118
  %119 = bitcast ptr addrspace(1) %109 to ptr addrspace(1)
  %120 = getelementptr i8, ptr addrspace(1) %119, i64 864691128455135236
  store ptr addrspace(1) %120, ptr %14
  %121 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %121), !dbg !18
  store ptr addrspace(1) null, ptr %15
  %122 = load i64, ptr %x
  %123 = load i64, ptr %f
  %124 = and i64 63, %123
  %125 = ashr i64 %122, %124
  store i64 %125, ptr %16
  %126 = load i64, ptr %16
  store i64 %126, ptr %x6
  %127 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !19
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = load i64, ptr %x6
  %132 = and i64 72057594037927935, %131
  %133 = or i64 2449958197289549824, %132
  %134 = getelementptr i8, ptr addrspace(1) null, i64 %133
  %135 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %130, i64 0, i64 0
  store ptr addrspace(1) %134, ptr addrspace(1) %135
  %136 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  store i64 1, ptr addrspace(1) %136
  %137 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %138 = getelementptr i8, ptr addrspace(1) %137, i64 864691128455135236
  store ptr addrspace(1) %138, ptr %17
  %139 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %139), !dbg !20
  store ptr addrspace(1) null, ptr %18
  %140 = load i64, ptr %x
  %141 = load i64, ptr %g
  %142 = and i64 63, %141
  %143 = ashr i64 %140, %142
  store i64 %143, ptr %19
  %144 = load i64, ptr %19
  store i64 %144, ptr %x7
  %145 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %146 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 3
  %147 = load ptr addrspace(1), ptr addrspace(1) %146, align 8
  %148 = bitcast ptr addrspace(1) %147 to ptr addrspace(1)
  %149 = load i64, ptr %x7
  %150 = and i64 72057594037927935, %149
  %151 = or i64 2449958197289549824, %150
  %152 = getelementptr i8, ptr addrspace(1) null, i64 %151
  %153 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %148, i64 0, i64 0
  store ptr addrspace(1) %152, ptr addrspace(1) %153
  %154 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %145, i64 0, i32 1
  store i64 1, ptr addrspace(1) %154
  %155 = bitcast ptr addrspace(1) %145 to ptr addrspace(1)
  %156 = getelementptr i8, ptr addrspace(1) %155, i64 864691128455135236
  store ptr addrspace(1) %156, ptr %20
  %157 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %157), !dbg !22
  store ptr addrspace(1) null, ptr %21
  %158 = load i64, ptr %x
  %159 = load i64, ptr %h
  %160 = and i64 63, %159
  %161 = ashr i64 %158, %160
  store i64 %161, ptr %22
  %162 = load i64, ptr %22
  store i64 %162, ptr %x8
  %163 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !23
  %164 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 3
  %165 = load ptr addrspace(1), ptr addrspace(1) %164, align 8
  %166 = bitcast ptr addrspace(1) %165 to ptr addrspace(1)
  %167 = load i64, ptr %x8
  %168 = and i64 72057594037927935, %167
  %169 = or i64 2449958197289549824, %168
  %170 = getelementptr i8, ptr addrspace(1) null, i64 %169
  %171 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %166, i64 0, i64 0
  store ptr addrspace(1) %170, ptr addrspace(1) %171
  %172 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %163, i64 0, i32 1
  store i64 1, ptr addrspace(1) %172
  %173 = bitcast ptr addrspace(1) %163 to ptr addrspace(1)
  %174 = getelementptr i8, ptr addrspace(1) %173, i64 864691128455135236
  store ptr addrspace(1) %174, ptr %23
  %175 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %175), !dbg !24
  store ptr addrspace(1) null, ptr %24
  %176 = load i64, ptr %x
  %177 = load i64, ptr %i
  %178 = and i64 63, %177
  %179 = ashr i64 %176, %178
  store i64 %179, ptr %25
  %180 = load i64, ptr %25
  store i64 %180, ptr %x9
  %181 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !25
  %182 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 3
  %183 = load ptr addrspace(1), ptr addrspace(1) %182, align 8
  %184 = bitcast ptr addrspace(1) %183 to ptr addrspace(1)
  %185 = load i64, ptr %x9
  %186 = and i64 72057594037927935, %185
  %187 = or i64 2449958197289549824, %186
  %188 = getelementptr i8, ptr addrspace(1) null, i64 %187
  %189 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %184, i64 0, i64 0
  store ptr addrspace(1) %188, ptr addrspace(1) %189
  %190 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %181, i64 0, i32 1
  store i64 1, ptr addrspace(1) %190
  %191 = bitcast ptr addrspace(1) %181 to ptr addrspace(1)
  %192 = getelementptr i8, ptr addrspace(1) %191, i64 864691128455135236
  store ptr addrspace(1) %192, ptr %26
  %193 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %193), !dbg !26
  store ptr addrspace(1) null, ptr %27
  ret void
194:
  %195 = call ptr addrspace(1) @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(ptr addrspace(1) %195), !dbg !8
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/14-bug/shiftresulttype1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 2, column: 16, scope: !5)
!9 = !DILocation(line: 15, column: 15, scope: !5)
!10 = !DILocation(line: 15, column: 4, scope: !5)
!11 = !DILocation(line: 17, column: 15, scope: !5)
!12 = !DILocation(line: 17, column: 4, scope: !5)
!13 = !DILocation(line: 20, column: 15, scope: !5)
!14 = !DILocation(line: 20, column: 4, scope: !5)
!15 = !DILocation(line: 23, column: 15, scope: !5)
!16 = !DILocation(line: 23, column: 4, scope: !5)
!17 = !DILocation(line: 25, column: 15, scope: !5)
!18 = !DILocation(line: 25, column: 4, scope: !5)
!19 = !DILocation(line: 28, column: 15, scope: !5)
!20 = !DILocation(line: 28, column: 4, scope: !5)
!21 = !DILocation(line: 31, column: 15, scope: !5)
!22 = !DILocation(line: 31, column: 4, scope: !5)
!23 = !DILocation(line: 33, column: 15, scope: !5)
!24 = !DILocation(line: 33, column: 4, scope: !5)
!25 = !DILocation(line: 36, column: 15, scope: !5)
!26 = !DILocation(line: 36, column: 4, scope: !5)
