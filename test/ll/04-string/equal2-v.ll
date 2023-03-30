@_bal_stack_guard = external global ptr
@.str4 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"1234567\00\00\00\00\00"}, align 8
@.str13 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 6, i16 5, [12 x i8] c"1234\C2\80\00\00\00\00\00\00"}, align 8
@.str14 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 6, i16 5, [12 x i8] c"1234\C2\81\00\00\00\00\00\00"}, align 8
@_Bi04root0 = external constant {i32}
declare ptr addrspace(1) @_bal_panic_construct(i64) cold
declare void @_bal_panic(ptr addrspace(1)) noreturn cold
declare i64 @_bal_string_cmp(ptr addrspace(1), ptr addrspace(1)) readonly
declare ptr addrspace(1) @_bal_list_construct_8(ptr, i64)
declare void @_Bb02ioprintln(ptr addrspace(1))
declare zeroext i1 @_bal_string_eq(ptr addrspace(1), ptr addrspace(1)) readonly
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
  %14 = alloca i8
  %15 = load ptr, ptr @_bal_stack_guard
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %18, label %17
17:
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433)), !dbg !15
  store ptr addrspace(1) null, ptr %1
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261433), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !16
  store ptr addrspace(1) null, ptr %2
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432)), !dbg !17
  store ptr addrspace(1) null, ptr %3
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441227128)), !dbg !18
  store ptr addrspace(1) null, ptr %4
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2681671705259356721), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str4 to ptr) to ptr addrspace(1)), i64 360287970189639680)), !dbg !19
  store ptr addrspace(1) null, ptr %5
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2737966700601487921), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2666190581540270641)), !dbg !20
  store ptr addrspace(1) null, ptr %6
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261567), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261312)), !dbg !21
  store ptr addrspace(1) null, ptr %7
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261312), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261312)), !dbg !22
  store ptr addrspace(1) null, ptr %8
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261312), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573424484352)), !dbg !23
  store ptr addrspace(1) null, ptr %9
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261439), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441228994)), !dbg !24
  store ptr addrspace(1) null, ptr %10
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441228994), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441229250)), !dbg !25
  store ptr addrspace(1) null, ptr %11
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str13 to ptr) to ptr addrspace(1)), i64 360287970189639680), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) addrspacecast(ptr bitcast(ptr @.str14 to ptr) to ptr addrspace(1)), i64 360287970189639680)), !dbg !26
  store ptr addrspace(1) null, ptr %12
  call void @_B_cmp(ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441261432), ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188571303780336)), !dbg !27
  store ptr addrspace(1) null, ptr %13
  ret void
18:
  %19 = call ptr addrspace(1) @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(ptr addrspace(1) %19), !dbg !14
  unreachable
}
define internal void @_B_cmp(ptr addrspace(1) %0, ptr addrspace(1) %1) !dbg !7 {
  %s1 = alloca ptr addrspace(1)
  %s2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca ptr addrspace(1)
  %10 = alloca ptr addrspace(1)
  %11 = alloca ptr addrspace(1)
  %12 = alloca ptr addrspace(1)
  %13 = alloca i1
  %14 = alloca ptr addrspace(1)
  %15 = alloca i1
  %16 = alloca ptr addrspace(1)
  %17 = alloca i1
  %18 = alloca ptr addrspace(1)
  %19 = alloca i1
  %20 = alloca ptr addrspace(1)
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
  %31 = alloca i1
  %32 = alloca ptr addrspace(1)
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca i1
  %36 = alloca ptr addrspace(1)
  %37 = alloca i1
  %38 = alloca ptr addrspace(1)
  %39 = alloca i1
  %40 = alloca ptr addrspace(1)
  %41 = alloca i1
  %42 = alloca ptr addrspace(1)
  %43 = alloca i1
  %44 = alloca ptr addrspace(1)
  %45 = alloca i8
  %46 = load ptr, ptr @_bal_stack_guard
  %47 = icmp ult ptr %45, %46
  br i1 %47, label %172, label %48
48:
  store ptr addrspace(1) %0, ptr %s1
  store ptr addrspace(1) %1, ptr %s2
  %49 = load ptr addrspace(1), ptr %s1
  %50 = load ptr addrspace(1), ptr %s2
  %51 = call i64 @_bal_string_cmp(ptr addrspace(1) %49, ptr addrspace(1) %50), !dbg !30
  %52 = icmp slt i64 %51, 0
  store i1 %52, ptr %3
  %53 = load i1, ptr %3
  br i1 %53, label %54, label %66
54:
  %55 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !69
  %56 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 3
  %57 = load ptr addrspace(1), ptr addrspace(1) %56, align 8
  %58 = bitcast ptr addrspace(1) %57 to ptr addrspace(1)
  %59 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %58, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441225836), ptr addrspace(1) %59
  %60 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %55, i64 0, i32 1
  store i64 1, ptr addrspace(1) %60
  %61 = bitcast ptr addrspace(1) %55 to ptr addrspace(1)
  %62 = getelementptr i8, ptr addrspace(1) %61, i64 864691128455135236
  store ptr addrspace(1) %62, ptr %4
  %63 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %63), !dbg !70
  store ptr addrspace(1) null, ptr %5
  %64 = load ptr addrspace(1), ptr %s1
  %65 = load ptr addrspace(1), ptr %s2
  call void @_B_checkLessThan(ptr addrspace(1) %64, ptr addrspace(1) %65), !dbg !71
  store ptr addrspace(1) null, ptr %6
  br label %171
