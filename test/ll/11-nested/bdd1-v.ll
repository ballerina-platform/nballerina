@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare zeroext i1 @_bal_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare void @_Bb02ioprintln(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_mapping_construct({i32}*, i64)
declare void @_bal_mapping_init_member(i8 addrspace(1)*, i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare zeroext i1 @_bal_exact_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)*, i64) readonly
declare i64 @_bal_tagged_to_int(i8 addrspace(1)*) readonly
declare i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)*, i8 addrspace(1)*) readnone
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nofree nosync nounwind readnone speculatable willreturn
define void @_B04rootmain() !dbg !5 {
  %b1 = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %b3 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8
  %15 = load i8*, i8** @_bal_stack_guard
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %50, label %17
17:
  %18 = call i8 addrspace(1)* @_B_bddAtom(i64 1), !dbg !22
  store i8 addrspace(1)* %18, i8 addrspace(1)** %1, !dbg !22
  %19 = call i8 addrspace(1)* @_B_bddAtom(i64 2), !dbg !23
  store i8 addrspace(1)* %19, i8 addrspace(1)** %2, !dbg !23
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %1, !dbg !24
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %2, !dbg !24
  %22 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %20, i8 addrspace(1)* %21), !dbg !24
  store i8 addrspace(1)* %22, i8 addrspace(1)** %3, !dbg !24
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %3
  store i8 addrspace(1)* %23, i8 addrspace(1)** %b1
  %24 = call i8 addrspace(1)* @_B_bddAtom(i64 2), !dbg !25
  store i8 addrspace(1)* %24, i8 addrspace(1)** %4, !dbg !25
  %25 = call i8 addrspace(1)* @_B_bddAtom(i64 1), !dbg !26
  store i8 addrspace(1)* %25, i8 addrspace(1)** %5, !dbg !26
  %26 = load i8 addrspace(1)*, i8 addrspace(1)** %4, !dbg !27
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %5, !dbg !27
  %28 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %26, i8 addrspace(1)* %27), !dbg !27
  store i8 addrspace(1)* %28, i8 addrspace(1)** %6, !dbg !27
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %6
  store i8 addrspace(1)* %29, i8 addrspace(1)** %b2
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %31 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %32 = call i1 @_bal_eq(i8 addrspace(1)* %30, i8 addrspace(1)* %31)
  store i1 %32, i1* %7
  %33 = load i1, i1* %7, !dbg !28
  %34 = zext i1 %33 to i64, !dbg !28
  %35 = or i64 %34, 72057594037927936, !dbg !28
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35, !dbg !28
  call void @_Bb02ioprintln(i8 addrspace(1)* %36), !dbg !28
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, !dbg !28
  %37 = call i8 addrspace(1)* @_B_bddAtom(i64 1), !dbg !29
  store i8 addrspace(1)* %37, i8 addrspace(1)** %9, !dbg !29
  %38 = call i8 addrspace(1)* @_B_bddAtom(i64 2), !dbg !30
  store i8 addrspace(1)* %38, i8 addrspace(1)** %10, !dbg !30
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !31
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %10, !dbg !31
  %41 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %39, i8 addrspace(1)* %40), !dbg !31
  store i8 addrspace(1)* %41, i8 addrspace(1)** %11, !dbg !31
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %11
  store i8 addrspace(1)* %42, i8 addrspace(1)** %b3
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %b3
  %45 = call i1 @_bal_eq(i8 addrspace(1)* %43, i8 addrspace(1)* %44)
  store i1 %45, i1* %12
  %46 = load i1, i1* %12, !dbg !32
  %47 = zext i1 %46 to i64, !dbg !32
  %48 = or i64 %47, 72057594037927936, !dbg !32
  %49 = getelementptr i8, i8 addrspace(1)* null, i64 %48, !dbg !32
  call void @_Bb02ioprintln(i8 addrspace(1)* %49), !dbg !32
  store i8 addrspace(1)* null, i8 addrspace(1)** %13, !dbg !32
  ret void
50:
  %51 = call i8 addrspace(1)* @_bal_panic_construct(i64 772), !dbg !21
  call void @_bal_panic(i8 addrspace(1)* %51)
  unreachable
}
define internal i8 addrspace(1)* @_B_bddAtom(i64 %0) !dbg !7 {
  %atom = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %20, label %6
6:
  store i64 %0, i64* %atom
  %7 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 4)
  %8 = load i64, i64* %atom
  %9 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %8)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541171954785), i8 addrspace(1)* %9)
  %10 = zext i1 1 to i64
  %11 = or i64 %10, 72057594037927936
  %12 = getelementptr i8, i8 addrspace(1)* null, i64 %11
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541288801644), i8 addrspace(1)* %12)
  %13 = zext i1 0 to i64
  %14 = or i64 %13, 72057594037927936
  %15 = getelementptr i8, i8 addrspace(1)* null, i64 %14
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098306584869366125), i8 addrspace(1)* %15)
  %16 = zext i1 0 to i64
  %17 = or i64 %16, 72057594037927936
  %18 = getelementptr i8, i8 addrspace(1)* null, i64 %17
  call void @_bal_mapping_init_member(i8 addrspace(1)* %7, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944087087474), i8 addrspace(1)* %18)
  store i8 addrspace(1)* %7, i8 addrspace(1)** %2
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %2
  ret i8 addrspace(1)* %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 5380), !dbg !33
  call void @_bal_panic(i8 addrspace(1)* %21)
  unreachable
}
define internal i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !9 {
  %b1 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i1
  %b1.1 = alloca i1
  %5 = alloca i1
  %b1.2 = alloca i1
  %b1.3 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %b2.1 = alloca i1
  %7 = alloca i1
  %b2.2 = alloca i1
  %b2.3 = alloca i8 addrspace(1)*
  %cmp = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i1
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i1
  %19 = alloca i64
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i64
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8
  %37 = load i8*, i8** @_bal_stack_guard
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %191, label %39
39:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %b2
  %40 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %42 = call i1 @_bal_exact_eq(i8 addrspace(1)* %40, i8 addrspace(1)* %41)
  store i1 %42, i1* %3
  %43 = load i1, i1* %3
  br i1 %43, label %44, label %46
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %45
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %48 = addrspacecast i8 addrspace(1)* %47 to i8*
  %49 = ptrtoint i8* %48 to i64
  %50 = and i64 %49, 2233785415175766016
  %51 = icmp eq i64 %50, 72057594037927936
  store i1 %51, i1* %4
  %52 = load i1, i1* %4
  br i1 %52, label %53, label %68
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %55 = addrspacecast i8 addrspace(1)* %54 to i8*
  %56 = ptrtoint i8* %55 to i64
  %57 = trunc i64 %56 to i1
  store i1 %57, i1* %b1.1
  %58 = load i1, i1* %b1.1
  %59 = icmp eq i1 %58, 1
  store i1 %59, i1* %5
  %60 = load i1, i1* %5
  br i1 %60, label %61, label %66
61:
  %62 = load i1, i1* %b1.1
  store i1 %62, i1* %b1.2
  %63 = zext i1 1 to i64
  %64 = or i64 %63, 72057594037927936
  %65 = getelementptr i8, i8 addrspace(1)* null, i64 %64
  ret i8 addrspace(1)* %65
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  ret i8 addrspace(1)* %67
68:
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %69, i8 addrspace(1)** %b1.3
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %71 = addrspacecast i8 addrspace(1)* %70 to i8*
  %72 = ptrtoint i8* %71 to i64
  %73 = and i64 %72, 2233785415175766016
  %74 = icmp eq i64 %73, 72057594037927936
  store i1 %74, i1* %6
  %75 = load i1, i1* %6
  br i1 %75, label %76, label %91
76:
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %78 = addrspacecast i8 addrspace(1)* %77 to i8*
  %79 = ptrtoint i8* %78 to i64
  %80 = trunc i64 %79 to i1
  store i1 %80, i1* %b2.1
  %81 = load i1, i1* %b2.1
  %82 = icmp eq i1 %81, 1
  store i1 %82, i1* %7
  %83 = load i1, i1* %7
  br i1 %83, label %84, label %89
84:
  %85 = load i1, i1* %b2.1
  store i1 %85, i1* %b2.2
  %86 = zext i1 1 to i64
  %87 = or i64 %86, 72057594037927936
  %88 = getelementptr i8, i8 addrspace(1)* null, i64 %87
  ret i8 addrspace(1)* %88
89:
  %90 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  ret i8 addrspace(1)* %90
91:
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  store i8 addrspace(1)* %92, i8 addrspace(1)** %b2.3
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %94 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %93, i64 0)
  %95 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %94)
  store i64 %95, i64* %8
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %97 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %96, i64 0)
  %98 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %97)
  store i64 %98, i64* %9
  %99 = load i64, i64* %8, !dbg !35
  %100 = load i64, i64* %9, !dbg !35
  %101 = call i64 @_B_atomCmp(i64 %99, i64 %100), !dbg !35
  store i64 %101, i64* %10, !dbg !35
  %102 = load i64, i64* %10
  store i64 %102, i64* %cmp
  %103 = load i64, i64* %cmp
  %104 = icmp slt i64 %103, 0
  store i1 %104, i1* %11
  %105 = load i1, i1* %11
  br i1 %105, label %106, label %128
