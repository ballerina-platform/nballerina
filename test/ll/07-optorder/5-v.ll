@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_boolean_compare(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %n1 = alloca i8 addrspace(1)*
  %n2 = alloca i8 addrspace(1)*
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
  %11 = alloca i1
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i1
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i8 addrspace(1)*
  %n3 = alloca i8 addrspace(1)*
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i1
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i8 addrspace(1)*
  %n4 = alloca i1
  %25 = alloca i1
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i1
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i1
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i1
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i1
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i1
  %40 = alloca i8 addrspace(1)*
  %n5 = alloca i8 addrspace(1)*
  %41 = alloca i1
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i1
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i1
  %46 = alloca i8 addrspace(1)*
  %47 = alloca i1
  %48 = alloca i8 addrspace(1)*
  %49 = alloca i8
  %50 = load i8*, i8** @_bal_stack_guard
  %51 = icmp ult i8* %49, %50
  br i1 %51, label %158, label %52
52:
  %53 = zext i1 0 to i64
  %54 = or i64 %53, 72057594037927936
  %55 = getelementptr i8, i8 addrspace(1)* null, i64 %54
  store i8 addrspace(1)* %55, i8 addrspace(1)** %n1
  store i8 addrspace(1)* null, i8 addrspace(1)** %n2
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %58 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %56, i8 addrspace(1)* %57)
  %59 = icmp eq i64 %58, 0
  store i1 %59, i1* %1
  %60 = load i1, i1* %1, !dbg !8
  %61 = zext i1 %60 to i64, !dbg !8
  %62 = or i64 %61, 72057594037927936, !dbg !8
  %63 = getelementptr i8, i8 addrspace(1)* null, i64 %62, !dbg !8
  call void @_Bb02ioprintln(i8 addrspace(1)* %63), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %66 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %64, i8 addrspace(1)* %65)
  %67 = icmp ule i64 %66, 1
  store i1 %67, i1* %3
  %68 = load i1, i1* %3, !dbg !9
  %69 = zext i1 %68 to i64, !dbg !9
  %70 = or i64 %69, 72057594037927936, !dbg !9
  %71 = getelementptr i8, i8 addrspace(1)* null, i64 %70, !dbg !9
  call void @_Bb02ioprintln(i8 addrspace(1)* %71), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !9
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %74 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %72, i8 addrspace(1)* %73)
  %75 = icmp eq i64 %74, 2
  store i1 %75, i1* %5
  %76 = load i1, i1* %5, !dbg !10
  %77 = zext i1 %76 to i64, !dbg !10
  %78 = or i64 %77, 72057594037927936, !dbg !10
  %79 = getelementptr i8, i8 addrspace(1)* null, i64 %78, !dbg !10
  call void @_Bb02ioprintln(i8 addrspace(1)* %79), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !10
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %82 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %80, i8 addrspace(1)* %81)
  %83 = icmp sge i64 %82, 1
  store i1 %83, i1* %7
  %84 = load i1, i1* %7, !dbg !11
  %85 = zext i1 %84 to i64, !dbg !11
  %86 = or i64 %85, 72057594037927936, !dbg !11
  %87 = getelementptr i8, i8 addrspace(1)* null, i64 %86, !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %87), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !11
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %90 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %88, i8 addrspace(1)* %89)
  %91 = icmp eq i64 %90, 0
  store i1 %91, i1* %9
  %92 = load i1, i1* %9, !dbg !12
  %93 = zext i1 %92 to i64, !dbg !12
  %94 = or i64 %93, 72057594037927936, !dbg !12
  %95 = getelementptr i8, i8 addrspace(1)* null, i64 %94, !dbg !12
  call void @_Bb02ioprintln(i8 addrspace(1)* %95), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !12
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %98 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %96, i8 addrspace(1)* %97)
  %99 = icmp ule i64 %98, 1
  store i1 %99, i1* %11
  %100 = load i1, i1* %11, !dbg !13
  %101 = zext i1 %100 to i64, !dbg !13
  %102 = or i64 %101, 72057594037927936, !dbg !13
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102, !dbg !13
  call void @_Bb02ioprintln(i8 addrspace(1)* %103), !dbg !13
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !13
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %106 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %104, i8 addrspace(1)* %105)
  %107 = icmp eq i64 %106, 2
  store i1 %107, i1* %13
  %108 = load i1, i1* %13, !dbg !14
  %109 = zext i1 %108 to i64, !dbg !14
  %110 = or i64 %109, 72057594037927936, !dbg !14
  %111 = getelementptr i8, i8 addrspace(1)* null, i64 %110, !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %111), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !14
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %114 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %112, i8 addrspace(1)* %113)
  %115 = icmp sge i64 %114, 1
  store i1 %115, i1* %15
  %116 = load i1, i1* %15, !dbg !15
  %117 = zext i1 %116 to i64, !dbg !15
  %118 = or i64 %117, 72057594037927936, !dbg !15
  %119 = getelementptr i8, i8 addrspace(1)* null, i64 %118, !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %119), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !15
  %120 = zext i1 1 to i64
  %121 = or i64 %120, 72057594037927936
  %122 = getelementptr i8, i8 addrspace(1)* null, i64 %121
  store i8 addrspace(1)* %122, i8 addrspace(1)** %n3
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %125 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %123, i8 addrspace(1)* %124)
  %126 = icmp ule i64 %125, 1
  store i1 %126, i1* %17
  %127 = load i1, i1* %17, !dbg !16
  %128 = zext i1 %127 to i64, !dbg !16
  %129 = or i64 %128, 72057594037927936, !dbg !16
  %130 = getelementptr i8, i8 addrspace(1)* null, i64 %129, !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %130), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !16
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %133 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %131, i8 addrspace(1)* %132)
  %134 = icmp eq i64 %133, 0
  store i1 %134, i1* %19
  %135 = load i1, i1* %19, !dbg !17
  %136 = zext i1 %135 to i64, !dbg !17
  %137 = or i64 %136, 72057594037927936, !dbg !17
  %138 = getelementptr i8, i8 addrspace(1)* null, i64 %137, !dbg !17
  call void @_Bb02ioprintln(i8 addrspace(1)* %138), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !17
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %141 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %139, i8 addrspace(1)* %140)
  %142 = icmp sge i64 %141, 1
  store i1 %142, i1* %21
  %143 = load i1, i1* %21, !dbg !18
  %144 = zext i1 %143 to i64, !dbg !18
  %145 = or i64 %144, 72057594037927936, !dbg !18
  %146 = getelementptr i8, i8 addrspace(1)* null, i64 %145, !dbg !18
  call void @_Bb02ioprintln(i8 addrspace(1)* %146), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !18
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %n3
  %149 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %147, i8 addrspace(1)* %148)
  %150 = icmp eq i64 %149, 2
  store i1 %150, i1* %23
  %151 = load i1, i1* %23, !dbg !19
  %152 = zext i1 %151 to i64, !dbg !19
  %153 = or i64 %152, 72057594037927936, !dbg !19
  %154 = getelementptr i8, i8 addrspace(1)* null, i64 %153, !dbg !19
  call void @_Bb02ioprintln(i8 addrspace(1)* %154), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !19
  store i1 1, i1* %n4
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %156 = load i1, i1* %n4
  %157 = icmp eq i8 addrspace(1)* %155, null
  br i1 %157, label %160, label %161
