@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %a = alloca i8 addrspace(1)*
  %b = alloca i8 addrspace(1)*
  %c = alloca i8 addrspace(1)*
  %v1 = alloca i8 addrspace(1)*
  %1 = alloca i1
  %2 = alloca i64
  %3 = alloca i1
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %9 = alloca i64
  %10 = alloca i1
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i64
  %16 = alloca i1
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %d = alloca i8 addrspace(1)*
  %v2 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i64
  %23 = alloca i1
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca i64
  %30 = alloca i1
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i64
  %36 = alloca i1
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i1
  %41 = alloca i64
  %42 = alloca i1
  %43 = alloca i64
  %44 = alloca i64
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i8 addrspace(1)*
  %v3 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i64
  %49 = alloca i1
  %50 = alloca i64
  %51 = alloca i64
  %52 = alloca i8 addrspace(1)*
  %53 = alloca i8 addrspace(1)*
  %54 = alloca i8
  %55 = load i8*, i8** @_bal_stack_guard
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %270, label %57
57:
  %58 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 4)
  store i8 addrspace(1)* %58, i8 addrspace(1)** %a
  %59 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2)
  store i8 addrspace(1)* %59, i8 addrspace(1)** %b
  %60 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1)
  store i8 addrspace(1)* %60, i8 addrspace(1)** %c
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %62 = addrspacecast i8 addrspace(1)* %61 to i8*
  %63 = ptrtoint i8* %62 to i64
  %64 = and i64 %63, 2233785415175766016
  %65 = icmp eq i64 %64, 0
  store i1 %65, i1* %1
  %66 = load i1, i1* %1
  br i1 %66, label %76, label %67
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %69 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %68)
  store i64 %69, i64* %2
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %71 = addrspacecast i8 addrspace(1)* %70 to i8*
  %72 = ptrtoint i8* %71 to i64
  %73 = and i64 %72, 2233785415175766016
  %74 = icmp eq i64 %73, 0
  store i1 %74, i1* %3
  %75 = load i1, i1* %3
  br i1 %75, label %76, label %77
76:
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  br label %85
77:
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %79 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %78)
  store i64 %79, i64* %4
  %80 = load i64, i64* %2
  %81 = load i64, i64* %4
  %82 = or i64 %80, %81
  store i64 %82, i64* %5
  %83 = load i64, i64* %5
  %84 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %83)
  store i8 addrspace(1)* %84, i8 addrspace(1)** %6
  br label %85
85:
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %86, i8 addrspace(1)** %v1
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %v1, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !8
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = and i64 %90, 2233785415175766016
  %92 = icmp eq i64 %91, 0
  store i1 %92, i1* %8
  %93 = load i1, i1* %8
  br i1 %93, label %103, label %94
94:
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %96 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %95)
  store i64 %96, i64* %9
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %98 = addrspacecast i8 addrspace(1)* %97 to i8*
  %99 = ptrtoint i8* %98 to i64
  %100 = and i64 %99, 2233785415175766016
  %101 = icmp eq i64 %100, 0
  store i1 %101, i1* %10
  %102 = load i1, i1* %10
  br i1 %102, label %103, label %104
103:
  store i8 addrspace(1)* null, i8 addrspace(1)** %13
  br label %112
104:
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %106 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %105)
  store i64 %106, i64* %11
  %107 = load i64, i64* %9
  %108 = load i64, i64* %11
  %109 = or i64 %107, %108
  store i64 %109, i64* %12
  %110 = load i64, i64* %12
  %111 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %110)
  store i8 addrspace(1)* %111, i8 addrspace(1)** %13
  br label %112
112:
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %114 = addrspacecast i8 addrspace(1)* %113 to i8*
  %115 = ptrtoint i8* %114 to i64
  %116 = and i64 %115, 2233785415175766016
  %117 = icmp eq i64 %116, 0
  store i1 %117, i1* %14
  %118 = load i1, i1* %14
  br i1 %118, label %128, label %119