106:
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %108 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %107, i64 0)
  %109 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %108)
  store i64 %109, i64* %12
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %111 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %110, i64 1)
  %112 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %110, i8 addrspace(1)* %111)
  store i8 addrspace(1)* %112, i8 addrspace(1)** %13
  %113 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %114 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %113, i64 2)
  %115 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %113, i8 addrspace(1)* %114)
  store i8 addrspace(1)* %115, i8 addrspace(1)** %14
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %14, !dbg !36
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3, !dbg !36
  %118 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %116, i8 addrspace(1)* %117), !dbg !36
  store i8 addrspace(1)* %118, i8 addrspace(1)** %15, !dbg !36
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %120 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %119, i64 3)
  %121 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %119, i8 addrspace(1)* %120)
  store i8 addrspace(1)* %121, i8 addrspace(1)** %16
  %122 = load i64, i64* %12, !dbg !37
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !37
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !37
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !37
  %126 = call i8 addrspace(1)* @_B_bddCreate(i64 %122, i8 addrspace(1)* %123, i8 addrspace(1)* %124, i8 addrspace(1)* %125), !dbg !37
  store i8 addrspace(1)* %126, i8 addrspace(1)** %17, !dbg !37
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  ret i8 addrspace(1)* %127
128:
  %129 = load i64, i64* %cmp
  %130 = icmp sgt i64 %129, 0
  store i1 %130, i1* %18
  %131 = load i1, i1* %18
  br i1 %131, label %132, label %154
132:
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %134 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %133, i64 0)
  %135 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %134)
  store i64 %135, i64* %19
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %137 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %136, i64 1)
  %138 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %136, i8 addrspace(1)* %137)
  store i8 addrspace(1)* %138, i8 addrspace(1)** %20
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %140 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %139, i64 2)
  %141 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %139, i8 addrspace(1)* %140)
  store i8 addrspace(1)* %141, i8 addrspace(1)** %21
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3, !dbg !38
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !38
  %144 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %142, i8 addrspace(1)* %143), !dbg !38
  store i8 addrspace(1)* %144, i8 addrspace(1)** %22, !dbg !38
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %146 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %145, i64 3)
  %147 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %145, i8 addrspace(1)* %146)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %23
  %148 = load i64, i64* %19, !dbg !39
  %149 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !39
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !39
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !39
  %152 = call i8 addrspace(1)* @_B_bddCreate(i64 %148, i8 addrspace(1)* %149, i8 addrspace(1)* %150, i8 addrspace(1)* %151), !dbg !39
  store i8 addrspace(1)* %152, i8 addrspace(1)** %24, !dbg !39
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %24
  ret i8 addrspace(1)* %153
154:
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %156 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %155, i64 0)
  %157 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %156)
  store i64 %157, i64* %25
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %159 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %158, i64 1)
  %160 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %158, i8 addrspace(1)* %159)
  store i8 addrspace(1)* %160, i8 addrspace(1)** %26
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %162 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %161, i64 1)
  %163 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %161, i8 addrspace(1)* %162)
  store i8 addrspace(1)* %163, i8 addrspace(1)** %27
  %164 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !40
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !40
  %166 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %164, i8 addrspace(1)* %165), !dbg !40
  store i8 addrspace(1)* %166, i8 addrspace(1)** %28, !dbg !40
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %168 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %167, i64 2)
  %169 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %167, i8 addrspace(1)* %168)
  store i8 addrspace(1)* %169, i8 addrspace(1)** %29
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %171 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %170, i64 2)
  %172 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %170, i8 addrspace(1)* %171)
  store i8 addrspace(1)* %172, i8 addrspace(1)** %30
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !41
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %30, !dbg !41
  %175 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %173, i8 addrspace(1)* %174), !dbg !41
  store i8 addrspace(1)* %175, i8 addrspace(1)** %31, !dbg !41
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %177 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %176, i64 3)
  %178 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %176, i8 addrspace(1)* %177)
  store i8 addrspace(1)* %178, i8 addrspace(1)** %32
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %180 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %179, i64 3)
  %181 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %179, i8 addrspace(1)* %180)
  store i8 addrspace(1)* %181, i8 addrspace(1)** %33
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %32, !dbg !42
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %33, !dbg !42
  %184 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %182, i8 addrspace(1)* %183), !dbg !42
  store i8 addrspace(1)* %184, i8 addrspace(1)** %34, !dbg !42
  %185 = load i64, i64* %25, !dbg !43
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %28, !dbg !43
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !43
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !43
  %189 = call i8 addrspace(1)* @_B_bddCreate(i64 %185, i8 addrspace(1)* %186, i8 addrspace(1)* %187, i8 addrspace(1)* %188), !dbg !43
  store i8 addrspace(1)* %189, i8 addrspace(1)** %35, !dbg !43
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %35
  ret i8 addrspace(1)* %190