158:
  %159 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %159)
  unreachable
160:
  store i1 0, i1* %25
  br label %166
161:
  %162 = addrspacecast i8 addrspace(1)* %155 to i8*
  %163 = ptrtoint i8* %162 to i64
  %164 = trunc i64 %163 to i1
  %165 = icmp ule i1 %164, %156
  store i1 %165, i1* %25
  br label %166
166:
  %167 = load i1, i1* %25, !dbg !20
  %168 = zext i1 %167 to i64, !dbg !20
  %169 = or i64 %168, 72057594037927936, !dbg !20
  %170 = getelementptr i8, i8 addrspace(1)* null, i64 %169, !dbg !20
  call void @_Bb02ioprintln(i8 addrspace(1)* %170), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !20
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %172 = load i1, i1* %n4
  %173 = icmp eq i8 addrspace(1)* %171, null
  br i1 %173, label %174, label %175
174:
  store i1 0, i1* %27
  br label %180
175:
  %176 = addrspacecast i8 addrspace(1)* %171 to i8*
  %177 = ptrtoint i8* %176 to i64
  %178 = trunc i64 %177 to i1
  %179 = icmp ult i1 %178, %172
  store i1 %179, i1* %27
  br label %180
180:
  %181 = load i1, i1* %27, !dbg !21
  %182 = zext i1 %181 to i64, !dbg !21
  %183 = or i64 %182, 72057594037927936, !dbg !21
  %184 = getelementptr i8, i8 addrspace(1)* null, i64 %183, !dbg !21
  call void @_Bb02ioprintln(i8 addrspace(1)* %184), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !21
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %186 = load i1, i1* %n4
  %187 = icmp eq i8 addrspace(1)* %185, null
  br i1 %187, label %188, label %189