66:
  %67 = load ptr addrspace(1), ptr %s1
  %68 = load ptr addrspace(1), ptr %s2
  %69 = call i64 @_bal_string_cmp(ptr addrspace(1) %67, ptr addrspace(1) %68), !dbg !31
  %70 = icmp sgt i64 %69, 0
  store i1 %70, ptr %7
  %71 = load i1, ptr %7
  br i1 %71, label %72, label %84
72:
  %73 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !66
  %74 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 3
  %75 = load ptr addrspace(1), ptr addrspace(1) %74, align 8
  %76 = bitcast ptr addrspace(1) %75 to ptr addrspace(1)
  %77 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %76, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441225831), ptr addrspace(1) %77
  %78 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %73, i64 0, i32 1
  store i64 1, ptr addrspace(1) %78
  %79 = bitcast ptr addrspace(1) %73 to ptr addrspace(1)
  %80 = getelementptr i8, ptr addrspace(1) %79, i64 864691128455135236
  store ptr addrspace(1) %80, ptr %8
  %81 = load ptr addrspace(1), ptr %8
  call void @_Bb02ioprintln(ptr addrspace(1) %81), !dbg !67
  store ptr addrspace(1) null, ptr %9
  %82 = load ptr addrspace(1), ptr %s2
  %83 = load ptr addrspace(1), ptr %s1
  call void @_B_checkLessThan(ptr addrspace(1) %82, ptr addrspace(1) %83), !dbg !68
  store ptr addrspace(1) null, ptr %10
  br label %170
