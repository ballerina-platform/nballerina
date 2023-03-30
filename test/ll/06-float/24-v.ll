@_bal_stack_guard = external global ptr
@_Bi04root0 = external constant {i32}
@.str1 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"eq error 2\00\00"}, align 8
@.str2 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"eq error 1\00\00"}, align 8
@.str4 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"both nan\00\00\00\00"}, align 8
@.str5 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"gt error 1\00\00"}, align 8
@.str7 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"gt error 2\00\00"}, align 8
@.str8 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"lt error 1\00\00"}, align 8
@.str10 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 10, i16 10, [12 x i8] c"lt error 2\00\00"}, align 8
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_float_eq(double, double) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca ptr addrspace(1)
  %2 = alloca ptr addrspace(1)
  %3 = alloca ptr addrspace(1)
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca ptr addrspace(1)
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca ptr addrspace(1)
  %14 = alloca ptr addrspace(1)
  %15 = alloca ptr addrspace(1)
  %16 = alloca ptr addrspace(1)
  %17 = alloca ptr addrspace(1)
  %18 = alloca ptr addrspace(1)
  %19 = alloca ptr addrspace(1)
  %20 = alloca ptr addrspace(1)
  %21 = alloca ptr addrspace(1)
  %22 = alloca ptr addrspace(1)
  %23 = alloca ptr addrspace(1)
  %24 = alloca ptr addrspace(1)
  %25 = alloca ptr addrspace(1)
  %26 = alloca ptr addrspace(1)
  %27 = alloca ptr addrspace(1)
  %28 = alloca ptr addrspace(1)
  %29 = alloca ptr addrspace(1)
  %30 = alloca ptr addrspace(1)
  %31 = alloca ptr addrspace(1)
  %32 = alloca ptr addrspace(1)
  %33 = alloca ptr addrspace(1)
  %34 = alloca i8
  %35 = load ptr, ptr @_bal_stack_guard
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %159, label %37
37:
  %38 = call ptr addrspace(1) @_B_floatCmp(double 1.0, double 1.0), !dbg !11
  store ptr addrspace(1) %38, ptr %1
  %39 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !12
  %40 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 3
  %41 = load ptr addrspace(1), ptr addrspace(1) %40, align 8
  %42 = bitcast ptr addrspace(1) %41 to ptr addrspace(1)
  %43 = load ptr addrspace(1), ptr %1
  %44 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %42, i64 0, i64 0
  store ptr addrspace(1) %43, ptr addrspace(1) %44
  %45 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %39, i64 0, i32 1
  store i64 1, ptr addrspace(1) %45
  %46 = bitcast ptr addrspace(1) %39 to ptr addrspace(1)
  %47 = getelementptr i8, ptr addrspace(1) %46, i64 864691128455135236
  store ptr addrspace(1) %47, ptr %2
  %48 = load ptr addrspace(1), ptr %2
  call void @_Bb02ioprintln(ptr addrspace(1) %48), !dbg !13
  store ptr addrspace(1) null, ptr %3
  %49 = call ptr addrspace(1) @_B_floatCmp(double 1.0, double 2.0), !dbg !14
  store ptr addrspace(1) %49, ptr %4
  %50 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !15
  %51 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 3
  %52 = load ptr addrspace(1), ptr addrspace(1) %51, align 8
  %53 = bitcast ptr addrspace(1) %52 to ptr addrspace(1)
  %54 = load ptr addrspace(1), ptr %4
  %55 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %53, i64 0, i64 0
  store ptr addrspace(1) %54, ptr addrspace(1) %55
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %50, i64 0, i32 1
  store i64 1, ptr addrspace(1) %56
  %57 = bitcast ptr addrspace(1) %50 to ptr addrspace(1)
  %58 = getelementptr i8, ptr addrspace(1) %57, i64 864691128455135236
  store ptr addrspace(1) %58, ptr %5
  %59 = load ptr addrspace(1), ptr %5
  call void @_Bb02ioprintln(ptr addrspace(1) %59), !dbg !16
  store ptr addrspace(1) null, ptr %6
  %60 = call ptr addrspace(1) @_B_floatCmp(double 2.0, double 1.0), !dbg !17
  store ptr addrspace(1) %60, ptr %7
  %61 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !18
  %62 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 3
  %63 = load ptr addrspace(1), ptr addrspace(1) %62, align 8
  %64 = bitcast ptr addrspace(1) %63 to ptr addrspace(1)
  %65 = load ptr addrspace(1), ptr %7
  %66 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %64, i64 0, i64 0
  store ptr addrspace(1) %65, ptr addrspace(1) %66
  %67 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %61, i64 0, i32 1
  store i64 1, ptr addrspace(1) %67
  %68 = bitcast ptr addrspace(1) %61 to ptr addrspace(1)
  %69 = getelementptr i8, ptr addrspace(1) %68, i64 864691128455135236
  store ptr addrspace(1) %69, ptr %8
  %70 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %70), !dbg !19
  store ptr addrspace(1) null, ptr %9
  %71 = call ptr addrspace(1) @_B_floatCmp(double -1.0, double 1.0), !dbg !20
  store ptr addrspace(1) %71, ptr %10
  %72 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !21
  %73 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 3
  %74 = load ptr addrspace(1), ptr addrspace(1) %73, align 8
  %75 = bitcast ptr addrspace(1) %74 to ptr addrspace(1)
  %76 = load ptr addrspace(1), ptr %10
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %75, i64 0, i64 0
  store ptr addrspace(1) %76, ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %72, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %72 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %11
  %81 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !22
  store ptr addrspace(1) null, ptr %12
  %82 = call ptr addrspace(1) @_B_floatCmp(double -0.5, double -1.0), !dbg !23
  store ptr addrspace(1) %82, ptr %13
  %83 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !24
  %84 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 3
  %85 = load ptr addrspace(1), ptr addrspace(1) %84, align 8
  %86 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %87 = load ptr addrspace(1), ptr %13
  %88 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %86, i64 0, i64 0
  store ptr addrspace(1) %87, ptr addrspace(1) %88
  %89 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %83, i64 0, i32 1
  store i64 1, ptr addrspace(1) %89
  %90 = bitcast ptr addrspace(1) %83 to ptr addrspace(1)
  %91 = getelementptr i8, ptr addrspace(1) %90, i64 864691128455135236
  store ptr addrspace(1) %91, ptr %14
  %92 = load ptr addrspace(1), ptr %14
  call void @_Bb02ioprintln(ptr addrspace(1) %92), !dbg !25
  store ptr addrspace(1) null, ptr %15
  %93 = call ptr addrspace(1) @_B_floatCmp(double -0.5, double 0x7FF0000000000000), !dbg !26
  store ptr addrspace(1) %93, ptr %16
  %94 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !27
  %95 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 3
  %96 = load ptr addrspace(1), ptr addrspace(1) %95, align 8
  %97 = bitcast ptr addrspace(1) %96 to ptr addrspace(1)
  %98 = load ptr addrspace(1), ptr %16
  %99 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %97, i64 0, i64 0
  store ptr addrspace(1) %98, ptr addrspace(1) %99
  %100 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %94, i64 0, i32 1
  store i64 1, ptr addrspace(1) %100
  %101 = bitcast ptr addrspace(1) %94 to ptr addrspace(1)
  %102 = getelementptr i8, ptr addrspace(1) %101, i64 864691128455135236
  store ptr addrspace(1) %102, ptr %17
  %103 = load ptr addrspace(1), ptr %17
  call void @_Bb02ioprintln(ptr addrspace(1) %103), !dbg !28
  store ptr addrspace(1) null, ptr %18
  %104 = call ptr addrspace(1) @_B_floatCmp(double -0.5, double 0xFFF0000000000000), !dbg !29
  store ptr addrspace(1) %104, ptr %19
  %105 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !30
  %106 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 3
  %107 = load ptr addrspace(1), ptr addrspace(1) %106, align 8
  %108 = bitcast ptr addrspace(1) %107 to ptr addrspace(1)
  %109 = load ptr addrspace(1), ptr %19
  %110 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %108, i64 0, i64 0
  store ptr addrspace(1) %109, ptr addrspace(1) %110
  %111 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %105, i64 0, i32 1
  store i64 1, ptr addrspace(1) %111
  %112 = bitcast ptr addrspace(1) %105 to ptr addrspace(1)
  %113 = getelementptr i8, ptr addrspace(1) %112, i64 864691128455135236
  store ptr addrspace(1) %113, ptr %20
  %114 = load ptr addrspace(1), ptr %20
  call void @_Bb02ioprintln(ptr addrspace(1) %114), !dbg !31
  store ptr addrspace(1) null, ptr %21
  %115 = call ptr addrspace(1) @_B_floatCmp(double -0.0, double 0.0), !dbg !32
  store ptr addrspace(1) %115, ptr %22
  %116 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !33
  %117 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 3
  %118 = load ptr addrspace(1), ptr addrspace(1) %117, align 8
  %119 = bitcast ptr addrspace(1) %118 to ptr addrspace(1)
  %120 = load ptr addrspace(1), ptr %22
  %121 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %119, i64 0, i64 0
  store ptr addrspace(1) %120, ptr addrspace(1) %121
  %122 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %116, i64 0, i32 1
  store i64 1, ptr addrspace(1) %122
  %123 = bitcast ptr addrspace(1) %116 to ptr addrspace(1)
  %124 = getelementptr i8, ptr addrspace(1) %123, i64 864691128455135236
  store ptr addrspace(1) %124, ptr %23
  %125 = load ptr addrspace(1), ptr %23
  call void @_Bb02ioprintln(ptr addrspace(1) %125), !dbg !34
  store ptr addrspace(1) null, ptr %24
  %126 = call ptr addrspace(1) @_B_floatCmp(double 0.0, double 0x7FF8000000000000), !dbg !35
  store ptr addrspace(1) %126, ptr %25
  %127 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !36
  %128 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 3
  %129 = load ptr addrspace(1), ptr addrspace(1) %128, align 8
  %130 = bitcast ptr addrspace(1) %129 to ptr addrspace(1)
  %131 = load ptr addrspace(1), ptr %25
  %132 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %130, i64 0, i64 0
  store ptr addrspace(1) %131, ptr addrspace(1) %132
  %133 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %127, i64 0, i32 1
  store i64 1, ptr addrspace(1) %133
  %134 = bitcast ptr addrspace(1) %127 to ptr addrspace(1)
  %135 = getelementptr i8, ptr addrspace(1) %134, i64 864691128455135236
  store ptr addrspace(1) %135, ptr %26
  %136 = load ptr addrspace(1), ptr %26
  call void @_Bb02ioprintln(ptr addrspace(1) %136), !dbg !37
  store ptr addrspace(1) null, ptr %27
  %137 = call ptr addrspace(1) @_B_floatCmp(double 0x7FF8000000000000, double 0.0), !dbg !38
  store ptr addrspace(1) %137, ptr %28
  %138 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !39
  %139 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 3
  %140 = load ptr addrspace(1), ptr addrspace(1) %139, align 8
  %141 = bitcast ptr addrspace(1) %140 to ptr addrspace(1)
  %142 = load ptr addrspace(1), ptr %28
  %143 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %141, i64 0, i64 0
  store ptr addrspace(1) %142, ptr addrspace(1) %143
  %144 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %138, i64 0, i32 1
  store i64 1, ptr addrspace(1) %144
  %145 = bitcast ptr addrspace(1) %138 to ptr addrspace(1)
  %146 = getelementptr i8, ptr addrspace(1) %145, i64 864691128455135236
  store ptr addrspace(1) %146, ptr %29
  %147 = load ptr addrspace(1), ptr %29
  call void @_Bb02ioprintln(ptr addrspace(1) %147), !dbg !40
  store ptr addrspace(1) null, ptr %30
  %148 = call ptr addrspace(1) @_B_floatCmp(double 0x7FF8000000000000, double 0x7FF8000000000000), !dbg !41
  store ptr addrspace(1) %148, ptr %31
  %149 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !42
  %150 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 3
  %151 = load ptr addrspace(1), ptr addrspace(1) %150, align 8
  %152 = bitcast ptr addrspace(1) %151 to ptr addrspace(1)
  %153 = load ptr addrspace(1), ptr %31
  %154 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %152, i64 0, i64 0
  store ptr addrspace(1) %153, ptr addrspace(1) %154
  %155 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %149, i64 0, i32 1
  store i64 1, ptr addrspace(1) %155
  %156 = bitcast ptr addrspace(1) %149 to ptr addrspace(1)
  %157 = getelementptr i8, ptr addrspace(1) %156, i64 864691128455135236
  store ptr addrspace(1) %157, ptr %32
  %158 = load ptr addrspace(1), ptr %32
  call void @_Bb02ioprintln(ptr addrspace(1) %158), !dbg !43
  store ptr addrspace(1) null, ptr %33
  ret void