119:
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  %121 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %120)
  store i64 %121, i64* %15
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %123 = addrspacecast i8 addrspace(1)* %122 to i8*
  %124 = ptrtoint i8* %123 to i64
  %125 = and i64 %124, 2233785415175766016
  %126 = icmp eq i64 %125, 0
  store i1 %126, i1* %16
  %127 = load i1, i1* %16
  br i1 %127, label %128, label %129
128:
  store i8 addrspace(1)* null, i8 addrspace(1)** %19
  br label %137
129:
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %131 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %130)
  store i64 %131, i64* %17
  %132 = load i64, i64* %15
  %133 = load i64, i64* %17
  %134 = or i64 %132, %133
  store i64 %134, i64* %18
  %135 = load i64, i64* %18
  %136 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %135)
  store i8 addrspace(1)* %136, i8 addrspace(1)** %19
  br label %137
137:
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %138), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %d
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %140 = addrspacecast i8 addrspace(1)* %139 to i8*
  %141 = ptrtoint i8* %140 to i64
  %142 = and i64 %141, 2233785415175766016
  %143 = icmp eq i64 %142, 0
  store i1 %143, i1* %21
  %144 = load i1, i1* %21
  br i1 %144, label %154, label %145
145:
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %147 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %146)
  store i64 %147, i64* %22
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %149 = addrspacecast i8 addrspace(1)* %148 to i8*
  %150 = ptrtoint i8* %149 to i64
  %151 = and i64 %150, 2233785415175766016
  %152 = icmp eq i64 %151, 0
  store i1 %152, i1* %23
  %153 = load i1, i1* %23
  br i1 %153, label %154, label %155
154:
  store i8 addrspace(1)* null, i8 addrspace(1)** %26
  br label %163
155:
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %157 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %156)
  store i64 %157, i64* %24
  %158 = load i64, i64* %22
  %159 = load i64, i64* %24
  %160 = or i64 %158, %159
  store i64 %160, i64* %25
  %161 = load i64, i64* %25
  %162 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %161)
  store i8 addrspace(1)* %162, i8 addrspace(1)** %26
  br label %163
163:
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %26
  store i8 addrspace(1)* %164, i8 addrspace(1)** %v2
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %v2, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %165), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !10
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %167 = addrspacecast i8 addrspace(1)* %166 to i8*
  %168 = ptrtoint i8* %167 to i64
  %169 = and i64 %168, 2233785415175766016
  %170 = icmp eq i64 %169, 0
  store i1 %170, i1* %28
  %171 = load i1, i1* %28
  br i1 %171, label %181, label %172
172:
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %a
  %174 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %173)
  store i64 %174, i64* %29
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %176 = addrspacecast i8 addrspace(1)* %175 to i8*
  %177 = ptrtoint i8* %176 to i64
  %178 = and i64 %177, 2233785415175766016
  %179 = icmp eq i64 %178, 0
  store i1 %179, i1* %30
  %180 = load i1, i1* %30
  br i1 %180, label %181, label %182
181:
  store i8 addrspace(1)* null, i8 addrspace(1)** %33
  br label %190
182:
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %184 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %183)
  store i64 %184, i64* %31
  %185 = load i64, i64* %29
  %186 = load i64, i64* %31
  %187 = or i64 %185, %186
  store i64 %187, i64* %32
  %188 = load i64, i64* %32
  %189 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %188)
  store i8 addrspace(1)* %189, i8 addrspace(1)** %33
  br label %190
190:
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  %192 = addrspacecast i8 addrspace(1)* %191 to i8*
  %193 = ptrtoint i8* %192 to i64
  %194 = and i64 %193, 2233785415175766016
  %195 = icmp eq i64 %194, 0
  store i1 %195, i1* %34
  %196 = load i1, i1* %34
  br i1 %196, label %206, label %197
197:
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  %199 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %198)
  store i64 %199, i64* %35
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %201 = addrspacecast i8 addrspace(1)* %200 to i8*
  %202 = ptrtoint i8* %201 to i64
  %203 = and i64 %202, 2233785415175766016
  %204 = icmp eq i64 %203, 0
  store i1 %204, i1* %36
  %205 = load i1, i1* %36
  br i1 %205, label %206, label %207