191:
  %192 = call i8 addrspace(1)* @_bal_panic_construct(i64 6404), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %192)
  unreachable
}
define internal i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !11 {
  %b1 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i1
  %b1.1 = alloca i1
  %5 = alloca i1
  %b1.2 = alloca i1
  %b1.3 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %b2.1 = alloca i1
  %7 = alloca i1
  %b2.2 = alloca i1
  %b2.3 = alloca i8 addrspace(1)*
  %cmp = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i1
  %12 = alloca i64
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i1
  %21 = alloca i64
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i64
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i8
  %46 = load i8*, i8** @_bal_stack_guard
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %229, label %48
48:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %b2
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %51 = call i1 @_bal_exact_eq(i8 addrspace(1)* %49, i8 addrspace(1)* %50)
  store i1 %51, i1* %3
  %52 = load i1, i1* %3
  br i1 %52, label %53, label %55
53:
  %54 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %54
55:
  %56 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %57 = addrspacecast i8 addrspace(1)* %56 to i8*
  %58 = ptrtoint i8* %57 to i64
  %59 = and i64 %58, 2233785415175766016
  %60 = icmp eq i64 %59, 72057594037927936
  store i1 %60, i1* %4
  %61 = load i1, i1* %4
  br i1 %61, label %62, label %77
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %64 = addrspacecast i8 addrspace(1)* %63 to i8*
  %65 = ptrtoint i8* %64 to i64
  %66 = trunc i64 %65 to i1
  store i1 %66, i1* %b1.1
  %67 = load i1, i1* %b1.1
  %68 = icmp eq i1 %67, 1
  store i1 %68, i1* %5
  %69 = load i1, i1* %5
  br i1 %69, label %70, label %73
70:
  %71 = load i1, i1* %b1.1
  store i1 %71, i1* %b1.2
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  ret i8 addrspace(1)* %72
73:
  %74 = zext i1 0 to i64
  %75 = or i64 %74, 72057594037927936
  %76 = getelementptr i8, i8 addrspace(1)* null, i64 %75
  ret i8 addrspace(1)* %76
77:
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %78, i8 addrspace(1)** %b1.3
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %80 = addrspacecast i8 addrspace(1)* %79 to i8*
  %81 = ptrtoint i8* %80 to i64
  %82 = and i64 %81, 2233785415175766016
  %83 = icmp eq i64 %82, 72057594037927936
  store i1 %83, i1* %6
  %84 = load i1, i1* %6
  br i1 %84, label %85, label %100
85:
  %86 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %87 = addrspacecast i8 addrspace(1)* %86 to i8*
  %88 = ptrtoint i8* %87 to i64
  %89 = trunc i64 %88 to i1
  store i1 %89, i1* %b2.1
  %90 = load i1, i1* %b2.1
  %91 = icmp eq i1 %90, 1
  store i1 %91, i1* %7
  %92 = load i1, i1* %7
  br i1 %92, label %93, label %96
93:
  %94 = load i1, i1* %b2.1
  store i1 %94, i1* %b2.2
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  ret i8 addrspace(1)* %95
96:
  %97 = zext i1 0 to i64
  %98 = or i64 %97, 72057594037927936
  %99 = getelementptr i8, i8 addrspace(1)* null, i64 %98
  ret i8 addrspace(1)* %99
100:
  %101 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  store i8 addrspace(1)* %101, i8 addrspace(1)** %b2.3
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %103 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %102, i64 0)
  %104 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %103)
  store i64 %104, i64* %8
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %106 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %105, i64 0)
  %107 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %106)
  store i64 %107, i64* %9
  %108 = load i64, i64* %8, !dbg !45
  %109 = load i64, i64* %9, !dbg !45
  %110 = call i64 @_B_atomCmp(i64 %108, i64 %109), !dbg !45
  store i64 %110, i64* %10, !dbg !45
  %111 = load i64, i64* %10
  store i64 %111, i64* %cmp
  %112 = load i64, i64* %cmp
  %113 = icmp slt i64 %112, 0
  store i1 %113, i1* %11
  %114 = load i1, i1* %11
  br i1 %114, label %115, label %143
115:
  %116 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %117 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %116, i64 0)
  %118 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %117)
  store i64 %118, i64* %12
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %120 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %119, i64 1)
  %121 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %119, i8 addrspace(1)* %120)
  store i8 addrspace(1)* %121, i8 addrspace(1)** %13
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !46
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3, !dbg !46
  %124 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %122, i8 addrspace(1)* %123), !dbg !46
  store i8 addrspace(1)* %124, i8 addrspace(1)** %14, !dbg !46
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %126 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %125, i64 2)
  %127 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %125, i8 addrspace(1)* %126)
  store i8 addrspace(1)* %127, i8 addrspace(1)** %15
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !47
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3, !dbg !47
  %130 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %128, i8 addrspace(1)* %129), !dbg !47
  store i8 addrspace(1)* %130, i8 addrspace(1)** %16, !dbg !47
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %132 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %131, i64 3)
  %133 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %131, i8 addrspace(1)* %132)
  store i8 addrspace(1)* %133, i8 addrspace(1)** %17
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !48
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3, !dbg !48
  %136 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %134, i8 addrspace(1)* %135), !dbg !48
  store i8 addrspace(1)* %136, i8 addrspace(1)** %18, !dbg !48
  %137 = load i64, i64* %12, !dbg !49
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %14, !dbg !49
  %139 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !49
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !49
  %141 = call i8 addrspace(1)* @_B_bddCreate(i64 %137, i8 addrspace(1)* %138, i8 addrspace(1)* %139, i8 addrspace(1)* %140), !dbg !49
  store i8 addrspace(1)* %141, i8 addrspace(1)** %19, !dbg !49
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  ret i8 addrspace(1)* %142
143:
  %144 = load i64, i64* %cmp
  %145 = icmp sgt i64 %144, 0
  store i1 %145, i1* %20
  %146 = load i1, i1* %20
  br i1 %146, label %147, label %175
147:
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %149 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %148, i64 0)
  %150 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %149)
  store i64 %150, i64* %21
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %152 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %151, i64 1)
  %153 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %151, i8 addrspace(1)* %152)
  store i8 addrspace(1)* %153, i8 addrspace(1)** %22
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3, !dbg !50
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !50
  %156 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %154, i8 addrspace(1)* %155), !dbg !50
  store i8 addrspace(1)* %156, i8 addrspace(1)** %23, !dbg !50
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %158 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %157, i64 2)
  %159 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %157, i8 addrspace(1)* %158)
  store i8 addrspace(1)* %159, i8 addrspace(1)** %24
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3, !dbg !51
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %24, !dbg !51
  %162 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %160, i8 addrspace(1)* %161), !dbg !51
  store i8 addrspace(1)* %162, i8 addrspace(1)** %25, !dbg !51
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %164 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %163, i64 3)
  %165 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %163, i8 addrspace(1)* %164)
  store i8 addrspace(1)* %165, i8 addrspace(1)** %26
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3, !dbg !52
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !52
  %168 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %166, i8 addrspace(1)* %167), !dbg !52
  store i8 addrspace(1)* %168, i8 addrspace(1)** %27, !dbg !52
  %169 = load i64, i64* %21, !dbg !53
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !53
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !53
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !53
  %173 = call i8 addrspace(1)* @_B_bddCreate(i64 %169, i8 addrspace(1)* %170, i8 addrspace(1)* %171, i8 addrspace(1)* %172), !dbg !53
  store i8 addrspace(1)* %173, i8 addrspace(1)** %28, !dbg !53
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %28
  ret i8 addrspace(1)* %174