188:
  store i1 0, i1* %29
  br label %194
189:
  %190 = addrspacecast i8 addrspace(1)* %185 to i8*
  %191 = ptrtoint i8* %190 to i64
  %192 = trunc i64 %191 to i1
  %193 = icmp uge i1 %192, %186
  store i1 %193, i1* %29
  br label %194
194:
  %195 = load i1, i1* %29, !dbg !22
  %196 = zext i1 %195 to i64, !dbg !22
  %197 = or i64 %196, 72057594037927936, !dbg !22
  %198 = getelementptr i8, i8 addrspace(1)* null, i64 %197, !dbg !22
  call void @_Bb02ioprintln(i8 addrspace(1)* %198), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !22
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %200 = load i1, i1* %n4
  %201 = icmp eq i8 addrspace(1)* %199, null
  br i1 %201, label %202, label %203
202:
  store i1 0, i1* %31
  br label %208
203:
  %204 = addrspacecast i8 addrspace(1)* %199 to i8*
  %205 = ptrtoint i8* %204 to i64
  %206 = trunc i64 %205 to i1
  %207 = icmp ugt i1 %206, %200
  store i1 %207, i1* %31
  br label %208
208:
  %209 = load i1, i1* %31, !dbg !23
  %210 = zext i1 %209 to i64, !dbg !23
  %211 = or i64 %210, 72057594037927936, !dbg !23
  %212 = getelementptr i8, i8 addrspace(1)* null, i64 %211, !dbg !23
  call void @_Bb02ioprintln(i8 addrspace(1)* %212), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !23
  %213 = load i1, i1* %n4
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %215 = icmp eq i8 addrspace(1)* %214, null
  br i1 %215, label %216, label %217
216:
  store i1 0, i1* %33
  br label %222
217:
  %218 = addrspacecast i8 addrspace(1)* %214 to i8*
  %219 = ptrtoint i8* %218 to i64
  %220 = trunc i64 %219 to i1
  %221 = icmp uge i1 %220, %213
  store i1 %221, i1* %33
  br label %222
222:
  %223 = load i1, i1* %33, !dbg !24
  %224 = zext i1 %223 to i64, !dbg !24
  %225 = or i64 %224, 72057594037927936, !dbg !24
  %226 = getelementptr i8, i8 addrspace(1)* null, i64 %225, !dbg !24
  call void @_Bb02ioprintln(i8 addrspace(1)* %226), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !24
  %227 = load i1, i1* %n4
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %229 = icmp eq i8 addrspace(1)* %228, null
  br i1 %229, label %230, label %231
230:
  store i1 0, i1* %35
  br label %236
231:
  %232 = addrspacecast i8 addrspace(1)* %228 to i8*
  %233 = ptrtoint i8* %232 to i64
  %234 = trunc i64 %233 to i1
  %235 = icmp ugt i1 %234, %227
  store i1 %235, i1* %35
  br label %236
236:
  %237 = load i1, i1* %35, !dbg !25
  %238 = zext i1 %237 to i64, !dbg !25
  %239 = or i64 %238, 72057594037927936, !dbg !25
  %240 = getelementptr i8, i8 addrspace(1)* null, i64 %239, !dbg !25
  call void @_Bb02ioprintln(i8 addrspace(1)* %240), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %36, !dbg !25
  %241 = load i1, i1* %n4
  %242 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %243 = icmp eq i8 addrspace(1)* %242, null
  br i1 %243, label %244, label %245
244:
  store i1 0, i1* %37
  br label %250
245:
  %246 = addrspacecast i8 addrspace(1)* %242 to i8*
  %247 = ptrtoint i8* %246 to i64
  %248 = trunc i64 %247 to i1
  %249 = icmp ule i1 %248, %241
  store i1 %249, i1* %37
  br label %250
250:
  %251 = load i1, i1* %37, !dbg !26
  %252 = zext i1 %251 to i64, !dbg !26
  %253 = or i64 %252, 72057594037927936, !dbg !26
  %254 = getelementptr i8, i8 addrspace(1)* null, i64 %253, !dbg !26
  call void @_Bb02ioprintln(i8 addrspace(1)* %254), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %38, !dbg !26
  %255 = load i1, i1* %n4
  %256 = load i8 addrspace(1)*, i8 addrspace(1)** %n1
  %257 = icmp eq i8 addrspace(1)* %256, null
  br i1 %257, label %258, label %259
258:
  store i1 0, i1* %39
  br label %264