159:
  %160 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(ptr addrspace(1) %160), !dbg !10
  unreachable
}
define internal ptr addrspace(1) @_B_floatCmp(double %0, double %1) !dbg !7 {
  %f1 = alloca double
  %f2 = alloca double
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i1
  %6 = alloca i1
  %7 = alloca i1
  %8 = alloca i1
  %9 = alloca i1
  %10 = alloca i1
  %11 = alloca i1
  %12 = alloca i1
  %13 = alloca i8
  %14 = load ptr, ptr @_bal_stack_guard
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %76, label %16
16:
  store double %0, ptr %f1
  store double %1, ptr %f2
  %17 = load double, ptr %f1
  %18 = load double, ptr %f2
  %19 = fcmp olt double %17, %18
  store i1 %19, ptr %3
  %20 = load i1, ptr %3
  br i1 %20, label %21, label %26
21:
  %22 = load double, ptr %f1
  %23 = load double, ptr %f2
  %24 = fcmp ogt double %22, %23
  store i1 %24, ptr %4
  %25 = load i1, ptr %4
  br i1 %25, label %31, label %32
26:
  %27 = load double, ptr %f1
  %28 = load double, ptr %f2
  %29 = fcmp ogt double %27, %28
  store i1 %29, ptr %6
  %30 = load i1, ptr %6
  br i1 %30, label %39, label %44
31:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str10 to ptr) to ptr addrspace(1)), i64 360287970189639680)
32:
  %33 = load double, ptr %f1
  %34 = load double, ptr %f1
  %35 = fcmp ole double %33, %34
  store i1 %35, ptr %5
  %36 = load i1, ptr %5
  br i1 %36, label %37, label %38
37:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441225836)
38:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str8 to ptr) to ptr addrspace(1)), i64 360287970189639680)
39:
  %40 = load double, ptr %f1
  %41 = load double, ptr %f2
  %42 = fcmp olt double %40, %41
  store i1 %42, ptr %7
  %43 = load i1, ptr %7
  br i1 %43, label %49, label %50
44:
  %45 = load double, ptr %f1
  %46 = load double, ptr %f2
  %47 = call i1 @_bal_float_eq(double %45, double %46), !dbg !46
  store i1 %47, ptr %9
  %48 = load i1, ptr %9
  br i1 %48, label %57, label %61
49:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str7 to ptr) to ptr addrspace(1)), i64 360287970189639680)
50:
  %51 = load double, ptr %f1
  %52 = load double, ptr %f1
  %53 = fcmp oge double %51, %52
  store i1 %53, ptr %8
  %54 = load i1, ptr %8
  br i1 %54, label %55, label %56
55:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441225831)
56:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str5 to ptr) to ptr addrspace(1)), i64 360287970189639680)
57:
  %58 = load double, ptr %f1
  %59 = call i1 @_bal_float_eq(double %58, double 0x7FF8000000000000), !dbg !47
  store i1 %59, ptr %10
  %60 = load i1, ptr %10
  br i1 %60, label %62, label %63
61:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2697200352459320943)
62:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str4 to ptr) to ptr addrspace(1)), i64 360287970189639680)
63:
  %64 = load double, ptr %f1
  %65 = load double, ptr %f1
  %66 = fcmp ole double %64, %65
  store i1 %66, ptr %11
  %67 = load i1, ptr %11
  br i1 %67, label %68, label %73
68:
  %69 = load double, ptr %f1
  %70 = load double, ptr %f1
  %71 = fcmp oge double %69, %70
  store i1 %71, ptr %12
  %72 = load i1, ptr %12
  br i1 %72, label %74, label %75
73:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str1 to ptr) to ptr addrspace(1)), i64 360287970189639680)
74:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441225061)
75:
  ret ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str2 to ptr) to ptr addrspace(1)), i64 360287970189639680)
76:
  %77 = call ptr addrspace(1) @_bal_panic_construct(i64 5636), !dbg !44
  call void @_bal_panic(ptr addrspace(1) %77), !dbg !45
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/06-float/24-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"floatCmp", linkageName:"_B_floatCmp", scope: !1, file: !1, line: 22, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 4, column: 16, scope: !5)
!11 = !DILocation(line: 5, column: 15, scope: !5)
!12 = !DILocation(line: 5, column: 15, scope: !5)
!13 = !DILocation(line: 5, column: 4, scope: !5)
!14 = !DILocation(line: 7, column: 15, scope: !5)
!15 = !DILocation(line: 7, column: 15, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 15, scope: !5)
!18 = !DILocation(line: 8, column: 15, scope: !5)
!19 = !DILocation(line: 8, column: 4, scope: !5)
!20 = !DILocation(line: 9, column: 15, scope: !5)
!21 = !DILocation(line: 9, column: 15, scope: !5)
!22 = !DILocation(line: 9, column: 4, scope: !5)
!23 = !DILocation(line: 10, column: 15, scope: !5)
!24 = !DILocation(line: 10, column: 15, scope: !5)
!25 = !DILocation(line: 10, column: 4, scope: !5)
!26 = !DILocation(line: 12, column: 15, scope: !5)
!27 = !DILocation(line: 12, column: 15, scope: !5)
!28 = !DILocation(line: 12, column: 4, scope: !5)
!29 = !DILocation(line: 13, column: 15, scope: !5)
!30 = !DILocation(line: 13, column: 15, scope: !5)
!31 = !DILocation(line: 13, column: 4, scope: !5)
!32 = !DILocation(line: 15, column: 15, scope: !5)
!33 = !DILocation(line: 15, column: 15, scope: !5)
!34 = !DILocation(line: 15, column: 4, scope: !5)
!35 = !DILocation(line: 17, column: 15, scope: !5)
!36 = !DILocation(line: 17, column: 15, scope: !5)
!37 = !DILocation(line: 17, column: 4, scope: !5)
!38 = !DILocation(line: 18, column: 15, scope: !5)
!39 = !DILocation(line: 18, column: 15, scope: !5)
!40 = !DILocation(line: 18, column: 4, scope: !5)
!41 = !DILocation(line: 19, column: 15, scope: !5)
!42 = !DILocation(line: 19, column: 15, scope: !5)
!43 = !DILocation(line: 19, column: 4, scope: !5)
!44 = !DILocation(line: 0, column: 0, scope: !7)
!45 = !DILocation(line: 22, column: 9, scope: !7)
!46 = !DILocation(line: 49, column: 10, scope: !7)
!47 = !DILocation(line: 50, column: 14, scope: !7)