175:
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %177 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %176, i64 0)
  %178 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %177)
  store i64 %178, i64* %29
  %179 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %180 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %179, i64 1)
  %181 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %179, i8 addrspace(1)* %180)
  store i8 addrspace(1)* %181, i8 addrspace(1)** %30
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %183 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %182, i64 2)
  %184 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %182, i8 addrspace(1)* %183)
  store i8 addrspace(1)* %184, i8 addrspace(1)** %31
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %30, !dbg !54
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !54
  %187 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %185, i8 addrspace(1)* %186), !dbg !54
  store i8 addrspace(1)* %187, i8 addrspace(1)** %32, !dbg !54
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %189 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %188, i64 1)
  %190 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %188, i8 addrspace(1)* %189)
  store i8 addrspace(1)* %190, i8 addrspace(1)** %33
  %191 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %192 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %191, i64 2)
  %193 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %191, i8 addrspace(1)* %192)
  store i8 addrspace(1)* %193, i8 addrspace(1)** %34
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %33, !dbg !55
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !55
  %196 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %194, i8 addrspace(1)* %195), !dbg !55
  store i8 addrspace(1)* %196, i8 addrspace(1)** %35, !dbg !55
  %197 = load i8 addrspace(1)*, i8 addrspace(1)** %32, !dbg !56
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %35, !dbg !56
  %199 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %197, i8 addrspace(1)* %198), !dbg !56
  store i8 addrspace(1)* %199, i8 addrspace(1)** %36, !dbg !56
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %201 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %200, i64 3)
  %202 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %200, i8 addrspace(1)* %201)
  store i8 addrspace(1)* %202, i8 addrspace(1)** %37
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %204 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %203, i64 2)
  %205 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %203, i8 addrspace(1)* %204)
  store i8 addrspace(1)* %205, i8 addrspace(1)** %38
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %37, !dbg !57
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %38, !dbg !57
  %208 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %206, i8 addrspace(1)* %207), !dbg !57
  store i8 addrspace(1)* %208, i8 addrspace(1)** %39, !dbg !57
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %210 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %209, i64 3)
  %211 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %209, i8 addrspace(1)* %210)
  store i8 addrspace(1)* %211, i8 addrspace(1)** %40
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %213 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %212, i64 2)
  %214 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %212, i8 addrspace(1)* %213)
  store i8 addrspace(1)* %214, i8 addrspace(1)** %41
  %215 = load i8 addrspace(1)*, i8 addrspace(1)** %40, !dbg !58
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %41, !dbg !58
  %217 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %215, i8 addrspace(1)* %216), !dbg !58
  store i8 addrspace(1)* %217, i8 addrspace(1)** %42, !dbg !58
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %39, !dbg !59
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %42, !dbg !59
  %220 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %218, i8 addrspace(1)* %219), !dbg !59
  store i8 addrspace(1)* %220, i8 addrspace(1)** %43, !dbg !59
  %221 = load i64, i64* %29, !dbg !60
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %36, !dbg !60
  %223 = zext i1 0 to i64, !dbg !60
  %224 = or i64 %223, 72057594037927936, !dbg !60
  %225 = getelementptr i8, i8 addrspace(1)* null, i64 %224, !dbg !60
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %43, !dbg !60
  %227 = call i8 addrspace(1)* @_B_bddCreate(i64 %221, i8 addrspace(1)* %222, i8 addrspace(1)* %225, i8 addrspace(1)* %226), !dbg !60
  store i8 addrspace(1)* %227, i8 addrspace(1)** %44, !dbg !60
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  ret i8 addrspace(1)* %228
229:
  %230 = call i8 addrspace(1)* @_bal_panic_construct(i64 16388), !dbg !44
  call void @_bal_panic(i8 addrspace(1)* %230)
  unreachable
}
define internal i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %0, i8 addrspace(1)* %1) !dbg !13 {
  %b1 = alloca i8 addrspace(1)*
  %b2 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %4 = alloca i1
  %b2.1 = alloca i1
  %5 = alloca i1
  %b2.2 = alloca i1
  %b2.3 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %b1.1 = alloca i1
  %7 = alloca i1
  %b1.2 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %b1.3 = alloca i8 addrspace(1)*
  %cmp = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i1
  %13 = alloca i64
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i8 addrspace(1)*
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i1
  %24 = alloca i64
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i8 addrspace(1)*
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i64
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i8 addrspace(1)*
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i8
  %46 = load i8*, i8** @_bal_stack_guard
  %47 = icmp ult i8* %45, %46
  br i1 %47, label %232, label %48
48:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %1, i8 addrspace(1)** %b2
  %49 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %51 = call i1 @_bal_exact_eq(i8 addrspace(1)* %49, i8 addrspace(1)* %50)
  store i1 %51, i1* %3
  %52 = load i1, i1* %3
  br i1 %52, label %53, label %57
53:
  %54 = zext i1 0 to i64
  %55 = or i64 %54, 72057594037927936
  %56 = getelementptr i8, i8 addrspace(1)* null, i64 %55
  ret i8 addrspace(1)* %56
57:
  %58 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %59 = addrspacecast i8 addrspace(1)* %58 to i8*
  %60 = ptrtoint i8* %59 to i64
  %61 = and i64 %60, 2233785415175766016
  %62 = icmp eq i64 %61, 72057594037927936
  store i1 %62, i1* %4
  %63 = load i1, i1* %4
  br i1 %63, label %64, label %79
64:
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %66 = addrspacecast i8 addrspace(1)* %65 to i8*
  %67 = ptrtoint i8* %66 to i64
  %68 = trunc i64 %67 to i1
  store i1 %68, i1* %b2.1
  %69 = load i1, i1* %b2.1
  %70 = icmp eq i1 %69, 1
  store i1 %70, i1* %5
  %71 = load i1, i1* %5
  br i1 %71, label %72, label %77
72:
  %73 = load i1, i1* %b2.1
  store i1 %73, i1* %b2.2
  %74 = zext i1 0 to i64
  %75 = or i64 %74, 72057594037927936
  %76 = getelementptr i8, i8 addrspace(1)* null, i64 %75
  ret i8 addrspace(1)* %76
77:
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %78
79:
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  store i8 addrspace(1)* %80, i8 addrspace(1)** %b2.3
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %82 = addrspacecast i8 addrspace(1)* %81 to i8*
  %83 = ptrtoint i8* %82 to i64
  %84 = and i64 %83, 2233785415175766016
  %85 = icmp eq i64 %84, 72057594037927936
  store i1 %85, i1* %6
  %86 = load i1, i1* %6
  br i1 %86, label %87, label %104
87:
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %89 = addrspacecast i8 addrspace(1)* %88 to i8*
  %90 = ptrtoint i8* %89 to i64
  %91 = trunc i64 %90 to i1
  store i1 %91, i1* %b1.1
  %92 = load i1, i1* %b1.1
  %93 = icmp eq i1 %92, 1
  store i1 %93, i1* %7
  %94 = load i1, i1* %7
  br i1 %94, label %95, label %100
95:
  %96 = load i1, i1* %b1.1
  store i1 %96, i1* %b1.2
  %97 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3, !dbg !62
  %98 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %97), !dbg !62
  store i8 addrspace(1)* %98, i8 addrspace(1)** %8, !dbg !62
  %99 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  ret i8 addrspace(1)* %99
100:
  %101 = zext i1 0 to i64
  %102 = or i64 %101, 72057594037927936
  %103 = getelementptr i8, i8 addrspace(1)* null, i64 %102
  ret i8 addrspace(1)* %103
104:
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %105, i8 addrspace(1)** %b1.3
  %106 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %107 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %106, i64 0)
  %108 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %107)
  store i64 %108, i64* %9
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %110 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %109, i64 0)
  %111 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %110)
  store i64 %111, i64* %10
  %112 = load i64, i64* %9, !dbg !63
  %113 = load i64, i64* %10, !dbg !63
  %114 = call i64 @_B_atomCmp(i64 %112, i64 %113), !dbg !63
  store i64 %114, i64* %11, !dbg !63
  %115 = load i64, i64* %11
  store i64 %115, i64* %cmp
  %116 = load i64, i64* %cmp
  %117 = icmp slt i64 %116, 0
  store i1 %117, i1* %12
  %118 = load i1, i1* %12
  br i1 %118, label %119, label %155