259:
  %260 = addrspacecast i8 addrspace(1)* %256 to i8*
  %261 = ptrtoint i8* %260 to i64
  %262 = trunc i64 %261 to i1
  %263 = icmp ult i1 %262, %255
  store i1 %263, i1* %39
  br label %264
264:
  %265 = load i1, i1* %39, !dbg !27
  %266 = zext i1 %265 to i64, !dbg !27
  %267 = or i64 %266, 72057594037927936, !dbg !27
  %268 = getelementptr i8, i8 addrspace(1)* null, i64 %267, !dbg !27
  call void @_Bb02ioprintln(i8 addrspace(1)* %268), !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %40, !dbg !27
  store i8 addrspace(1)* null, i8 addrspace(1)** %n5
  %269 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %270 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %271 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %269, i8 addrspace(1)* %270)
  %272 = icmp eq i64 %271, 0
  store i1 %272, i1* %41
  %273 = load i1, i1* %41, !dbg !28
  %274 = zext i1 %273 to i64, !dbg !28
  %275 = or i64 %274, 72057594037927936, !dbg !28
  %276 = getelementptr i8, i8 addrspace(1)* null, i64 %275, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %276), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %42, !dbg !28
  %277 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %278 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %279 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %277, i8 addrspace(1)* %278)
  %280 = icmp ule i64 %279, 1
  store i1 %280, i1* %43
  %281 = load i1, i1* %43, !dbg !29
  %282 = zext i1 %281 to i64, !dbg !29
  %283 = or i64 %282, 72057594037927936, !dbg !29
  %284 = getelementptr i8, i8 addrspace(1)* null, i64 %283, !dbg !29
  call void @_Bb02ioprintln(i8 addrspace(1)* %284), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %44, !dbg !29
  %285 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %286 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %287 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %285, i8 addrspace(1)* %286)
  %288 = icmp eq i64 %287, 2
  store i1 %288, i1* %45
  %289 = load i1, i1* %45, !dbg !30
  %290 = zext i1 %289 to i64, !dbg !30
  %291 = or i64 %290, 72057594037927936, !dbg !30
  %292 = getelementptr i8, i8 addrspace(1)* null, i64 %291, !dbg !30
  call void @_Bb02ioprintln(i8 addrspace(1)* %292), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %46, !dbg !30
  %293 = load i8 addrspace(1)*, i8 addrspace(1)** %n5
  %294 = load i8 addrspace(1)*, i8 addrspace(1)** %n2
  %295 = call i64 @_bal_boolean_compare(i8 addrspace(1)* %293, i8 addrspace(1)* %294)
  %296 = icmp sge i64 %295, 1
  store i1 %296, i1* %47
  %297 = load i1, i1* %47, !dbg !31
  %298 = zext i1 %297 to i64, !dbg !31
  %299 = or i64 %298, 72057594037927936, !dbg !31
  %300 = getelementptr i8, i8 addrspace(1)* null, i64 %299, !dbg !31
  call void @_Bb02ioprintln(i8 addrspace(1)* %300), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %48, !dbg !31
  ret void
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-optorder/5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 7, column: 4, scope: !5)
!9 = !DILocation(line: 8, column: 4, scope: !5)
!10 = !DILocation(line: 9, column: 4, scope: !5)
!11 = !DILocation(line: 10, column: 4, scope: !5)
!12 = !DILocation(line: 12, column: 4, scope: !5)
!13 = !DILocation(line: 13, column: 4, scope: !5)
!14 = !DILocation(line: 14, column: 4, scope: !5)
!15 = !DILocation(line: 15, column: 4, scope: !5)
!16 = !DILocation(line: 18, column: 4, scope: !5)
!17 = !DILocation(line: 19, column: 4, scope: !5)
!18 = !DILocation(line: 20, column: 4, scope: !5)
!19 = !DILocation(line: 21, column: 4, scope: !5)
!20 = !DILocation(line: 24, column: 4, scope: !5)
!21 = !DILocation(line: 25, column: 4, scope: !5)
!22 = !DILocation(line: 26, column: 4, scope: !5)
!23 = !DILocation(line: 27, column: 4, scope: !5)
!24 = !DILocation(line: 29, column: 4, scope: !5)
!25 = !DILocation(line: 30, column: 4, scope: !5)
!26 = !DILocation(line: 31, column: 4, scope: !5)
!27 = !DILocation(line: 32, column: 4, scope: !5)
!28 = !DILocation(line: 35, column: 4, scope: !5)
!29 = !DILocation(line: 36, column: 4, scope: !5)
!30 = !DILocation(line: 37, column: 4, scope: !5)
!31 = !DILocation(line: 38, column: 4, scope: !5)