84:
  %85 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !32
  %86 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 3
  %87 = load ptr addrspace(1), ptr addrspace(1) %86, align 8
  %88 = bitcast ptr addrspace(1) %87 to ptr addrspace(1)
  %89 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %88, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188573441225061), ptr addrspace(1) %89
  %90 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %85, i64 0, i32 1
  store i64 1, ptr addrspace(1) %90
  %91 = bitcast ptr addrspace(1) %85 to ptr addrspace(1)
  %92 = getelementptr i8, ptr addrspace(1) %91, i64 864691128455135236
  store ptr addrspace(1) %92, ptr %11
  %93 = load ptr addrspace(1), ptr %11
  call void @_Bb02ioprintln(ptr addrspace(1) %93), !dbg !33
  store ptr addrspace(1) null, ptr %12
  %94 = load ptr addrspace(1), ptr %s1
  %95 = load ptr addrspace(1), ptr %s2
  %96 = call i1 @_bal_string_eq(ptr addrspace(1) %94, ptr addrspace(1) %95), !dbg !34
  store i1 %96, ptr %13
  %97 = load i1, ptr %13
  call void @_B_assert(i1 %97, i1 1), !dbg !35
  store ptr addrspace(1) null, ptr %14
  %98 = load ptr addrspace(1), ptr %s1
  %99 = load ptr addrspace(1), ptr %s2
  %100 = call i1 @_bal_string_eq(ptr addrspace(1) %98, ptr addrspace(1) %99), !dbg !36
  %101 = xor i1 %100, 1
  store i1 %101, ptr %15
  %102 = load i1, ptr %15
  call void @_B_assert(i1 %102, i1 0), !dbg !37
  store ptr addrspace(1) null, ptr %16
  %103 = load ptr addrspace(1), ptr %s1
  %104 = load ptr addrspace(1), ptr %s2
  %105 = call i1 @_bal_string_eq(ptr addrspace(1) %103, ptr addrspace(1) %104), !dbg !38
  store i1 %105, ptr %17
  %106 = load i1, ptr %17
  call void @_B_assert(i1 %106, i1 1), !dbg !39
  store ptr addrspace(1) null, ptr %18
  %107 = load ptr addrspace(1), ptr %s1
  %108 = load ptr addrspace(1), ptr %s2
  %109 = call i1 @_bal_string_eq(ptr addrspace(1) %107, ptr addrspace(1) %108), !dbg !40
  %110 = xor i1 %109, 1
  store i1 %110, ptr %19
  %111 = load i1, ptr %19
  call void @_B_assert(i1 %111, i1 0), !dbg !41
  store ptr addrspace(1) null, ptr %20
  %112 = load ptr addrspace(1), ptr %s2
  %113 = load ptr addrspace(1), ptr %s1
  %114 = call i1 @_bal_string_eq(ptr addrspace(1) %112, ptr addrspace(1) %113), !dbg !42
  store i1 %114, ptr %21
  %115 = load i1, ptr %21
  call void @_B_assert(i1 %115, i1 1), !dbg !43
  store ptr addrspace(1) null, ptr %22
  %116 = load ptr addrspace(1), ptr %s2
  %117 = load ptr addrspace(1), ptr %s1
  %118 = call i1 @_bal_string_eq(ptr addrspace(1) %116, ptr addrspace(1) %117), !dbg !44
  %119 = xor i1 %118, 1
  store i1 %119, ptr %23
  %120 = load i1, ptr %23
  call void @_B_assert(i1 %120, i1 0), !dbg !45
  store ptr addrspace(1) null, ptr %24
  %121 = load ptr addrspace(1), ptr %s2
  %122 = load ptr addrspace(1), ptr %s1
  %123 = call i1 @_bal_string_eq(ptr addrspace(1) %121, ptr addrspace(1) %122), !dbg !46
  store i1 %123, ptr %25
  %124 = load i1, ptr %25
  call void @_B_assert(i1 %124, i1 1), !dbg !47
  store ptr addrspace(1) null, ptr %26
  %125 = load ptr addrspace(1), ptr %s2
  %126 = load ptr addrspace(1), ptr %s1
  %127 = call i1 @_bal_string_eq(ptr addrspace(1) %125, ptr addrspace(1) %126), !dbg !48
  %128 = xor i1 %127, 1
  store i1 %128, ptr %27
  %129 = load i1, ptr %27
  call void @_B_assert(i1 %129, i1 0), !dbg !49
  store ptr addrspace(1) null, ptr %28
  %130 = load ptr addrspace(1), ptr %s1
  %131 = load ptr addrspace(1), ptr %s2
  %132 = call i64 @_bal_string_cmp(ptr addrspace(1) %130, ptr addrspace(1) %131), !dbg !50
  %133 = icmp slt i64 %132, 0
  store i1 %133, ptr %29
  %134 = load i1, ptr %29
  call void @_B_assert(i1 %134, i1 0), !dbg !51
  store ptr addrspace(1) null, ptr %30
  %135 = load ptr addrspace(1), ptr %s2
  %136 = load ptr addrspace(1), ptr %s1
  %137 = call i64 @_bal_string_cmp(ptr addrspace(1) %135, ptr addrspace(1) %136), !dbg !52
  %138 = icmp slt i64 %137, 0
  store i1 %138, ptr %31
  %139 = load i1, ptr %31
  call void @_B_assert(i1 %139, i1 0), !dbg !53
  store ptr addrspace(1) null, ptr %32
  %140 = load ptr addrspace(1), ptr %s1
  %141 = load ptr addrspace(1), ptr %s2
  %142 = call i64 @_bal_string_cmp(ptr addrspace(1) %140, ptr addrspace(1) %141), !dbg !54
  %143 = icmp sgt i64 %142, 0
  store i1 %143, ptr %33
  %144 = load i1, ptr %33
  call void @_B_assert(i1 %144, i1 0), !dbg !55
  store ptr addrspace(1) null, ptr %34
  %145 = load ptr addrspace(1), ptr %s2
  %146 = load ptr addrspace(1), ptr %s1
  %147 = call i64 @_bal_string_cmp(ptr addrspace(1) %145, ptr addrspace(1) %146), !dbg !56
  %148 = icmp sgt i64 %147, 0
  store i1 %148, ptr %35
  %149 = load i1, ptr %35
  call void @_B_assert(i1 %149, i1 0), !dbg !57
  store ptr addrspace(1) null, ptr %36
  %150 = load ptr addrspace(1), ptr %s1
  %151 = load ptr addrspace(1), ptr %s2
  %152 = call i64 @_bal_string_cmp(ptr addrspace(1) %150, ptr addrspace(1) %151), !dbg !58
  %153 = icmp sle i64 %152, 0
  store i1 %153, ptr %37
  %154 = load i1, ptr %37
  call void @_B_assert(i1 %154, i1 1), !dbg !59
  store ptr addrspace(1) null, ptr %38
  %155 = load ptr addrspace(1), ptr %s2
  %156 = load ptr addrspace(1), ptr %s1
  %157 = call i64 @_bal_string_cmp(ptr addrspace(1) %155, ptr addrspace(1) %156), !dbg !60
  %158 = icmp sle i64 %157, 0
  store i1 %158, ptr %39
  %159 = load i1, ptr %39
  call void @_B_assert(i1 %159, i1 1), !dbg !61
  store ptr addrspace(1) null, ptr %40
  %160 = load ptr addrspace(1), ptr %s1
  %161 = load ptr addrspace(1), ptr %s2
  %162 = call i64 @_bal_string_cmp(ptr addrspace(1) %160, ptr addrspace(1) %161), !dbg !62
  %163 = icmp sge i64 %162, 0
  store i1 %163, ptr %41
  %164 = load i1, ptr %41
  call void @_B_assert(i1 %164, i1 1), !dbg !63
  store ptr addrspace(1) null, ptr %42
  %165 = load ptr addrspace(1), ptr %s2
  %166 = load ptr addrspace(1), ptr %s1
  %167 = call i64 @_bal_string_cmp(ptr addrspace(1) %165, ptr addrspace(1) %166), !dbg !64
  %168 = icmp sge i64 %167, 0
  store i1 %168, ptr %43
  %169 = load i1, ptr %43
  call void @_B_assert(i1 %169, i1 1), !dbg !65
  store ptr addrspace(1) null, ptr %44
  br label %170