119:
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %121 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %120, i64 0)
  %122 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %121)
  store i64 %122, i64* %13
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %124 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %123, i64 1)
  %125 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %123, i8 addrspace(1)* %124)
  store i8 addrspace(1)* %125, i8 addrspace(1)** %14
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %127 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %126, i64 2)
  %128 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %126, i8 addrspace(1)* %127)
  store i8 addrspace(1)* %128, i8 addrspace(1)** %15
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %14, !dbg !64
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !64
  %131 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %129, i8 addrspace(1)* %130), !dbg !64
  store i8 addrspace(1)* %131, i8 addrspace(1)** %16, !dbg !64
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !65
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3, !dbg !65
  %134 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %132, i8 addrspace(1)* %133), !dbg !65
  store i8 addrspace(1)* %134, i8 addrspace(1)** %17, !dbg !65
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %136 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %135, i64 3)
  %137 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %135, i8 addrspace(1)* %136)
  store i8 addrspace(1)* %137, i8 addrspace(1)** %18
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %139 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %138, i64 2)
  %140 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %138, i8 addrspace(1)* %139)
  store i8 addrspace(1)* %140, i8 addrspace(1)** %19
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !66
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !66
  %143 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %141, i8 addrspace(1)* %142), !dbg !66
  store i8 addrspace(1)* %143, i8 addrspace(1)** %20, !dbg !66
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !67
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3, !dbg !67
  %146 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %144, i8 addrspace(1)* %145), !dbg !67
  store i8 addrspace(1)* %146, i8 addrspace(1)** %21, !dbg !67
  %147 = load i64, i64* %13, !dbg !68
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !68
  %149 = zext i1 0 to i64, !dbg !68
  %150 = or i64 %149, 72057594037927936, !dbg !68
  %151 = getelementptr i8, i8 addrspace(1)* null, i64 %150, !dbg !68
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !68
  %153 = call i8 addrspace(1)* @_B_bddCreate(i64 %147, i8 addrspace(1)* %148, i8 addrspace(1)* %151, i8 addrspace(1)* %152), !dbg !68
  store i8 addrspace(1)* %153, i8 addrspace(1)** %22, !dbg !68
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  ret i8 addrspace(1)* %154
155:
  %156 = load i64, i64* %cmp
  %157 = icmp sgt i64 %156, 0
  store i1 %157, i1* %23
  %158 = load i1, i1* %23
  br i1 %158, label %159, label %195
159:
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %161 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %160, i64 0)
  %162 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %161)
  store i64 %162, i64* %24
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %164 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %163, i64 1)
  %165 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %163, i8 addrspace(1)* %164)
  store i8 addrspace(1)* %165, i8 addrspace(1)** %25
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %167 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %166, i64 2)
  %168 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %166, i8 addrspace(1)* %167)
  store i8 addrspace(1)* %168, i8 addrspace(1)** %26
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !69
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !69
  %171 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %169, i8 addrspace(1)* %170), !dbg !69
  store i8 addrspace(1)* %171, i8 addrspace(1)** %27, !dbg !69
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3, !dbg !70
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !70
  %174 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %172, i8 addrspace(1)* %173), !dbg !70
  store i8 addrspace(1)* %174, i8 addrspace(1)** %28, !dbg !70
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %176 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %175, i64 3)
  %177 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %175, i8 addrspace(1)* %176)
  store i8 addrspace(1)* %177, i8 addrspace(1)** %29
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %179 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %178, i64 2)
  %180 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %178, i8 addrspace(1)* %179)
  store i8 addrspace(1)* %180, i8 addrspace(1)** %30
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !71
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %30, !dbg !71
  %183 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %181, i8 addrspace(1)* %182), !dbg !71
  store i8 addrspace(1)* %183, i8 addrspace(1)** %31, !dbg !71
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3, !dbg !72
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !72
  %186 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %184, i8 addrspace(1)* %185), !dbg !72
  store i8 addrspace(1)* %186, i8 addrspace(1)** %32, !dbg !72
  %187 = load i64, i64* %24, !dbg !73
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %28, !dbg !73
  %189 = zext i1 0 to i64, !dbg !73
  %190 = or i64 %189, 72057594037927936, !dbg !73
  %191 = getelementptr i8, i8 addrspace(1)* null, i64 %190, !dbg !73
  %192 = load i8 addrspace(1)*, i8 addrspace(1)** %32, !dbg !73
  %193 = call i8 addrspace(1)* @_B_bddCreate(i64 %187, i8 addrspace(1)* %188, i8 addrspace(1)* %191, i8 addrspace(1)* %192), !dbg !73
  store i8 addrspace(1)* %193, i8 addrspace(1)** %33, !dbg !73
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  ret i8 addrspace(1)* %194
195:
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %197 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %196, i64 0)
  %198 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %197)
  store i64 %198, i64* %34
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %200 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %199, i64 1)
  %201 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %199, i8 addrspace(1)* %200)
  store i8 addrspace(1)* %201, i8 addrspace(1)** %35
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %203 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %202, i64 1)
  %204 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %202, i8 addrspace(1)* %203)
  store i8 addrspace(1)* %204, i8 addrspace(1)** %36
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %35, !dbg !74
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %36, !dbg !74
  %207 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %205, i8 addrspace(1)* %206), !dbg !74
  store i8 addrspace(1)* %207, i8 addrspace(1)** %37, !dbg !74
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %209 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %208, i64 2)
  %210 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %208, i8 addrspace(1)* %209)
  store i8 addrspace(1)* %210, i8 addrspace(1)** %38
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %212 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %211, i64 2)
  %213 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %211, i8 addrspace(1)* %212)
  store i8 addrspace(1)* %213, i8 addrspace(1)** %39
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %38, !dbg !75
  %215 = load i8 addrspace(1)*, i8 addrspace(1)** %39, !dbg !75
  %216 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %214, i8 addrspace(1)* %215), !dbg !75
  store i8 addrspace(1)* %216, i8 addrspace(1)** %40, !dbg !75
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.3
  %218 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %217, i64 3)
  %219 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %217, i8 addrspace(1)* %218)
  store i8 addrspace(1)* %219, i8 addrspace(1)** %41
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.3
  %221 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %220, i64 3)
  %222 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %220, i8 addrspace(1)* %221)
  store i8 addrspace(1)* %222, i8 addrspace(1)** %42
  %223 = load i8 addrspace(1)*, i8 addrspace(1)** %41, !dbg !76
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %42, !dbg !76
  %225 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %223, i8 addrspace(1)* %224), !dbg !76
  store i8 addrspace(1)* %225, i8 addrspace(1)** %43, !dbg !76
  %226 = load i64, i64* %34, !dbg !77
  %227 = load i8 addrspace(1)*, i8 addrspace(1)** %37, !dbg !77
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %40, !dbg !77
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %43, !dbg !77
  %230 = call i8 addrspace(1)* @_B_bddCreate(i64 %226, i8 addrspace(1)* %227, i8 addrspace(1)* %228, i8 addrspace(1)* %229), !dbg !77
  store i8 addrspace(1)* %230, i8 addrspace(1)** %44, !dbg !77
  %231 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  ret i8 addrspace(1)* %231
