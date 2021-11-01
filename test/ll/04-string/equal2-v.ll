@_bal_stack_guard = external global i8*
@.str4 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 8, i16 8, [12 x i8] c"1234567\00\00\00\00\00"}, align 8
@.str13 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 6, i16 5, [12 x i8] c"1234\C2\80\00\00\00\00\00\00"}, align 8
@.str14 = internal unnamed_addr constant {i16, i16, [12 x i8]} {i16 6, i16 5, [12 x i8] c"1234\C2\81\00\00\00\00\00\00"}, align 8
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i64 @_bal_string_cmp(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %18, label %17
17:
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113)), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !14
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901113), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112)), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !15
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112)), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !16
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630866808)), !dbg !17
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !17
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3041959675448996401), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str4 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !18
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !18
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098254670791127601), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3026478551729910321)), !dbg !19
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !19
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901247), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630900992)), !dbg !20
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !20
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630900992), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630900992)), !dbg !21
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !21
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630900992), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543614124032)), !dbg !22
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !22
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901119), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630868674)), !dbg !23
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !23
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630868674), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630868930)), !dbg !24
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !24
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str13 to i8*) to i8 addrspace(1)*), i64 720575940379279360), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* addrspacecast(i8* bitcast({i16, i16, [12 x i8]}* @.str14 to i8*) to i8 addrspace(1)*), i64 720575940379279360)), !dbg !25
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !25
  call void @_B_cmp(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630901112), i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541493420016)), !dbg !26
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !26
  ret void
18:
  %19 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %19)
  unreachable
}
define internal void @_B_cmp(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !7 {
  %s1 = alloca i8 addrspace(1)*
  %s2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i1
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i1
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i1
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i1
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i1
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i1
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i1
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i1
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i1
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i1
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i8
  %43 = load i8*, i8** @_bal_stack_guard
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %142, label %45
45:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %s2
  %46 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %48 = call i64 @_bal_string_cmp(i8 addrspace(1)* %46, i8 addrspace(1)* %47)
  %49 = icmp slt i64 %48, 0
  store i1 %49, i1* %3
  %50 = load i1, i1* %3
  br i1 %50, label %51, label %54
51:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865516)), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !28
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %s1, !dbg !29
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %s2, !dbg !29
  call void @_B_checkLessThan(i8 addrspace(1)* %52, i8 addrspace(1)* %53), !dbg !29
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !29
  br label %141
54:
  %55 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %57 = call i64 @_bal_string_cmp(i8 addrspace(1)* %55, i8 addrspace(1)* %56)
  %58 = icmp sgt i64 %57, 0
  store i1 %58, i1* %6
  %59 = load i1, i1* %6
  br i1 %59, label %60, label %63
60:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630865511)), !dbg !30
  store i8 addrspace(1)* null, i8 addrspace(1)** %7, !dbg !30
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %s2, !dbg !31
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %s1, !dbg !31
  call void @_B_checkLessThan(i8 addrspace(1)* %61, i8 addrspace(1)* %62), !dbg !31
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !31
  br label %140
63:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630864741)), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %9, !dbg !32
  %64 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %66 = call i1 @_bal_string_eq(i8 addrspace(1)* %64, i8 addrspace(1)* %65)
  store i1 %66, i1* %10
  %67 = load i1, i1* %10, !dbg !33
  call void @_B_assert(i1 %67, i1 1), !dbg !33
  store i8 addrspace(1)* null, i8 addrspace(1)** %11, !dbg !33
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %70 = call i1 @_bal_string_eq(i8 addrspace(1)* %68, i8 addrspace(1)* %69)
  %71 = xor i1 %70, 1
  store i1 %71, i1* %12
  %72 = load i1, i1* %12, !dbg !34
  call void @_B_assert(i1 %72, i1 0), !dbg !34
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !34
  %73 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %74 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %75 = call i1 @_bal_string_eq(i8 addrspace(1)* %73, i8 addrspace(1)* %74)
  store i1 %75, i1* %14
  %76 = load i1, i1* %14, !dbg !35
  call void @_B_assert(i1 %76, i1 1), !dbg !35
  store i8 addrspace(1)* null, i8 addrspace(1)** %15, !dbg !35
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %79 = call i1 @_bal_string_eq(i8 addrspace(1)* %77, i8 addrspace(1)* %78)
  %80 = xor i1 %79, 1
  store i1 %80, i1* %16
  %81 = load i1, i1* %16, !dbg !36
  call void @_B_assert(i1 %81, i1 0), !dbg !36
  store i8 addrspace(1)* null, i8 addrspace(1)** %17, !dbg !36
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %83 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %84 = call i1 @_bal_string_eq(i8 addrspace(1)* %82, i8 addrspace(1)* %83)
  store i1 %84, i1* %18
  %85 = load i1, i1* %18, !dbg !37
  call void @_B_assert(i1 %85, i1 1), !dbg !37
  store i8 addrspace(1)* null, i8 addrspace(1)** %19, !dbg !37
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %88 = call i1 @_bal_string_eq(i8 addrspace(1)* %86, i8 addrspace(1)* %87)
  %89 = xor i1 %88, 1
  store i1 %89, i1* %20
  %90 = load i1, i1* %20, !dbg !38
  call void @_B_assert(i1 %90, i1 0), !dbg !38
  store i8 addrspace(1)* null, i8 addrspace(1)** %21, !dbg !38
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %93 = call i1 @_bal_string_eq(i8 addrspace(1)* %91, i8 addrspace(1)* %92)
  store i1 %93, i1* %22
  %94 = load i1, i1* %22, !dbg !39
  call void @_B_assert(i1 %94, i1 1), !dbg !39
  store i8 addrspace(1)* null, i8 addrspace(1)** %23, !dbg !39
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %97 = call i1 @_bal_string_eq(i8 addrspace(1)* %95, i8 addrspace(1)* %96)
  %98 = xor i1 %97, 1
  store i1 %98, i1* %24
  %99 = load i1, i1* %24, !dbg !40
  call void @_B_assert(i1 %99, i1 0), !dbg !40
  store i8 addrspace(1)* null, i8 addrspace(1)** %25, !dbg !40
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %102 = call i64 @_bal_string_cmp(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  %103 = icmp slt i64 %102, 0
  store i1 %103, i1* %26
  %104 = load i1, i1* %26, !dbg !41
  call void @_B_assert(i1 %104, i1 0), !dbg !41
  store i8 addrspace(1)* null, i8 addrspace(1)** %27, !dbg !41
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %107 = call i64 @_bal_string_cmp(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  %108 = icmp slt i64 %107, 0
  store i1 %108, i1* %28
  %109 = load i1, i1* %28, !dbg !42
  call void @_B_assert(i1 %109, i1 0), !dbg !42
  store i8 addrspace(1)* null, i8 addrspace(1)** %29, !dbg !42
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %112 = call i64 @_bal_string_cmp(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  %113 = icmp sgt i64 %112, 0
  store i1 %113, i1* %30
  %114 = load i1, i1* %30, !dbg !43
  call void @_B_assert(i1 %114, i1 0), !dbg !43
  store i8 addrspace(1)* null, i8 addrspace(1)** %31, !dbg !43
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %117 = call i64 @_bal_string_cmp(i8 addrspace(1)* %115, i8 addrspace(1)* %116)
  %118 = icmp sgt i64 %117, 0
  store i1 %118, i1* %32
  %119 = load i1, i1* %32, !dbg !44
  call void @_B_assert(i1 %119, i1 0), !dbg !44
  store i8 addrspace(1)* null, i8 addrspace(1)** %33, !dbg !44
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %122 = call i64 @_bal_string_cmp(i8 addrspace(1)* %120, i8 addrspace(1)* %121)
  %123 = icmp sle i64 %122, 0
  store i1 %123, i1* %34
  %124 = load i1, i1* %34, !dbg !45
  call void @_B_assert(i1 %124, i1 1), !dbg !45
  store i8 addrspace(1)* null, i8 addrspace(1)** %35, !dbg !45
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %127 = call i64 @_bal_string_cmp(i8 addrspace(1)* %125, i8 addrspace(1)* %126)
  %128 = icmp sle i64 %127, 0
  store i1 %128, i1* %36
  %129 = load i1, i1* %36, !dbg !46
  call void @_B_assert(i1 %129, i1 1), !dbg !46
  store i8 addrspace(1)* null, i8 addrspace(1)** %37, !dbg !46
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %132 = call i64 @_bal_string_cmp(i8 addrspace(1)* %130, i8 addrspace(1)* %131)
  %133 = icmp sge i64 %132, 0
  store i1 %133, i1* %38
  %134 = load i1, i1* %38, !dbg !47
  call void @_B_assert(i1 %134, i1 1), !dbg !47
  store i8 addrspace(1)* null, i8 addrspace(1)** %39, !dbg !47
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %137 = call i64 @_bal_string_cmp(i8 addrspace(1)* %135, i8 addrspace(1)* %136)
  %138 = icmp sge i64 %137, 0
  store i1 %138, i1* %40
  %139 = load i1, i1* %40, !dbg !48
  call void @_B_assert(i1 %139, i1 1), !dbg !48
  store i8 addrspace(1)* null, i8 addrspace(1)** %41, !dbg !48
  br label %140
140:
  br label %141
141:
  ret void
142:
  %143 = call i8 addrspace(1)* @_bal_panic_construct(i64 5124), !dbg !27
  call void @_bal_panic(i8 addrspace(1)* %143)
  unreachable
}
define internal void @_B_checkLessThan(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !9 {
  %s1 = alloca i8 addrspace(1)*
  %s2 = alloca i8 addrspace(1)*
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
  %17 = alloca i1
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i1
  %20 = alloca i8 addrspace(1)*
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
  %31 = alloca i1
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i1
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8
  %36 = load i8*, i8** @_bal_stack_guard
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %115, label %38
38:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %s2
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %41 = call i1 @_bal_string_eq(i8 addrspace(1)* %39, i8 addrspace(1)* %40)
  store i1 %41, i1* %3
  %42 = load i1, i1* %3, !dbg !50
  call void @_B_assert(i1 %42, i1 0), !dbg !50
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !50
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %45 = call i1 @_bal_string_eq(i8 addrspace(1)* %43, i8 addrspace(1)* %44)
  store i1 %45, i1* %5
  %46 = load i1, i1* %5, !dbg !51
  call void @_B_assert(i1 %46, i1 0), !dbg !51
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !51
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %48 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %49 = call i1 @_bal_string_eq(i8 addrspace(1)* %47, i8 addrspace(1)* %48)
  %50 = xor i1 %49, 1
  store i1 %50, i1* %7
  %51 = load i1, i1* %7, !dbg !52
  call void @_B_assert(i1 %51, i1 1), !dbg !52
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !52
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %54 = call i1 @_bal_string_eq(i8 addrspace(1)* %52, i8 addrspace(1)* %53)
  %55 = xor i1 %54, 1
  store i1 %55, i1* %9
  %56 = load i1, i1* %9, !dbg !53
  call void @_B_assert(i1 %56, i1 1), !dbg !53
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, !dbg !53
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %59 = call i1 @_bal_string_eq(i8 addrspace(1)* %57, i8 addrspace(1)* %58)
  store i1 %59, i1* %11
  %60 = load i1, i1* %11, !dbg !54
  call void @_B_assert(i1 %60, i1 0), !dbg !54
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, !dbg !54
  %61 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %63 = call i1 @_bal_string_eq(i8 addrspace(1)* %61, i8 addrspace(1)* %62)
  store i1 %63, i1* %13
  %64 = load i1, i1* %13, !dbg !55
  call void @_B_assert(i1 %64, i1 0), !dbg !55
  store i8 addrspace(1)* null, i8 addrspace(1)** %14, !dbg !55
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %66 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %67 = call i1 @_bal_string_eq(i8 addrspace(1)* %65, i8 addrspace(1)* %66)
  %68 = xor i1 %67, 1
  store i1 %68, i1* %15
  %69 = load i1, i1* %15, !dbg !56
  call void @_B_assert(i1 %69, i1 1), !dbg !56
  store i8 addrspace(1)* null, i8 addrspace(1)** %16, !dbg !56
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %72 = call i1 @_bal_string_eq(i8 addrspace(1)* %70, i8 addrspace(1)* %71)
  %73 = xor i1 %72, 1
  store i1 %73, i1* %17
  %74 = load i1, i1* %17, !dbg !57
  call void @_B_assert(i1 %74, i1 1), !dbg !57
  store i8 addrspace(1)* null, i8 addrspace(1)** %18, !dbg !57
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %76 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %77 = call i64 @_bal_string_cmp(i8 addrspace(1)* %75, i8 addrspace(1)* %76)
  %78 = icmp sle i64 %77, 0
  store i1 %78, i1* %19
  %79 = load i1, i1* %19, !dbg !58
  call void @_B_assert(i1 %79, i1 1), !dbg !58
  store i8 addrspace(1)* null, i8 addrspace(1)** %20, !dbg !58
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %82 = call i64 @_bal_string_cmp(i8 addrspace(1)* %80, i8 addrspace(1)* %81)
  %83 = icmp sge i64 %82, 0
  store i1 %83, i1* %21
  %84 = load i1, i1* %21, !dbg !59
  call void @_B_assert(i1 %84, i1 0), !dbg !59
  store i8 addrspace(1)* null, i8 addrspace(1)** %22, !dbg !59
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %87 = call i64 @_bal_string_cmp(i8 addrspace(1)* %85, i8 addrspace(1)* %86)
  %88 = icmp sgt i64 %87, 0
  store i1 %88, i1* %23
  %89 = load i1, i1* %23, !dbg !60
  call void @_B_assert(i1 %89, i1 0), !dbg !60
  store i8 addrspace(1)* null, i8 addrspace(1)** %24, !dbg !60
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %92 = call i64 @_bal_string_cmp(i8 addrspace(1)* %90, i8 addrspace(1)* %91)
  %93 = icmp sgt i64 %92, 0
  store i1 %93, i1* %25
  %94 = load i1, i1* %25, !dbg !61
  call void @_B_assert(i1 %94, i1 1), !dbg !61
  store i8 addrspace(1)* null, i8 addrspace(1)** %26, !dbg !61
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %97 = call i64 @_bal_string_cmp(i8 addrspace(1)* %95, i8 addrspace(1)* %96)
  %98 = icmp sge i64 %97, 0
  store i1 %98, i1* %27
  %99 = load i1, i1* %27, !dbg !62
  call void @_B_assert(i1 %99, i1 1), !dbg !62
  store i8 addrspace(1)* null, i8 addrspace(1)** %28, !dbg !62
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %102 = call i64 @_bal_string_cmp(i8 addrspace(1)* %100, i8 addrspace(1)* %101)
  %103 = icmp sle i64 %102, 0
  store i1 %103, i1* %29
  %104 = load i1, i1* %29, !dbg !63
  call void @_B_assert(i1 %104, i1 0), !dbg !63
  store i8 addrspace(1)* null, i8 addrspace(1)** %30, !dbg !63
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %107 = call i64 @_bal_string_cmp(i8 addrspace(1)* %105, i8 addrspace(1)* %106)
  %108 = icmp slt i64 %107, 0
  store i1 %108, i1* %31
  %109 = load i1, i1* %31, !dbg !64
  call void @_B_assert(i1 %109, i1 0), !dbg !64
  store i8 addrspace(1)* null, i8 addrspace(1)** %32, !dbg !64
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %s2
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %s1
  %112 = call i64 @_bal_string_cmp(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  %113 = icmp sgt i64 %112, 0
  store i1 %113, i1* %33
  %114 = load i1, i1* %33, !dbg !65
  call void @_B_assert(i1 %114, i1 1), !dbg !65
  store i8 addrspace(1)* null, i8 addrspace(1)** %34, !dbg !65
  ret void
115:
  %116 = call i8 addrspace(1)* @_bal_panic_construct(i64 12804), !dbg !49
  call void @_bal_panic(i8 addrspace(1)* %116)
  unreachable
}
define internal void @_B_assert(i1 %0, i1 %1) !dbg !11 {
  %expect = alloca i1
  %actual = alloca i1
  %3 = alloca i1
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i1 %0, i1* %expect
  store i1 %1, i1* %actual
  %9 = load i1, i1* %expect
  %10 = load i1, i1* %actual
  %11 = icmp ne i1 %9, %10
  store i1 %11, i1* %3
  %12 = load i1, i1* %3
  br i1 %12, label %13, label %14
13:
  call void @_Bb02ioprintln(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541154779494)), !dbg !67
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !67
  br label %14
14:
  ret void
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 17668), !dbg !66
  call void @_bal_panic(i8 addrspace(1)* %16)
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
!14 = !DILocation(line: 5, column: 4, scope: !5)
!15 = !DILocation(line: 6, column: 4, scope: !5)
!16 = !DILocation(line: 7, column: 4, scope: !5)
!17 = !DILocation(line: 8, column: 4, scope: !5)
!18 = !DILocation(line: 9, column: 4, scope: !5)
!19 = !DILocation(line: 10, column: 4, scope: !5)
!20 = !DILocation(line: 11, column: 4, scope: !5)
!21 = !DILocation(line: 12, column: 4, scope: !5)
!22 = !DILocation(line: 13, column: 4, scope: !5)
!23 = !DILocation(line: 14, column: 4, scope: !5)
!24 = !DILocation(line: 15, column: 4, scope: !5)
!25 = !DILocation(line: 16, column: 4, scope: !5)
!26 = !DILocation(line: 17, column: 4, scope: !5)
!27 = !DILocation(line: 0, column: 0, scope: !7)
!28 = !DILocation(line: 22, column: 8, scope: !7)
!29 = !DILocation(line: 23, column: 8, scope: !7)
!30 = !DILocation(line: 26, column: 8, scope: !7)
!31 = !DILocation(line: 27, column: 8, scope: !7)
!32 = !DILocation(line: 30, column: 8, scope: !7)
!33 = !DILocation(line: 31, column: 8, scope: !7)
!34 = !DILocation(line: 32, column: 8, scope: !7)
!35 = !DILocation(line: 33, column: 8, scope: !7)
!36 = !DILocation(line: 34, column: 8, scope: !7)
!37 = !DILocation(line: 35, column: 8, scope: !7)
!38 = !DILocation(line: 36, column: 8, scope: !7)
!39 = !DILocation(line: 37, column: 8, scope: !7)
!40 = !DILocation(line: 38, column: 8, scope: !7)
!41 = !DILocation(line: 39, column: 8, scope: !7)
!42 = !DILocation(line: 40, column: 8, scope: !7)
!43 = !DILocation(line: 41, column: 8, scope: !7)
!44 = !DILocation(line: 42, column: 8, scope: !7)
!45 = !DILocation(line: 43, column: 8, scope: !7)
!46 = !DILocation(line: 44, column: 8, scope: !7)
!47 = !DILocation(line: 45, column: 8, scope: !7)
!48 = !DILocation(line: 46, column: 8, scope: !7)
!49 = !DILocation(line: 0, column: 0, scope: !9)
!50 = !DILocation(line: 51, column: 4, scope: !9)
!51 = !DILocation(line: 52, column: 4, scope: !9)
!52 = !DILocation(line: 53, column: 4, scope: !9)
!53 = !DILocation(line: 54, column: 4, scope: !9)
!54 = !DILocation(line: 55, column: 4, scope: !9)
!55 = !DILocation(line: 56, column: 4, scope: !9)
!56 = !DILocation(line: 57, column: 4, scope: !9)
!57 = !DILocation(line: 58, column: 4, scope: !9)
!58 = !DILocation(line: 59, column: 4, scope: !9)
!59 = !DILocation(line: 60, column: 4, scope: !9)
!60 = !DILocation(line: 61, column: 4, scope: !9)
!61 = !DILocation(line: 62, column: 4, scope: !9)
!62 = !DILocation(line: 63, column: 4, scope: !9)
!63 = !DILocation(line: 64, column: 4, scope: !9)
!64 = !DILocation(line: 65, column: 4, scope: !9)
!65 = !DILocation(line: 66, column: 4, scope: !9)
!66 = !DILocation(line: 0, column: 0, scope: !11)
!67 = !DILocation(line: 71, column: 8, scope: !11)