170:
  br label %171
171:
  ret void
172:
  %173 = call ptr addrspace(1) @_bal_panic_construct(i64 5124), !dbg !28
  call void @_bal_panic(ptr addrspace(1) %173), !dbg !29
  unreachable
}
define internal void @_B_checkLessThan(ptr addrspace(1) %0, ptr addrspace(1) %1) !dbg !9 {
  %s1 = alloca ptr addrspace(1)
  %s2 = alloca ptr addrspace(1)
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca i1
  %6 = alloca ptr addrspace(1)
  %7 = alloca i1
  %8 = alloca ptr addrspace(1)
  %9 = alloca i1
  %10 = alloca ptr addrspace(1)
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
  %31 = alloca i1
  %32 = alloca ptr addrspace(1)
  %33 = alloca i1
  %34 = alloca ptr addrspace(1)
  %35 = alloca i8
  %36 = load ptr, ptr @_bal_stack_guard
  %37 = icmp ult ptr %35, %36
  br i1 %37, label %115, label %38
38:
  store ptr addrspace(1) %0, ptr %s1
  store ptr addrspace(1) %1, ptr %s2
  %39 = load ptr addrspace(1), ptr %s1
  %40 = load ptr addrspace(1), ptr %s2
  %41 = call i1 @_bal_string_eq(ptr addrspace(1) %39, ptr addrspace(1) %40), !dbg !74
  store i1 %41, ptr %3
  %42 = load i1, ptr %3
  call void @_B_assert(i1 %42, i1 0), !dbg !75
  store ptr addrspace(1) null, ptr %4
  %43 = load ptr addrspace(1), ptr %s1
  %44 = load ptr addrspace(1), ptr %s2
  %45 = call i1 @_bal_string_eq(ptr addrspace(1) %43, ptr addrspace(1) %44), !dbg !76
  store i1 %45, ptr %5
  %46 = load i1, ptr %5
  call void @_B_assert(i1 %46, i1 0), !dbg !77
  store ptr addrspace(1) null, ptr %6
  %47 = load ptr addrspace(1), ptr %s1
  %48 = load ptr addrspace(1), ptr %s2
  %49 = call i1 @_bal_string_eq(ptr addrspace(1) %47, ptr addrspace(1) %48), !dbg !78
  %50 = xor i1 %49, 1
  store i1 %50, ptr %7
  %51 = load i1, ptr %7
  call void @_B_assert(i1 %51, i1 1), !dbg !79
  store ptr addrspace(1) null, ptr %8
  %52 = load ptr addrspace(1), ptr %s1
  %53 = load ptr addrspace(1), ptr %s2
  %54 = call i1 @_bal_string_eq(ptr addrspace(1) %52, ptr addrspace(1) %53), !dbg !80
  %55 = xor i1 %54, 1
  store i1 %55, ptr %9
  %56 = load i1, ptr %9
  call void @_B_assert(i1 %56, i1 1), !dbg !81
  store ptr addrspace(1) null, ptr %10
  %57 = load ptr addrspace(1), ptr %s2
  %58 = load ptr addrspace(1), ptr %s1
  %59 = call i1 @_bal_string_eq(ptr addrspace(1) %57, ptr addrspace(1) %58), !dbg !82
  store i1 %59, ptr %11
  %60 = load i1, ptr %11
  call void @_B_assert(i1 %60, i1 0), !dbg !83
  store ptr addrspace(1) null, ptr %12
  %61 = load ptr addrspace(1), ptr %s2
  %62 = load ptr addrspace(1), ptr %s1
  %63 = call i1 @_bal_string_eq(ptr addrspace(1) %61, ptr addrspace(1) %62), !dbg !84
  store i1 %63, ptr %13
  %64 = load i1, ptr %13
  call void @_B_assert(i1 %64, i1 0), !dbg !85
  store ptr addrspace(1) null, ptr %14
  %65 = load ptr addrspace(1), ptr %s2
  %66 = load ptr addrspace(1), ptr %s1
  %67 = call i1 @_bal_string_eq(ptr addrspace(1) %65, ptr addrspace(1) %66), !dbg !86
  %68 = xor i1 %67, 1
  store i1 %68, ptr %15
  %69 = load i1, ptr %15
  call void @_B_assert(i1 %69, i1 1), !dbg !87
  store ptr addrspace(1) null, ptr %16
  %70 = load ptr addrspace(1), ptr %s2
  %71 = load ptr addrspace(1), ptr %s1
  %72 = call i1 @_bal_string_eq(ptr addrspace(1) %70, ptr addrspace(1) %71), !dbg !88
  %73 = xor i1 %72, 1
  store i1 %73, ptr %17
  %74 = load i1, ptr %17
  call void @_B_assert(i1 %74, i1 1), !dbg !89
  store ptr addrspace(1) null, ptr %18
  %75 = load ptr addrspace(1), ptr %s1
  %76 = load ptr addrspace(1), ptr %s2
  %77 = call i64 @_bal_string_cmp(ptr addrspace(1) %75, ptr addrspace(1) %76), !dbg !90
  %78 = icmp sle i64 %77, 0
  store i1 %78, ptr %19
  %79 = load i1, ptr %19
  call void @_B_assert(i1 %79, i1 1), !dbg !91
  store ptr addrspace(1) null, ptr %20
  %80 = load ptr addrspace(1), ptr %s1
  %81 = load ptr addrspace(1), ptr %s2
  %82 = call i64 @_bal_string_cmp(ptr addrspace(1) %80, ptr addrspace(1) %81), !dbg !92
  %83 = icmp sge i64 %82, 0
  store i1 %83, ptr %21
  %84 = load i1, ptr %21
  call void @_B_assert(i1 %84, i1 0), !dbg !93
  store ptr addrspace(1) null, ptr %22
  %85 = load ptr addrspace(1), ptr %s1
  %86 = load ptr addrspace(1), ptr %s2
  %87 = call i64 @_bal_string_cmp(ptr addrspace(1) %85, ptr addrspace(1) %86), !dbg !94
  %88 = icmp sgt i64 %87, 0
  store i1 %88, ptr %23
  %89 = load i1, ptr %23
  call void @_B_assert(i1 %89, i1 0), !dbg !95
  store ptr addrspace(1) null, ptr %24
  %90 = load ptr addrspace(1), ptr %s2
  %91 = load ptr addrspace(1), ptr %s1
  %92 = call i64 @_bal_string_cmp(ptr addrspace(1) %90, ptr addrspace(1) %91), !dbg !96
  %93 = icmp sgt i64 %92, 0
  store i1 %93, ptr %25
  %94 = load i1, ptr %25
  call void @_B_assert(i1 %94, i1 1), !dbg !97
  store ptr addrspace(1) null, ptr %26
  %95 = load ptr addrspace(1), ptr %s2
  %96 = load ptr addrspace(1), ptr %s1
  %97 = call i64 @_bal_string_cmp(ptr addrspace(1) %95, ptr addrspace(1) %96), !dbg !98
  %98 = icmp sge i64 %97, 0
  store i1 %98, ptr %27
  %99 = load i1, ptr %27
  call void @_B_assert(i1 %99, i1 1), !dbg !99
  store ptr addrspace(1) null, ptr %28
  %100 = load ptr addrspace(1), ptr %s2
  %101 = load ptr addrspace(1), ptr %s1
  %102 = call i64 @_bal_string_cmp(ptr addrspace(1) %100, ptr addrspace(1) %101), !dbg !100
  %103 = icmp sle i64 %102, 0
  store i1 %103, ptr %29
  %104 = load i1, ptr %29
  call void @_B_assert(i1 %104, i1 0), !dbg !101
  store ptr addrspace(1) null, ptr %30
  %105 = load ptr addrspace(1), ptr %s2
  %106 = load ptr addrspace(1), ptr %s1
  %107 = call i64 @_bal_string_cmp(ptr addrspace(1) %105, ptr addrspace(1) %106), !dbg !102
  %108 = icmp slt i64 %107, 0
  store i1 %108, ptr %31
  %109 = load i1, ptr %31
  call void @_B_assert(i1 %109, i1 0), !dbg !103
  store ptr addrspace(1) null, ptr %32
  %110 = load ptr addrspace(1), ptr %s2
  %111 = load ptr addrspace(1), ptr %s1
  %112 = call i64 @_bal_string_cmp(ptr addrspace(1) %110, ptr addrspace(1) %111), !dbg !104
  %113 = icmp sgt i64 %112, 0
  store i1 %113, ptr %33
  %114 = load i1, ptr %33
  call void @_B_assert(i1 %114, i1 1), !dbg !105
  store ptr addrspace(1) null, ptr %34
  ret void
115:
  %116 = call ptr addrspace(1) @_bal_panic_construct(i64 12804), !dbg !72
  call void @_bal_panic(ptr addrspace(1) %116), !dbg !73
  unreachable
}
define internal void @_B_assert(i1 %0, i1 %1) !dbg !11 {
  %expect = alloca i1
  %actual = alloca i1
  %3 = alloca i1
  %4 = alloca ptr addrspace(1)
  %5 = alloca ptr addrspace(1)
  %6 = alloca i8
  %7 = load ptr, ptr @_bal_stack_guard
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %25, label %9
9:
  store i1 %0, ptr %expect
  store i1 %1, ptr %actual
  %10 = load i1, ptr %expect
  %11 = load i1, ptr %actual
  %12 = icmp ne i1 %10, %11
  store i1 %12, ptr %3
  %13 = load i1, ptr %3
  br i1 %13, label %14, label %24
14:
  %15 = call ptr addrspace(1) @_bal_list_construct_8(ptr @_Bi04root0, i64 1), !dbg !108
  %16 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 3
  %17 = load ptr addrspace(1), ptr addrspace(1) %16, align 8
  %18 = bitcast ptr addrspace(1) %17 to ptr addrspace(1)
  %19 = getelementptr inbounds [0 x ptr addrspace(1)], ptr addrspace(1) %18, i64 0, i64 0
  store ptr addrspace(1) getelementptr(i8, ptr addrspace(1) null, i64 2738188570965139814), ptr addrspace(1) %19
  %20 = getelementptr inbounds {ptr, i64, i64, ptr addrspace(1)}, ptr addrspace(1) %15, i64 0, i32 1
  store i64 1, ptr addrspace(1) %20
  %21 = bitcast ptr addrspace(1) %15 to ptr addrspace(1)
  %22 = getelementptr i8, ptr addrspace(1) %21, i64 864691128455135236
  store ptr addrspace(1) %22, ptr %4
  %23 = load ptr addrspace(1), ptr %4
  call void @_Bb02ioprintln(ptr addrspace(1) %23), !dbg !109
  store ptr addrspace(1) null, ptr %5
  br label %24
24:
  ret void
25:
  %26 = call ptr addrspace(1) @_bal_panic_construct(i64 17668), !dbg !106
  call void @_bal_panic(ptr addrspace(1) %26), !dbg !107
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/04-string/equal2-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"cmp", linkageName:"_B_cmp", scope: !1, file: !1, line: 20, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"checkLessThan", linkageName:"_B_checkLessThan", scope: !1, file: !1, line: 50, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"assert", linkageName:"_B_assert", scope: !1, file: !1, line: 69, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = !DILocation(line: 0, column: 0, scope: !5)
!14 = !DILocation(line: 4, column: 16, scope: !5)
!15 = !DILocation(line: 5, column: 4, scope: !5)
!16 = !DILocation(line: 6, column: 4, scope: !5)
!17 = !DILocation(line: 7, column: 4, scope: !5)
!18 = !DILocation(line: 8, column: 4, scope: !5)
!19 = !DILocation(line: 9, column: 4, scope: !5)
!20 = !DILocation(line: 10, column: 4, scope: !5)
!21 = !DILocation(line: 11, column: 4, scope: !5)
!22 = !DILocation(line: 12, column: 4, scope: !5)
!23 = !DILocation(line: 13, column: 4, scope: !5)
!24 = !DILocation(line: 14, column: 4, scope: !5)
!25 = !DILocation(line: 15, column: 4, scope: !5)
!26 = !DILocation(line: 16, column: 4, scope: !5)
!27 = !DILocation(line: 17, column: 4, scope: !5)
!28 = !DILocation(line: 0, column: 0, scope: !7)
!29 = !DILocation(line: 20, column: 9, scope: !7)
!30 = !DILocation(line: 21, column: 10, scope: !7)
!31 = !DILocation(line: 25, column: 15, scope: !7)
!32 = !DILocation(line: 30, column: 19, scope: !7)
!33 = !DILocation(line: 30, column: 8, scope: !7)
!34 = !DILocation(line: 31, column: 18, scope: !7)
!35 = !DILocation(line: 31, column: 8, scope: !7)
!36 = !DILocation(line: 32, column: 18, scope: !7)
!37 = !DILocation(line: 32, column: 8, scope: !7)
!38 = !DILocation(line: 33, column: 18, scope: !7)
!39 = !DILocation(line: 33, column: 8, scope: !7)
!40 = !DILocation(line: 34, column: 18, scope: !7)
!41 = !DILocation(line: 34, column: 8, scope: !7)
!42 = !DILocation(line: 35, column: 18, scope: !7)
!43 = !DILocation(line: 35, column: 8, scope: !7)
!44 = !DILocation(line: 36, column: 18, scope: !7)
!45 = !DILocation(line: 36, column: 8, scope: !7)
!46 = !DILocation(line: 37, column: 18, scope: !7)
!47 = !DILocation(line: 37, column: 8, scope: !7)
!48 = !DILocation(line: 38, column: 18, scope: !7)
!49 = !DILocation(line: 38, column: 8, scope: !7)
!50 = !DILocation(line: 39, column: 18, scope: !7)
!51 = !DILocation(line: 39, column: 8, scope: !7)
!52 = !DILocation(line: 40, column: 18, scope: !7)
!53 = !DILocation(line: 40, column: 8, scope: !7)
!54 = !DILocation(line: 41, column: 18, scope: !7)
!55 = !DILocation(line: 41, column: 8, scope: !7)
!56 = !DILocation(line: 42, column: 18, scope: !7)
!57 = !DILocation(line: 42, column: 8, scope: !7)
!58 = !DILocation(line: 43, column: 18, scope: !7)
!59 = !DILocation(line: 43, column: 8, scope: !7)
!60 = !DILocation(line: 44, column: 18, scope: !7)
!61 = !DILocation(line: 44, column: 8, scope: !7)
!62 = !DILocation(line: 45, column: 18, scope: !7)
!63 = !DILocation(line: 45, column: 8, scope: !7)
!64 = !DILocation(line: 46, column: 18, scope: !7)
!65 = !DILocation(line: 46, column: 8, scope: !7)
!66 = !DILocation(line: 26, column: 19, scope: !7)
!67 = !DILocation(line: 26, column: 8, scope: !7)
!68 = !DILocation(line: 27, column: 8, scope: !7)
!69 = !DILocation(line: 22, column: 19, scope: !7)
!70 = !DILocation(line: 22, column: 8, scope: !7)
!71 = !DILocation(line: 23, column: 8, scope: !7)
!72 = !DILocation(line: 0, column: 0, scope: !9)
!73 = !DILocation(line: 50, column: 9, scope: !9)
!74 = !DILocation(line: 51, column: 14, scope: !9)
!75 = !DILocation(line: 51, column: 4, scope: !9)
!76 = !DILocation(line: 52, column: 14, scope: !9)
!77 = !DILocation(line: 52, column: 4, scope: !9)
!78 = !DILocation(line: 53, column: 14, scope: !9)
!79 = !DILocation(line: 53, column: 4, scope: !9)
!80 = !DILocation(line: 54, column: 14, scope: !9)
!81 = !DILocation(line: 54, column: 4, scope: !9)
!82 = !DILocation(line: 55, column: 14, scope: !9)
!83 = !DILocation(line: 55, column: 4, scope: !9)
!84 = !DILocation(line: 56, column: 14, scope: !9)
!85 = !DILocation(line: 56, column: 4, scope: !9)
!86 = !DILocation(line: 57, column: 14, scope: !9)
!87 = !DILocation(line: 57, column: 4, scope: !9)
!88 = !DILocation(line: 58, column: 14, scope: !9)
!89 = !DILocation(line: 58, column: 4, scope: !9)
!90 = !DILocation(line: 59, column: 14, scope: !9)
!91 = !DILocation(line: 59, column: 4, scope: !9)
!92 = !DILocation(line: 60, column: 14, scope: !9)
!93 = !DILocation(line: 60, column: 4, scope: !9)
!94 = !DILocation(line: 61, column: 14, scope: !9)
!95 = !DILocation(line: 61, column: 4, scope: !9)
!96 = !DILocation(line: 62, column: 14, scope: !9)
!97 = !DILocation(line: 62, column: 4, scope: !9)
!98 = !DILocation(line: 63, column: 14, scope: !9)
!99 = !DILocation(line: 63, column: 4, scope: !9)
!100 = !DILocation(line: 64, column: 14, scope: !9)
!101 = !DILocation(line: 64, column: 4, scope: !9)
!102 = !DILocation(line: 65, column: 14, scope: !9)
!103 = !DILocation(line: 65, column: 4, scope: !9)
!104 = !DILocation(line: 66, column: 14, scope: !9)
!105 = !DILocation(line: 66, column: 4, scope: !9)
!106 = !DILocation(line: 0, column: 0, scope: !11)
!107 = !DILocation(line: 69, column: 9, scope: !11)
!108 = !DILocation(line: 71, column: 19, scope: !11)
!109 = !DILocation(line: 71, column: 8, scope: !11)