232:
  %233 = call i8 addrspace(1)* @_bal_panic_construct(i64 26116), !dbg !61
  call void @_bal_panic(i8 addrspace(1)* %233)
  unreachable
}
define internal i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %0) !dbg !15 {
  %b = alloca i8 addrspace(1)*
  %2 = alloca i1
  %b.1 = alloca i1
  %3 = alloca i1
  %b.2 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i1
  %15 = alloca i8 addrspace(1)*
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i1
  %25 = alloca i8 addrspace(1)*
  %26 = alloca i64
  %27 = alloca i8 addrspace(1)*
  %28 = alloca i8 addrspace(1)*
  %29 = alloca i8 addrspace(1)*
  %30 = alloca i8 addrspace(1)*
  %31 = alloca i8 addrspace(1)*
  %32 = alloca i8 addrspace(1)*
  %33 = alloca i8 addrspace(1)*
  %34 = alloca i8 addrspace(1)*
  %35 = alloca i8 addrspace(1)*
  %36 = alloca i64
  %37 = alloca i8 addrspace(1)*
  %38 = alloca i8 addrspace(1)*
  %39 = alloca i8 addrspace(1)*
  %40 = alloca i8 addrspace(1)*
  %41 = alloca i8 addrspace(1)*
  %42 = alloca i8 addrspace(1)*
  %43 = alloca i8 addrspace(1)*
  %44 = alloca i8 addrspace(1)*
  %45 = alloca i8 addrspace(1)*
  %46 = alloca i8
  %47 = load i8*, i8** @_bal_stack_guard
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %219, label %49
49:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %b
  %50 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %51 = addrspacecast i8 addrspace(1)* %50 to i8*
  %52 = ptrtoint i8* %51 to i64
  %53 = and i64 %52, 2233785415175766016
  %54 = icmp eq i64 %53, 72057594037927936
  store i1 %54, i1* %2
  %55 = load i1, i1* %2
  br i1 %55, label %56, label %67
56:
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  %58 = addrspacecast i8 addrspace(1)* %57 to i8*
  %59 = ptrtoint i8* %58 to i64
  %60 = trunc i64 %59 to i1
  store i1 %60, i1* %b.1
  %61 = load i1, i1* %b.1
  %62 = xor i1 1, %61
  store i1 %62, i1* %3
  %63 = load i1, i1* %3
  %64 = zext i1 %63 to i64
  %65 = or i64 %64, 72057594037927936
  %66 = getelementptr i8, i8 addrspace(1)* null, i64 %65
  ret i8 addrspace(1)* %66
67:
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %b
  store i8 addrspace(1)* %68, i8 addrspace(1)** %b.2
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %70 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %69, i64 3)
  %71 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %69, i8 addrspace(1)* %70)
  store i8 addrspace(1)* %71, i8 addrspace(1)** %5
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %5
  %73 = zext i1 0 to i64
  %74 = or i64 %73, 72057594037927936
  %75 = getelementptr i8, i8 addrspace(1)* null, i64 %74
  %76 = icmp eq i8 addrspace(1)* %72, %75
  store i1 %76, i1* %4
  %77 = load i1, i1* %4
  br i1 %77, label %78, label %106
78:
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %80 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %79, i64 0)
  %81 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %80)
  store i64 %81, i64* %6
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %83 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %82, i64 1)
  %84 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %82, i8 addrspace(1)* %83)
  store i8 addrspace(1)* %84, i8 addrspace(1)** %7
  %85 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %86 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %85, i64 2)
  %87 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %85, i8 addrspace(1)* %86)
  store i8 addrspace(1)* %87, i8 addrspace(1)** %8
  %88 = load i8 addrspace(1)*, i8 addrspace(1)** %7, !dbg !79
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %8, !dbg !79
  %90 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %88, i8 addrspace(1)* %89), !dbg !79
  store i8 addrspace(1)* %90, i8 addrspace(1)** %9, !dbg !79
  %91 = load i8 addrspace(1)*, i8 addrspace(1)** %9, !dbg !80
  %92 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %91), !dbg !80
  store i8 addrspace(1)* %92, i8 addrspace(1)** %10, !dbg !80
  %93 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %94 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %93, i64 2)
  %95 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %93, i8 addrspace(1)* %94)
  store i8 addrspace(1)* %95, i8 addrspace(1)** %11
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %11, !dbg !81
  %97 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %96), !dbg !81
  store i8 addrspace(1)* %97, i8 addrspace(1)** %12, !dbg !81
  %98 = load i64, i64* %6, !dbg !82
  %99 = zext i1 0 to i64, !dbg !82
  %100 = or i64 %99, 72057594037927936, !dbg !82
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100, !dbg !82
  %102 = load i8 addrspace(1)*, i8 addrspace(1)** %10, !dbg !82
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %12, !dbg !82
  %104 = call i8 addrspace(1)* @_B_bddCreate(i64 %98, i8 addrspace(1)* %101, i8 addrspace(1)* %102, i8 addrspace(1)* %103), !dbg !82
  store i8 addrspace(1)* %104, i8 addrspace(1)** %13, !dbg !82
  %105 = load i8 addrspace(1)*, i8 addrspace(1)** %13
  ret i8 addrspace(1)* %105
106:
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %108 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %107, i64 1)
  %109 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %107, i8 addrspace(1)* %108)
  store i8 addrspace(1)* %109, i8 addrspace(1)** %15
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %15
  %111 = zext i1 0 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  %114 = icmp eq i8 addrspace(1)* %110, %113
  store i1 %114, i1* %14
  %115 = load i1, i1* %14
  br i1 %115, label %116, label %144
116:
  %117 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %118 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %117, i64 0)
  %119 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %118)
  store i64 %119, i64* %16
  %120 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %121 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %120, i64 2)
  %122 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %120, i8 addrspace(1)* %121)
  store i8 addrspace(1)* %122, i8 addrspace(1)** %17
  %123 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !83
  %124 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %123), !dbg !83
  store i8 addrspace(1)* %124, i8 addrspace(1)** %18, !dbg !83
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %126 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %125, i64 3)
  %127 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %125, i8 addrspace(1)* %126)
  store i8 addrspace(1)* %127, i8 addrspace(1)** %19
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %129 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %128, i64 2)
  %130 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %128, i8 addrspace(1)* %129)
  store i8 addrspace(1)* %130, i8 addrspace(1)** %20
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !84
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !84
  %133 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %131, i8 addrspace(1)* %132), !dbg !84
  store i8 addrspace(1)* %133, i8 addrspace(1)** %21, !dbg !84
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !85
  %135 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %134), !dbg !85
  store i8 addrspace(1)* %135, i8 addrspace(1)** %22, !dbg !85
  %136 = load i64, i64* %16, !dbg !86
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !86
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !86
  %139 = zext i1 0 to i64, !dbg !86
  %140 = or i64 %139, 72057594037927936, !dbg !86
  %141 = getelementptr i8, i8 addrspace(1)* null, i64 %140, !dbg !86
  %142 = call i8 addrspace(1)* @_B_bddCreate(i64 %136, i8 addrspace(1)* %137, i8 addrspace(1)* %138, i8 addrspace(1)* %141), !dbg !86
  store i8 addrspace(1)* %142, i8 addrspace(1)** %23, !dbg !86
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %23
  ret i8 addrspace(1)* %143
144:
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %146 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %145, i64 2)
  %147 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %145, i8 addrspace(1)* %146)
  store i8 addrspace(1)* %147, i8 addrspace(1)** %25
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %25
  %149 = zext i1 0 to i64
  %150 = or i64 %149, 72057594037927936
  %151 = getelementptr i8, i8 addrspace(1)* null, i64 %150
  %152 = icmp eq i8 addrspace(1)* %148, %151
  store i1 %152, i1* %24
  %153 = load i1, i1* %24
  br i1 %153, label %154, label %185