206:
  store i8 addrspace(1)* null, i8 addrspace(1)** %39
  br label %215
207:
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %209 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %208)
  store i64 %209, i64* %37
  %210 = load i64, i64* %35
  %211 = load i64, i64* %37
  %212 = or i64 %210, %211
  store i64 %212, i64* %38
  %213 = load i64, i64* %38
  %214 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %213)
  store i8 addrspace(1)* %214, i8 addrspace(1)** %39
  br label %215
215:
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %39
  %217 = addrspacecast i8 addrspace(1)* %216 to i8*
  %218 = ptrtoint i8* %217 to i64
  %219 = and i64 %218, 2233785415175766016
  %220 = icmp eq i64 %219, 0
  store i1 %220, i1* %40
  %221 = load i1, i1* %40
  br i1 %221, label %231, label %222
222:
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %39
  %224 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %223)
  store i64 %224, i64* %41
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %226 = addrspacecast i8 addrspace(1)* %225 to i8*
  %227 = ptrtoint i8* %226 to i64
  %228 = and i64 %227, 2233785415175766016
  %229 = icmp eq i64 %228, 0
  store i1 %229, i1* %42
  %230 = load i1, i1* %42
  br i1 %230, label %231, label %232
231:
  store i8 addrspace(1)* null, i8 addrspace(1)** %45
  br label %240
232:
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %d
  %234 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %233)
  store i64 %234, i64* %43
  %235 = load i64, i64* %41
  %236 = load i64, i64* %43
  %237 = or i64 %235, %236
  store i64 %237, i64* %44
  %238 = load i64, i64* %44
  %239 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %238)
  store i8 addrspace(1)* %239, i8 addrspace(1)** %45
  br label %240
240:
  %241 = load i8 addrspace(1)*, i8 addrspace(1)** %45, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %241), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !11
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %243 = addrspacecast i8 addrspace(1)* %242 to i8*
  %244 = ptrtoint i8* %243 to i64
  %245 = and i64 %244, 2233785415175766016
  %246 = icmp eq i64 %245, 0
  store i1 %246, i1* %47
  %247 = load i1, i1* %47
  br i1 %247, label %257, label %248
248:
  %249 = load i8 addrspace(1)*, i8 addrspace(1)** %c
  %250 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %249)
  store i64 %250, i64* %48
  %251 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %252 = addrspacecast i8 addrspace(1)* %251 to i8*
  %253 = ptrtoint i8* %252 to i64
  %254 = and i64 %253, 2233785415175766016
  %255 = icmp eq i64 %254, 0
  store i1 %255, i1* %49
  %256 = load i1, i1* %49
  br i1 %256, label %257, label %258
257:
  store i8 addrspace(1)* null, i8 addrspace(1)** %52
  br label %267
258:
  %259 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %260 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %259)
  store i64 %260, i64* %50
  %261 = load i64, i64* %48
  %262 = load i64, i64* %50
  %263 = and i64 63, %262
  %264 = shl i64 %261, %263
  store i64 %264, i64* %51
  %265 = load i64, i64* %51
  %266 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %265)
  store i8 addrspace(1)* %266, i8 addrspace(1)** %52
  br label %267
267:
  %268 = load i8 addrspace(1)*, i8 addrspace(1)** %52
  store i8 addrspace(1)* %268, i8 addrspace(1)** %v3
  %269 = load i8 addrspace(1)*, i8 addrspace(1)** %v3, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %269), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %53, !dbg !12
  ret void
270:
  %271 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %271)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/12-nillift/3-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 8, column: 4, scope: !5)
!9 = !DILocation(line: 9, column: 4, scope: !5)
!10 = !DILocation(line: 13, column: 4, scope: !5)
!11 = !DILocation(line: 14, column: 4, scope: !5)
!12 = !DILocation(line: 17, column: 4, scope: !5)