154:
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %156 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %155, i64 0)
  %157 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %156)
  store i64 %157, i64* %26
  %158 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %159 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %158, i64 1)
  %160 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %158, i8 addrspace(1)* %159)
  store i8 addrspace(1)* %160, i8 addrspace(1)** %27
  %161 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !87
  %162 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %161), !dbg !87
  store i8 addrspace(1)* %162, i8 addrspace(1)** %28, !dbg !87
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %164 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %163, i64 1)
  %165 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %163, i8 addrspace(1)* %164)
  store i8 addrspace(1)* %165, i8 addrspace(1)** %29
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %167 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %166, i64 3)
  %168 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %166, i8 addrspace(1)* %167)
  store i8 addrspace(1)* %168, i8 addrspace(1)** %30
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !88
  %170 = load i8 addrspace(1)*, i8 addrspace(1)** %30, !dbg !88
  %171 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %169, i8 addrspace(1)* %170), !dbg !88
  store i8 addrspace(1)* %171, i8 addrspace(1)** %31, !dbg !88
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !89
  %173 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %172), !dbg !89
  store i8 addrspace(1)* %173, i8 addrspace(1)** %32, !dbg !89
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %175 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %174, i64 3)
  %176 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %174, i8 addrspace(1)* %175)
  store i8 addrspace(1)* %176, i8 addrspace(1)** %33
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %33, !dbg !90
  %178 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %177), !dbg !90
  store i8 addrspace(1)* %178, i8 addrspace(1)** %34, !dbg !90
  %179 = load i64, i64* %26, !dbg !91
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %28, !dbg !91
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %32, !dbg !91
  %182 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !91
  %183 = call i8 addrspace(1)* @_B_bddCreate(i64 %179, i8 addrspace(1)* %180, i8 addrspace(1)* %181, i8 addrspace(1)* %182), !dbg !91
  store i8 addrspace(1)* %183, i8 addrspace(1)** %35, !dbg !91
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %35
  ret i8 addrspace(1)* %184
185:
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %187 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %186, i64 0)
  %188 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %187)
  store i64 %188, i64* %36
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %190 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %189, i64 1)
  %191 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %189, i8 addrspace(1)* %190)
  store i8 addrspace(1)* %191, i8 addrspace(1)** %37
  %192 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %193 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %192, i64 2)
  %194 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %192, i8 addrspace(1)* %193)
  store i8 addrspace(1)* %194, i8 addrspace(1)** %38
  %195 = load i8 addrspace(1)*, i8 addrspace(1)** %37, !dbg !92
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %38, !dbg !92
  %197 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %195, i8 addrspace(1)* %196), !dbg !92
  store i8 addrspace(1)* %197, i8 addrspace(1)** %39, !dbg !92
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %39, !dbg !93
  %199 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %198), !dbg !93
  store i8 addrspace(1)* %199, i8 addrspace(1)** %40, !dbg !93
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %201 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %200, i64 3)
  %202 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %200, i8 addrspace(1)* %201)
  store i8 addrspace(1)* %202, i8 addrspace(1)** %41
  %203 = load i8 addrspace(1)*, i8 addrspace(1)** %b.2
  %204 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %203, i64 2)
  %205 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %203, i8 addrspace(1)* %204)
  store i8 addrspace(1)* %205, i8 addrspace(1)** %42
  %206 = load i8 addrspace(1)*, i8 addrspace(1)** %41, !dbg !94
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %42, !dbg !94
  %208 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %206, i8 addrspace(1)* %207), !dbg !94
  store i8 addrspace(1)* %208, i8 addrspace(1)** %43, !dbg !94
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %43, !dbg !95
  %210 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %209), !dbg !95
  store i8 addrspace(1)* %210, i8 addrspace(1)** %44, !dbg !95
  %211 = load i64, i64* %36, !dbg !96
  %212 = load i8 addrspace(1)*, i8 addrspace(1)** %40, !dbg !96
  %213 = zext i1 0 to i64, !dbg !96
  %214 = or i64 %213, 72057594037927936, !dbg !96
  %215 = getelementptr i8, i8 addrspace(1)* null, i64 %214, !dbg !96
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %44, !dbg !96
  %217 = call i8 addrspace(1)* @_B_bddCreate(i64 %211, i8 addrspace(1)* %212, i8 addrspace(1)* %215, i8 addrspace(1)* %216), !dbg !96
  store i8 addrspace(1)* %217, i8 addrspace(1)** %45, !dbg !96
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %45
  ret i8 addrspace(1)* %218
219:
  %220 = call i8 addrspace(1)* @_bal_panic_construct(i64 36868), !dbg !78
  call void @_bal_panic(i8 addrspace(1)* %220)
  unreachable
}
define internal i8 addrspace(1)* @_B_bddCreate(i64 %0, i8 addrspace(1)* %1, i8 addrspace(1)* %2, i8 addrspace(1)* %3) !dbg !17 {
  %atom = alloca i64
  %left = alloca i8 addrspace(1)*
  %middle = alloca i8 addrspace(1)*
  %right = alloca i8 addrspace(1)*
  %5 = alloca i1
  %middle.1 = alloca i1
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %45, label %12
12:
  store i64 %0, i64* %atom
  store i8 addrspace(1)* %1, i8 addrspace(1)** %left
  store i8 addrspace(1)* %2, i8 addrspace(1)** %middle
  store i8 addrspace(1)* %3, i8 addrspace(1)** %right
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %middle
  %14 = zext i1 1 to i64
  %15 = or i64 %14, 72057594037927936
  %16 = getelementptr i8, i8 addrspace(1)* null, i64 %15
  %17 = icmp eq i8 addrspace(1)* %13, %16
  store i1 %17, i1* %5
  %18 = load i1, i1* %5
  br i1 %18, label %19, label %27
19:
  %20 = load i8 addrspace(1)*, i8 addrspace(1)** %middle
  %21 = addrspacecast i8 addrspace(1)* %20 to i8*
  %22 = ptrtoint i8* %21 to i64
  %23 = trunc i64 %22 to i1
  store i1 %23, i1* %middle.1
  %24 = zext i1 1 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  ret i8 addrspace(1)* %26
27:
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %left
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %right
  %30 = call i1 @_bal_eq(i8 addrspace(1)* %28, i8 addrspace(1)* %29)
  store i1 %30, i1* %6
  %31 = load i1, i1* %6
  br i1 %31, label %32, label %37
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %left, !dbg !98
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %middle, !dbg !98
  %35 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %33, i8 addrspace(1)* %34), !dbg !98
  store i8 addrspace(1)* %35, i8 addrspace(1)** %7, !dbg !98
  %36 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  ret i8 addrspace(1)* %36
37:
  %38 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 4)
  %39 = load i64, i64* %atom
  %40 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %39)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541171954785), i8 addrspace(1)* %40)
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %left
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541288801644), i8 addrspace(1)* %41)
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %middle
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098306584869366125), i8 addrspace(1)* %42)
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %right
  call void @_bal_mapping_init_member(i8 addrspace(1)* %38, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944087087474), i8 addrspace(1)* %43)
  store i8 addrspace(1)* %38, i8 addrspace(1)** %8
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  ret i8 addrspace(1)* %44
45:
  %46 = call i8 addrspace(1)* @_bal_panic_construct(i64 45060), !dbg !97
  call void @_bal_panic(i8 addrspace(1)* %46)
  unreachable
}
define internal i64 @_B_atomCmp(i64 %0, i64 %1) !dbg !19 {
  %a1 = alloca i64
  %a2 = alloca i64
  %3 = alloca i64
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8
  %6 = load i8*, i8** @_bal_stack_guard
  %7 = icmp ult i8* %5, %6
  br i1 %7, label %15, label %8
8:
  store i64 %0, i64* %a1
  store i64 %1, i64* %a2
  %9 = load i64, i64* %a1
  %10 = load i64, i64* %a2
  %11 = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %12 = extractvalue {i64, i1} %11, 1
  br i1 %12, label %20, label %17
13:
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  call void @_bal_panic(i8 addrspace(1)* %14)
  unreachable
15:
  %16 = call i8 addrspace(1)* @_bal_panic_construct(i64 47620), !dbg !99
  call void @_bal_panic(i8 addrspace(1)* %16)
  unreachable
17:
  %18 = extractvalue {i64, i1} %11, 0
  store i64 %18, i64* %3
  %19 = load i64, i64* %3
  ret i64 %19
20:
  %21 = call i8 addrspace(1)* @_bal_panic_construct(i64 47873), !dbg !99
  store i8 addrspace(1)* %21, i8 addrspace(1)** %4
  br label %13
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/11-nested/bdd1-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 3, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"bddAtom", linkageName:"_B_bddAtom", scope: !1, file: !1, line: 21, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = distinct !DISubprogram(name:"bddUnion", linkageName:"_B_bddUnion", scope: !1, file: !1, line: 25, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !10)
!10 = !{}
!11 = distinct !DISubprogram(name:"bddIntersect", linkageName:"_B_bddIntersect", scope: !1, file: !1, line: 64, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !12)
!12 = !{}
!13 = distinct !DISubprogram(name:"bddDiff", linkageName:"_B_bddDiff", scope: !1, file: !1, line: 102, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !14)
!14 = !{}
!15 = distinct !DISubprogram(name:"bddComplement", linkageName:"_B_bddComplement", scope: !1, file: !1, line: 144, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !16)
!16 = !{}
!17 = distinct !DISubprogram(name:"bddCreate", linkageName:"_B_bddCreate", scope: !1, file: !1, line: 176, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !18)
!18 = !{}
!19 = distinct !DISubprogram(name:"atomCmp", linkageName:"_B_atomCmp", scope: !1, file: !1, line: 186, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !20)
!20 = !{}
!21 = !DILocation(line: 0, column: 0, scope: !5)
!22 = !DILocation(line: 4, column: 22, scope: !5)
!23 = !DILocation(line: 4, column: 34, scope: !5)
!24 = !DILocation(line: 4, column: 13, scope: !5)
!25 = !DILocation(line: 5, column: 22, scope: !5)
!26 = !DILocation(line: 5, column: 34, scope: !5)
!27 = !DILocation(line: 5, column: 13, scope: !5)
!28 = !DILocation(line: 6, column: 4, scope: !5)
!29 = !DILocation(line: 7, column: 26, scope: !5)
!30 = !DILocation(line: 7, column: 38, scope: !5)
!31 = !DILocation(line: 7, column: 13, scope: !5)
!32 = !DILocation(line: 8, column: 4, scope: !5)
!33 = !DILocation(line: 0, column: 0, scope: !7)
!34 = !DILocation(line: 0, column: 0, scope: !9)
!35 = !DILocation(line: 42, column: 18, scope: !9)
!36 = !DILocation(line: 46, column: 26, scope: !9)
!37 = !DILocation(line: 44, column: 19, scope: !9)
!38 = !DILocation(line: 52, column: 27, scope: !9)
!39 = !DILocation(line: 50, column: 20, scope: !9)
!40 = !DILocation(line: 57, column: 26, scope: !9)
!41 = !DILocation(line: 58, column: 26, scope: !9)
!42 = !DILocation(line: 59, column: 26, scope: !9)
!43 = !DILocation(line: 56, column: 19, scope: !9)
!44 = !DILocation(line: 0, column: 0, scope: !11)
!45 = !DILocation(line: 81, column: 18, scope: !11)
!46 = !DILocation(line: 84, column: 26, scope: !11)
!47 = !DILocation(line: 85, column: 26, scope: !11)
!48 = !DILocation(line: 86, column: 26, scope: !11)
!49 = !DILocation(line: 83, column: 19, scope: !11)
!50 = !DILocation(line: 90, column: 26, scope: !11)
!51 = !DILocation(line: 91, column: 26, scope: !11)
!52 = !DILocation(line: 92, column: 26, scope: !11)
!53 = !DILocation(line: 89, column: 19, scope: !11)
!54 = !DILocation(line: 96, column: 39, scope: !11)
!55 = !DILocation(line: 96, column: 69, scope: !11)
!56 = !DILocation(line: 96, column: 26, scope: !11)
!57 = !DILocation(line: 98, column: 39, scope: !11)
!58 = !DILocation(line: 98, column: 70, scope: !11)
!59 = !DILocation(line: 98, column: 26, scope: !11)
!60 = !DILocation(line: 95, column: 19, scope: !11)
!61 = !DILocation(line: 0, column: 0, scope: !13)
!62 = !DILocation(line: 114, column: 19, scope: !13)
!63 = !DILocation(line: 119, column: 18, scope: !13)
!64 = !DILocation(line: 122, column: 34, scope: !13)
!65 = !DILocation(line: 122, column: 26, scope: !13)
!66 = !DILocation(line: 124, column: 34, scope: !13)
!67 = !DILocation(line: 124, column: 26, scope: !13)
!68 = !DILocation(line: 121, column: 19, scope: !13)
!69 = !DILocation(line: 128, column: 38, scope: !13)
!70 = !DILocation(line: 128, column: 26, scope: !13)
!71 = !DILocation(line: 130, column: 38, scope: !13)
!72 = !DILocation(line: 130, column: 26, scope: !13)
!73 = !DILocation(line: 127, column: 19, scope: !13)
!74 = !DILocation(line: 137, column: 26, scope: !13)
!75 = !DILocation(line: 138, column: 26, scope: !13)
!76 = !DILocation(line: 139, column: 26, scope: !13)
!77 = !DILocation(line: 136, column: 19, scope: !13)
!78 = !DILocation(line: 0, column: 0, scope: !15)
!79 = !DILocation(line: 152, column: 40, scope: !15)
!80 = !DILocation(line: 152, column: 26, scope: !15)
!81 = !DILocation(line: 153, column: 26, scope: !15)
!82 = !DILocation(line: 150, column: 19, scope: !15)
!83 = !DILocation(line: 157, column: 26, scope: !15)
!84 = !DILocation(line: 158, column: 40, scope: !15)
!85 = !DILocation(line: 158, column: 26, scope: !15)
!86 = !DILocation(line: 156, column: 19, scope: !15)
!87 = !DILocation(line: 163, column: 27, scope: !15)
!88 = !DILocation(line: 164, column: 41, scope: !15)
!89 = !DILocation(line: 164, column: 27, scope: !15)
!90 = !DILocation(line: 165, column: 27, scope: !15)
!91 = !DILocation(line: 162, column: 20, scope: !15)
!92 = !DILocation(line: 169, column: 40, scope: !15)
!93 = !DILocation(line: 169, column: 26, scope: !15)
!94 = !DILocation(line: 171, column: 40, scope: !15)
!95 = !DILocation(line: 171, column: 26, scope: !15)
!96 = !DILocation(line: 168, column: 19, scope: !15)
!97 = !DILocation(line: 0, column: 0, scope: !17)
!98 = !DILocation(line: 181, column: 15, scope: !17)
!99 = !DILocation(line: 0, column: 0, scope: !19)
