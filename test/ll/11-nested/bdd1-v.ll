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
  %b1.3 = alloca i1
  %b1.4 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %b2.1 = alloca i1
  %7 = alloca i1
  %b2.2 = alloca i1
  %b2.3 = alloca i1
  %b2.4 = alloca i8 addrspace(1)*
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
  br i1 %38, label %193, label %39
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
  br i1 %52, label %53, label %69
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
  %67 = load i1, i1* %b1.1
  store i1 %67, i1* %b1.3
  %68 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  ret i8 addrspace(1)* %68
69:
  %70 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %70, i8 addrspace(1)** %b1.4
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %72 = addrspacecast i8 addrspace(1)* %71 to i8*
  %73 = ptrtoint i8* %72 to i64
  %74 = and i64 %73, 2233785415175766016
  %75 = icmp eq i64 %74, 72057594037927936
  store i1 %75, i1* %6
  %76 = load i1, i1* %6
  br i1 %76, label %77, label %93
77:
  %78 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %79 = addrspacecast i8 addrspace(1)* %78 to i8*
  %80 = ptrtoint i8* %79 to i64
  %81 = trunc i64 %80 to i1
  store i1 %81, i1* %b2.1
  %82 = load i1, i1* %b2.1
  %83 = icmp eq i1 %82, 1
  store i1 %83, i1* %7
  %84 = load i1, i1* %7
  br i1 %84, label %85, label %90
85:
  %86 = load i1, i1* %b2.1
  store i1 %86, i1* %b2.2
  %87 = zext i1 1 to i64
  %88 = or i64 %87, 72057594037927936
  %89 = getelementptr i8, i8 addrspace(1)* null, i64 %88
  ret i8 addrspace(1)* %89
90:
  %91 = load i1, i1* %b2.1
  store i1 %91, i1* %b2.3
  %92 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  ret i8 addrspace(1)* %92
93:
  %94 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  store i8 addrspace(1)* %94, i8 addrspace(1)** %b2.4
  %95 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %96 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %95, i64 0)
  %97 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %96)
  store i64 %97, i64* %8
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %99 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %98, i64 0)
  %100 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %99)
  store i64 %100, i64* %9
  %101 = load i64, i64* %8, !dbg !35
  %102 = load i64, i64* %9, !dbg !35
  %103 = call i64 @_B_atomCmp(i64 %101, i64 %102), !dbg !35
  store i64 %103, i64* %10, !dbg !35
  %104 = load i64, i64* %10
  store i64 %104, i64* %cmp
  %105 = load i64, i64* %cmp
  %106 = icmp slt i64 %105, 0
  store i1 %106, i1* %11
  %107 = load i1, i1* %11
  br i1 %107, label %108, label %130
108:
  %109 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %110 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %109, i64 0)
  %111 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %110)
  store i64 %111, i64* %12
  %112 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %113 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %112, i64 1)
  %114 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %112, i8 addrspace(1)* %113)
  store i8 addrspace(1)* %114, i8 addrspace(1)** %13
  %115 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %116 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %115, i64 2)
  %117 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %115, i8 addrspace(1)* %116)
  store i8 addrspace(1)* %117, i8 addrspace(1)** %14
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %14, !dbg !36
  %119 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4, !dbg !36
  %120 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %118, i8 addrspace(1)* %119), !dbg !36
  store i8 addrspace(1)* %120, i8 addrspace(1)** %15, !dbg !36
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %122 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %121, i64 3)
  %123 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %121, i8 addrspace(1)* %122)
  store i8 addrspace(1)* %123, i8 addrspace(1)** %16
  %124 = load i64, i64* %12, !dbg !37
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !37
  %126 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !37
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !37
  %128 = call i8 addrspace(1)* @_B_bddCreate(i64 %124, i8 addrspace(1)* %125, i8 addrspace(1)* %126, i8 addrspace(1)* %127), !dbg !37
  store i8 addrspace(1)* %128, i8 addrspace(1)** %17, !dbg !37
  %129 = load i8 addrspace(1)*, i8 addrspace(1)** %17
  ret i8 addrspace(1)* %129
130:
  %131 = load i64, i64* %cmp
  %132 = icmp sgt i64 %131, 0
  store i1 %132, i1* %18
  %133 = load i1, i1* %18
  br i1 %133, label %134, label %156
134:
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %136 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %135, i64 0)
  %137 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %136)
  store i64 %137, i64* %19
  %138 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %139 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %138, i64 1)
  %140 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %138, i8 addrspace(1)* %139)
  store i8 addrspace(1)* %140, i8 addrspace(1)** %20
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %142 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %141, i64 2)
  %143 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %141, i8 addrspace(1)* %142)
  store i8 addrspace(1)* %143, i8 addrspace(1)** %21
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4, !dbg !38
  %145 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !38
  %146 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %144, i8 addrspace(1)* %145), !dbg !38
  store i8 addrspace(1)* %146, i8 addrspace(1)** %22, !dbg !38
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %148 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %147, i64 3)
  %149 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %147, i8 addrspace(1)* %148)
  store i8 addrspace(1)* %149, i8 addrspace(1)** %23
  %150 = load i64, i64* %19, !dbg !39
  %151 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !39
  %152 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !39
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !39
  %154 = call i8 addrspace(1)* @_B_bddCreate(i64 %150, i8 addrspace(1)* %151, i8 addrspace(1)* %152, i8 addrspace(1)* %153), !dbg !39
  store i8 addrspace(1)* %154, i8 addrspace(1)** %24, !dbg !39
  %155 = load i8 addrspace(1)*, i8 addrspace(1)** %24
  ret i8 addrspace(1)* %155
156:
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %158 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %157, i64 0)
  %159 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %158)
  store i64 %159, i64* %25
  %160 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %161 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %160, i64 1)
  %162 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %160, i8 addrspace(1)* %161)
  store i8 addrspace(1)* %162, i8 addrspace(1)** %26
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %164 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %163, i64 1)
  %165 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %163, i8 addrspace(1)* %164)
  store i8 addrspace(1)* %165, i8 addrspace(1)** %27
  %166 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !40
  %167 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !40
  %168 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %166, i8 addrspace(1)* %167), !dbg !40
  store i8 addrspace(1)* %168, i8 addrspace(1)** %28, !dbg !40
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %170 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %169, i64 2)
  %171 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %169, i8 addrspace(1)* %170)
  store i8 addrspace(1)* %171, i8 addrspace(1)** %29
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %173 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %172, i64 2)
  %174 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %172, i8 addrspace(1)* %173)
  store i8 addrspace(1)* %174, i8 addrspace(1)** %30
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !41
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %30, !dbg !41
  %177 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %175, i8 addrspace(1)* %176), !dbg !41
  store i8 addrspace(1)* %177, i8 addrspace(1)** %31, !dbg !41
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %179 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %178, i64 3)
  %180 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %178, i8 addrspace(1)* %179)
  store i8 addrspace(1)* %180, i8 addrspace(1)** %32
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %182 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %181, i64 3)
  %183 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %181, i8 addrspace(1)* %182)
  store i8 addrspace(1)* %183, i8 addrspace(1)** %33
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %32, !dbg !42
  %185 = load i8 addrspace(1)*, i8 addrspace(1)** %33, !dbg !42
  %186 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %184, i8 addrspace(1)* %185), !dbg !42
  store i8 addrspace(1)* %186, i8 addrspace(1)** %34, !dbg !42
  %187 = load i64, i64* %25, !dbg !43
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %28, !dbg !43
  %189 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !43
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !43
  %191 = call i8 addrspace(1)* @_B_bddCreate(i64 %187, i8 addrspace(1)* %188, i8 addrspace(1)* %189, i8 addrspace(1)* %190), !dbg !43
  store i8 addrspace(1)* %191, i8 addrspace(1)** %35, !dbg !43
  %192 = load i8 addrspace(1)*, i8 addrspace(1)** %35
  ret i8 addrspace(1)* %192
193:
  %194 = call i8 addrspace(1)* @_bal_panic_construct(i64 6404), !dbg !34
  call void @_bal_panic(i8 addrspace(1)* %194)
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
  %b1.3 = alloca i1
  %b1.4 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %b2.1 = alloca i1
  %7 = alloca i1
  %b2.2 = alloca i1
  %b2.3 = alloca i1
  %b2.4 = alloca i8 addrspace(1)*
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
  br i1 %47, label %231, label %48
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
  br i1 %61, label %62, label %78
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
  %74 = load i1, i1* %b1.1
  store i1 %74, i1* %b1.3
  %75 = zext i1 0 to i64
  %76 = or i64 %75, 72057594037927936
  %77 = getelementptr i8, i8 addrspace(1)* null, i64 %76
  ret i8 addrspace(1)* %77
78:
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %79, i8 addrspace(1)** %b1.4
  %80 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %81 = addrspacecast i8 addrspace(1)* %80 to i8*
  %82 = ptrtoint i8* %81 to i64
  %83 = and i64 %82, 2233785415175766016
  %84 = icmp eq i64 %83, 72057594037927936
  store i1 %84, i1* %6
  %85 = load i1, i1* %6
  br i1 %85, label %86, label %102
86:
  %87 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  %88 = addrspacecast i8 addrspace(1)* %87 to i8*
  %89 = ptrtoint i8* %88 to i64
  %90 = trunc i64 %89 to i1
  store i1 %90, i1* %b2.1
  %91 = load i1, i1* %b2.1
  %92 = icmp eq i1 %91, 1
  store i1 %92, i1* %7
  %93 = load i1, i1* %7
  br i1 %93, label %94, label %97
94:
  %95 = load i1, i1* %b2.1
  store i1 %95, i1* %b2.2
  %96 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  ret i8 addrspace(1)* %96
97:
  %98 = load i1, i1* %b2.1
  store i1 %98, i1* %b2.3
  %99 = zext i1 0 to i64
  %100 = or i64 %99, 72057594037927936
  %101 = getelementptr i8, i8 addrspace(1)* null, i64 %100
  ret i8 addrspace(1)* %101
102:
  %103 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  store i8 addrspace(1)* %103, i8 addrspace(1)** %b2.4
  %104 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %105 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %104, i64 0)
  %106 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %105)
  store i64 %106, i64* %8
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %108 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %107, i64 0)
  %109 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %108)
  store i64 %109, i64* %9
  %110 = load i64, i64* %8, !dbg !45
  %111 = load i64, i64* %9, !dbg !45
  %112 = call i64 @_B_atomCmp(i64 %110, i64 %111), !dbg !45
  store i64 %112, i64* %10, !dbg !45
  %113 = load i64, i64* %10
  store i64 %113, i64* %cmp
  %114 = load i64, i64* %cmp
  %115 = icmp slt i64 %114, 0
  store i1 %115, i1* %11
  %116 = load i1, i1* %11
  br i1 %116, label %117, label %145
117:
  %118 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %119 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %118, i64 0)
  %120 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %119)
  store i64 %120, i64* %12
  %121 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %122 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %121, i64 1)
  %123 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %121, i8 addrspace(1)* %122)
  store i8 addrspace(1)* %123, i8 addrspace(1)** %13
  %124 = load i8 addrspace(1)*, i8 addrspace(1)** %13, !dbg !46
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4, !dbg !46
  %126 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %124, i8 addrspace(1)* %125), !dbg !46
  store i8 addrspace(1)* %126, i8 addrspace(1)** %14, !dbg !46
  %127 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %128 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %127, i64 2)
  %129 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %127, i8 addrspace(1)* %128)
  store i8 addrspace(1)* %129, i8 addrspace(1)** %15
  %130 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !47
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4, !dbg !47
  %132 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %130, i8 addrspace(1)* %131), !dbg !47
  store i8 addrspace(1)* %132, i8 addrspace(1)** %16, !dbg !47
  %133 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %134 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %133, i64 3)
  %135 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %133, i8 addrspace(1)* %134)
  store i8 addrspace(1)* %135, i8 addrspace(1)** %17
  %136 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !48
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4, !dbg !48
  %138 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %136, i8 addrspace(1)* %137), !dbg !48
  store i8 addrspace(1)* %138, i8 addrspace(1)** %18, !dbg !48
  %139 = load i64, i64* %12, !dbg !49
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %14, !dbg !49
  %141 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !49
  %142 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !49
  %143 = call i8 addrspace(1)* @_B_bddCreate(i64 %139, i8 addrspace(1)* %140, i8 addrspace(1)* %141, i8 addrspace(1)* %142), !dbg !49
  store i8 addrspace(1)* %143, i8 addrspace(1)** %19, !dbg !49
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %19
  ret i8 addrspace(1)* %144
145:
  %146 = load i64, i64* %cmp
  %147 = icmp sgt i64 %146, 0
  store i1 %147, i1* %20
  %148 = load i1, i1* %20
  br i1 %148, label %149, label %177
149:
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %151 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %150, i64 0)
  %152 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %151)
  store i64 %152, i64* %21
  %153 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %154 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %153, i64 1)
  %155 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %153, i8 addrspace(1)* %154)
  store i8 addrspace(1)* %155, i8 addrspace(1)** %22
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4, !dbg !50
  %157 = load i8 addrspace(1)*, i8 addrspace(1)** %22, !dbg !50
  %158 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %156, i8 addrspace(1)* %157), !dbg !50
  store i8 addrspace(1)* %158, i8 addrspace(1)** %23, !dbg !50
  %159 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %160 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %159, i64 2)
  %161 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %159, i8 addrspace(1)* %160)
  store i8 addrspace(1)* %161, i8 addrspace(1)** %24
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4, !dbg !51
  %163 = load i8 addrspace(1)*, i8 addrspace(1)** %24, !dbg !51
  %164 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %162, i8 addrspace(1)* %163), !dbg !51
  store i8 addrspace(1)* %164, i8 addrspace(1)** %25, !dbg !51
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %166 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %165, i64 3)
  %167 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %165, i8 addrspace(1)* %166)
  store i8 addrspace(1)* %167, i8 addrspace(1)** %26
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4, !dbg !52
  %169 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !52
  %170 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %168, i8 addrspace(1)* %169), !dbg !52
  store i8 addrspace(1)* %170, i8 addrspace(1)** %27, !dbg !52
  %171 = load i64, i64* %21, !dbg !53
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %23, !dbg !53
  %173 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !53
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !53
  %175 = call i8 addrspace(1)* @_B_bddCreate(i64 %171, i8 addrspace(1)* %172, i8 addrspace(1)* %173, i8 addrspace(1)* %174), !dbg !53
  store i8 addrspace(1)* %175, i8 addrspace(1)** %28, !dbg !53
  %176 = load i8 addrspace(1)*, i8 addrspace(1)** %28
  ret i8 addrspace(1)* %176
177:
  %178 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %179 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %178, i64 0)
  %180 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %179)
  store i64 %180, i64* %29
  %181 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %182 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %181, i64 1)
  %183 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %181, i8 addrspace(1)* %182)
  store i8 addrspace(1)* %183, i8 addrspace(1)** %30
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %185 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %184, i64 2)
  %186 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %184, i8 addrspace(1)* %185)
  store i8 addrspace(1)* %186, i8 addrspace(1)** %31
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %30, !dbg !54
  %188 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !54
  %189 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %187, i8 addrspace(1)* %188), !dbg !54
  store i8 addrspace(1)* %189, i8 addrspace(1)** %32, !dbg !54
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %191 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %190, i64 1)
  %192 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %190, i8 addrspace(1)* %191)
  store i8 addrspace(1)* %192, i8 addrspace(1)** %33
  %193 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %194 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %193, i64 2)
  %195 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %193, i8 addrspace(1)* %194)
  store i8 addrspace(1)* %195, i8 addrspace(1)** %34
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %33, !dbg !55
  %197 = load i8 addrspace(1)*, i8 addrspace(1)** %34, !dbg !55
  %198 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %196, i8 addrspace(1)* %197), !dbg !55
  store i8 addrspace(1)* %198, i8 addrspace(1)** %35, !dbg !55
  %199 = load i8 addrspace(1)*, i8 addrspace(1)** %32, !dbg !56
  %200 = load i8 addrspace(1)*, i8 addrspace(1)** %35, !dbg !56
  %201 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %199, i8 addrspace(1)* %200), !dbg !56
  store i8 addrspace(1)* %201, i8 addrspace(1)** %36, !dbg !56
  %202 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %203 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %202, i64 3)
  %204 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %202, i8 addrspace(1)* %203)
  store i8 addrspace(1)* %204, i8 addrspace(1)** %37
  %205 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %206 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %205, i64 2)
  %207 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %205, i8 addrspace(1)* %206)
  store i8 addrspace(1)* %207, i8 addrspace(1)** %38
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %37, !dbg !57
  %209 = load i8 addrspace(1)*, i8 addrspace(1)** %38, !dbg !57
  %210 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %208, i8 addrspace(1)* %209), !dbg !57
  store i8 addrspace(1)* %210, i8 addrspace(1)** %39, !dbg !57
  %211 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %212 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %211, i64 3)
  %213 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %211, i8 addrspace(1)* %212)
  store i8 addrspace(1)* %213, i8 addrspace(1)** %40
  %214 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %215 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %214, i64 2)
  %216 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %214, i8 addrspace(1)* %215)
  store i8 addrspace(1)* %216, i8 addrspace(1)** %41
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %40, !dbg !58
  %218 = load i8 addrspace(1)*, i8 addrspace(1)** %41, !dbg !58
  %219 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %217, i8 addrspace(1)* %218), !dbg !58
  store i8 addrspace(1)* %219, i8 addrspace(1)** %42, !dbg !58
  %220 = load i8 addrspace(1)*, i8 addrspace(1)** %39, !dbg !59
  %221 = load i8 addrspace(1)*, i8 addrspace(1)** %42, !dbg !59
  %222 = call i8 addrspace(1)* @_B_bddIntersect(i8 addrspace(1)* %220, i8 addrspace(1)* %221), !dbg !59
  store i8 addrspace(1)* %222, i8 addrspace(1)** %43, !dbg !59
  %223 = load i64, i64* %29, !dbg !60
  %224 = load i8 addrspace(1)*, i8 addrspace(1)** %36, !dbg !60
  %225 = zext i1 0 to i64, !dbg !60
  %226 = or i64 %225, 72057594037927936, !dbg !60
  %227 = getelementptr i8, i8 addrspace(1)* null, i64 %226, !dbg !60
  %228 = load i8 addrspace(1)*, i8 addrspace(1)** %43, !dbg !60
  %229 = call i8 addrspace(1)* @_B_bddCreate(i64 %223, i8 addrspace(1)* %224, i8 addrspace(1)* %227, i8 addrspace(1)* %228), !dbg !60
  store i8 addrspace(1)* %229, i8 addrspace(1)** %44, !dbg !60
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  ret i8 addrspace(1)* %230
231:
  %232 = call i8 addrspace(1)* @_bal_panic_construct(i64 16388), !dbg !44
  call void @_bal_panic(i8 addrspace(1)* %232)
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
  %b2.3 = alloca i1
  %b2.4 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %b1.1 = alloca i1
  %7 = alloca i1
  %b1.2 = alloca i1
  %8 = alloca i8 addrspace(1)*
  %b1.3 = alloca i1
  %b1.4 = alloca i8 addrspace(1)*
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
  br i1 %47, label %234, label %48
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
  br i1 %63, label %64, label %80
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
  %78 = load i1, i1* %b2.1
  store i1 %78, i1* %b2.3
  %79 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  ret i8 addrspace(1)* %79
80:
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %b2
  store i8 addrspace(1)* %81, i8 addrspace(1)** %b2.4
  %82 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %83 = addrspacecast i8 addrspace(1)* %82 to i8*
  %84 = ptrtoint i8* %83 to i64
  %85 = and i64 %84, 2233785415175766016
  %86 = icmp eq i64 %85, 72057594037927936
  store i1 %86, i1* %6
  %87 = load i1, i1* %6
  br i1 %87, label %88, label %106
88:
  %89 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  %90 = addrspacecast i8 addrspace(1)* %89 to i8*
  %91 = ptrtoint i8* %90 to i64
  %92 = trunc i64 %91 to i1
  store i1 %92, i1* %b1.1
  %93 = load i1, i1* %b1.1
  %94 = icmp eq i1 %93, 1
  store i1 %94, i1* %7
  %95 = load i1, i1* %7
  br i1 %95, label %96, label %101
96:
  %97 = load i1, i1* %b1.1
  store i1 %97, i1* %b1.2
  %98 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4, !dbg !62
  %99 = call i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %98), !dbg !62
  store i8 addrspace(1)* %99, i8 addrspace(1)** %8, !dbg !62
  %100 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  ret i8 addrspace(1)* %100
101:
  %102 = load i1, i1* %b1.1
  store i1 %102, i1* %b1.3
  %103 = zext i1 0 to i64
  %104 = or i64 %103, 72057594037927936
  %105 = getelementptr i8, i8 addrspace(1)* null, i64 %104
  ret i8 addrspace(1)* %105
106:
  %107 = load i8 addrspace(1)*, i8 addrspace(1)** %b1
  store i8 addrspace(1)* %107, i8 addrspace(1)** %b1.4
  %108 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %109 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %108, i64 0)
  %110 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %109)
  store i64 %110, i64* %9
  %111 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %112 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %111, i64 0)
  %113 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %112)
  store i64 %113, i64* %10
  %114 = load i64, i64* %9, !dbg !63
  %115 = load i64, i64* %10, !dbg !63
  %116 = call i64 @_B_atomCmp(i64 %114, i64 %115), !dbg !63
  store i64 %116, i64* %11, !dbg !63
  %117 = load i64, i64* %11
  store i64 %117, i64* %cmp
  %118 = load i64, i64* %cmp
  %119 = icmp slt i64 %118, 0
  store i1 %119, i1* %12
  %120 = load i1, i1* %12
  br i1 %120, label %121, label %157
121:
  %122 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %123 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %122, i64 0)
  %124 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %123)
  store i64 %124, i64* %13
  %125 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %126 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %125, i64 1)
  %127 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %125, i8 addrspace(1)* %126)
  store i8 addrspace(1)* %127, i8 addrspace(1)** %14
  %128 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %129 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %128, i64 2)
  %130 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %128, i8 addrspace(1)* %129)
  store i8 addrspace(1)* %130, i8 addrspace(1)** %15
  %131 = load i8 addrspace(1)*, i8 addrspace(1)** %14, !dbg !64
  %132 = load i8 addrspace(1)*, i8 addrspace(1)** %15, !dbg !64
  %133 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %131, i8 addrspace(1)* %132), !dbg !64
  store i8 addrspace(1)* %133, i8 addrspace(1)** %16, !dbg !64
  %134 = load i8 addrspace(1)*, i8 addrspace(1)** %16, !dbg !65
  %135 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4, !dbg !65
  %136 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %134, i8 addrspace(1)* %135), !dbg !65
  store i8 addrspace(1)* %136, i8 addrspace(1)** %17, !dbg !65
  %137 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %138 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %137, i64 3)
  %139 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %137, i8 addrspace(1)* %138)
  store i8 addrspace(1)* %139, i8 addrspace(1)** %18
  %140 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %141 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %140, i64 2)
  %142 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %140, i8 addrspace(1)* %141)
  store i8 addrspace(1)* %142, i8 addrspace(1)** %19
  %143 = load i8 addrspace(1)*, i8 addrspace(1)** %18, !dbg !66
  %144 = load i8 addrspace(1)*, i8 addrspace(1)** %19, !dbg !66
  %145 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %143, i8 addrspace(1)* %144), !dbg !66
  store i8 addrspace(1)* %145, i8 addrspace(1)** %20, !dbg !66
  %146 = load i8 addrspace(1)*, i8 addrspace(1)** %20, !dbg !67
  %147 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4, !dbg !67
  %148 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %146, i8 addrspace(1)* %147), !dbg !67
  store i8 addrspace(1)* %148, i8 addrspace(1)** %21, !dbg !67
  %149 = load i64, i64* %13, !dbg !68
  %150 = load i8 addrspace(1)*, i8 addrspace(1)** %17, !dbg !68
  %151 = zext i1 0 to i64, !dbg !68
  %152 = or i64 %151, 72057594037927936, !dbg !68
  %153 = getelementptr i8, i8 addrspace(1)* null, i64 %152, !dbg !68
  %154 = load i8 addrspace(1)*, i8 addrspace(1)** %21, !dbg !68
  %155 = call i8 addrspace(1)* @_B_bddCreate(i64 %149, i8 addrspace(1)* %150, i8 addrspace(1)* %153, i8 addrspace(1)* %154), !dbg !68
  store i8 addrspace(1)* %155, i8 addrspace(1)** %22, !dbg !68
  %156 = load i8 addrspace(1)*, i8 addrspace(1)** %22
  ret i8 addrspace(1)* %156
157:
  %158 = load i64, i64* %cmp
  %159 = icmp sgt i64 %158, 0
  store i1 %159, i1* %23
  %160 = load i1, i1* %23
  br i1 %160, label %161, label %197
161:
  %162 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %163 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %162, i64 0)
  %164 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %163)
  store i64 %164, i64* %24
  %165 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %166 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %165, i64 1)
  %167 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %165, i8 addrspace(1)* %166)
  store i8 addrspace(1)* %167, i8 addrspace(1)** %25
  %168 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %169 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %168, i64 2)
  %170 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %168, i8 addrspace(1)* %169)
  store i8 addrspace(1)* %170, i8 addrspace(1)** %26
  %171 = load i8 addrspace(1)*, i8 addrspace(1)** %25, !dbg !69
  %172 = load i8 addrspace(1)*, i8 addrspace(1)** %26, !dbg !69
  %173 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %171, i8 addrspace(1)* %172), !dbg !69
  store i8 addrspace(1)* %173, i8 addrspace(1)** %27, !dbg !69
  %174 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4, !dbg !70
  %175 = load i8 addrspace(1)*, i8 addrspace(1)** %27, !dbg !70
  %176 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %174, i8 addrspace(1)* %175), !dbg !70
  store i8 addrspace(1)* %176, i8 addrspace(1)** %28, !dbg !70
  %177 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %178 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %177, i64 3)
  %179 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %177, i8 addrspace(1)* %178)
  store i8 addrspace(1)* %179, i8 addrspace(1)** %29
  %180 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %181 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %180, i64 2)
  %182 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %180, i8 addrspace(1)* %181)
  store i8 addrspace(1)* %182, i8 addrspace(1)** %30
  %183 = load i8 addrspace(1)*, i8 addrspace(1)** %29, !dbg !71
  %184 = load i8 addrspace(1)*, i8 addrspace(1)** %30, !dbg !71
  %185 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %183, i8 addrspace(1)* %184), !dbg !71
  store i8 addrspace(1)* %185, i8 addrspace(1)** %31, !dbg !71
  %186 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4, !dbg !72
  %187 = load i8 addrspace(1)*, i8 addrspace(1)** %31, !dbg !72
  %188 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %186, i8 addrspace(1)* %187), !dbg !72
  store i8 addrspace(1)* %188, i8 addrspace(1)** %32, !dbg !72
  %189 = load i64, i64* %24, !dbg !73
  %190 = load i8 addrspace(1)*, i8 addrspace(1)** %28, !dbg !73
  %191 = zext i1 0 to i64, !dbg !73
  %192 = or i64 %191, 72057594037927936, !dbg !73
  %193 = getelementptr i8, i8 addrspace(1)* null, i64 %192, !dbg !73
  %194 = load i8 addrspace(1)*, i8 addrspace(1)** %32, !dbg !73
  %195 = call i8 addrspace(1)* @_B_bddCreate(i64 %189, i8 addrspace(1)* %190, i8 addrspace(1)* %193, i8 addrspace(1)* %194), !dbg !73
  store i8 addrspace(1)* %195, i8 addrspace(1)** %33, !dbg !73
  %196 = load i8 addrspace(1)*, i8 addrspace(1)** %33
  ret i8 addrspace(1)* %196
197:
  %198 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %199 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %198, i64 0)
  %200 = call i64 @_bal_tagged_to_int(i8 addrspace(1)* %199)
  store i64 %200, i64* %34
  %201 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %202 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %201, i64 1)
  %203 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %201, i8 addrspace(1)* %202)
  store i8 addrspace(1)* %203, i8 addrspace(1)** %35
  %204 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %205 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %204, i64 1)
  %206 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %204, i8 addrspace(1)* %205)
  store i8 addrspace(1)* %206, i8 addrspace(1)** %36
  %207 = load i8 addrspace(1)*, i8 addrspace(1)** %35, !dbg !74
  %208 = load i8 addrspace(1)*, i8 addrspace(1)** %36, !dbg !74
  %209 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %207, i8 addrspace(1)* %208), !dbg !74
  store i8 addrspace(1)* %209, i8 addrspace(1)** %37, !dbg !74
  %210 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %211 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %210, i64 2)
  %212 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %210, i8 addrspace(1)* %211)
  store i8 addrspace(1)* %212, i8 addrspace(1)** %38
  %213 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %214 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %213, i64 2)
  %215 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %213, i8 addrspace(1)* %214)
  store i8 addrspace(1)* %215, i8 addrspace(1)** %39
  %216 = load i8 addrspace(1)*, i8 addrspace(1)** %38, !dbg !75
  %217 = load i8 addrspace(1)*, i8 addrspace(1)** %39, !dbg !75
  %218 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %216, i8 addrspace(1)* %217), !dbg !75
  store i8 addrspace(1)* %218, i8 addrspace(1)** %40, !dbg !75
  %219 = load i8 addrspace(1)*, i8 addrspace(1)** %b1.4
  %220 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %219, i64 3)
  %221 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %219, i8 addrspace(1)* %220)
  store i8 addrspace(1)* %221, i8 addrspace(1)** %41
  %222 = load i8 addrspace(1)*, i8 addrspace(1)** %b2.4
  %223 = call i8 addrspace(1)* @_bal_mapping_indexed_get(i8 addrspace(1)* %222, i64 3)
  %224 = call i8 addrspace(1)* @_bal_tagged_member_clear_exact_ptr(i8 addrspace(1)* %222, i8 addrspace(1)* %223)
  store i8 addrspace(1)* %224, i8 addrspace(1)** %42
  %225 = load i8 addrspace(1)*, i8 addrspace(1)** %41, !dbg !76
  %226 = load i8 addrspace(1)*, i8 addrspace(1)** %42, !dbg !76
  %227 = call i8 addrspace(1)* @_B_bddDiff(i8 addrspace(1)* %225, i8 addrspace(1)* %226), !dbg !76
  store i8 addrspace(1)* %227, i8 addrspace(1)** %43, !dbg !76
  %228 = load i64, i64* %34, !dbg !77
  %229 = load i8 addrspace(1)*, i8 addrspace(1)** %37, !dbg !77
  %230 = load i8 addrspace(1)*, i8 addrspace(1)** %40, !dbg !77
  %231 = load i8 addrspace(1)*, i8 addrspace(1)** %43, !dbg !77
  %232 = call i8 addrspace(1)* @_B_bddCreate(i64 %228, i8 addrspace(1)* %229, i8 addrspace(1)* %230, i8 addrspace(1)* %231), !dbg !77
  store i8 addrspace(1)* %232, i8 addrspace(1)** %44, !dbg !77
  %233 = load i8 addrspace(1)*, i8 addrspace(1)** %44
  ret i8 addrspace(1)* %233
234:
  %235 = call i8 addrspace(1)* @_bal_panic_construct(i64 26116), !dbg !61
  call void @_bal_panic(i8 addrspace(1)* %235)
  unreachable
}
define internal i8 addrspace(1)* @_B_bddComplement(i8 addrspace(1)* %0) !dbg !15 {
  %b = alloca i8 addrspace(1)*
  %2 = alloca i1
  %b.1 = alloca i1
  %3 = alloca i1
  %b.2 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %6 = alloca i64
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8 addrspace(1)*
  %10 = alloca i8 addrspace(1)*
  %11 = alloca i8 addrspace(1)*
  %12 = alloca i8 addrspace(1)*
  %13 = alloca i8 addrspace(1)*
  %14 = alloca i8 addrspace(1)*
  %15 = alloca i1
  %16 = alloca i64
  %17 = alloca i8 addrspace(1)*
  %18 = alloca i8 addrspace(1)*
  %19 = alloca i8 addrspace(1)*
  %20 = alloca i8 addrspace(1)*
  %21 = alloca i8 addrspace(1)*
  %22 = alloca i8 addrspace(1)*
  %23 = alloca i8 addrspace(1)*
  %24 = alloca i8 addrspace(1)*
  %25 = alloca i1
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
  store i8 addrspace(1)* %71, i8 addrspace(1)** %4
  %72 = load i8 addrspace(1)*, i8 addrspace(1)** %4
  %73 = zext i1 0 to i64
  %74 = or i64 %73, 72057594037927936
  %75 = getelementptr i8, i8 addrspace(1)* null, i64 %74
  %76 = icmp eq i8 addrspace(1)* %72, %75
  store i1 %76, i1* %5
  %77 = load i1, i1* %5
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
  store i8 addrspace(1)* %109, i8 addrspace(1)** %14
  %110 = load i8 addrspace(1)*, i8 addrspace(1)** %14
  %111 = zext i1 0 to i64
  %112 = or i64 %111, 72057594037927936
  %113 = getelementptr i8, i8 addrspace(1)* null, i64 %112
  %114 = icmp eq i8 addrspace(1)* %110, %113
  store i1 %114, i1* %15
  %115 = load i1, i1* %15
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
  store i8 addrspace(1)* %147, i8 addrspace(1)** %24
  %148 = load i8 addrspace(1)*, i8 addrspace(1)** %24
  %149 = zext i1 0 to i64
  %150 = or i64 %149, 72057594037927936
  %151 = getelementptr i8, i8 addrspace(1)* null, i64 %150
  %152 = icmp eq i8 addrspace(1)* %148, %151
  store i1 %152, i1* %25
  %153 = load i1, i1* %25
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
  %middle.2 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %7 = alloca i8 addrspace(1)*
  %8 = alloca i8 addrspace(1)*
  %9 = alloca i8
  %10 = load i8*, i8** @_bal_stack_guard
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %46, label %12
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
  %28 = load i8 addrspace(1)*, i8 addrspace(1)** %middle
  store i8 addrspace(1)* %28, i8 addrspace(1)** %middle.2
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %left
  %30 = load i8 addrspace(1)*, i8 addrspace(1)** %right
  %31 = call i1 @_bal_eq(i8 addrspace(1)* %29, i8 addrspace(1)* %30)
  store i1 %31, i1* %6
  %32 = load i1, i1* %6
  br i1 %32, label %33, label %38
33:
  %34 = load i8 addrspace(1)*, i8 addrspace(1)** %left, !dbg !98
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %middle.2, !dbg !98
  %36 = call i8 addrspace(1)* @_B_bddUnion(i8 addrspace(1)* %34, i8 addrspace(1)* %35), !dbg !98
  store i8 addrspace(1)* %36, i8 addrspace(1)** %7, !dbg !98
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %7
  ret i8 addrspace(1)* %37
38:
  %39 = call i8 addrspace(1)* @_bal_mapping_construct({i32}* @_Bi04root0, i64 4)
  %40 = load i64, i64* %atom
  %41 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %40)
  call void @_bal_mapping_init_member(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541171954785), i8 addrspace(1)* %41)
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %left
  call void @_bal_mapping_init_member(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541288801644), i8 addrspace(1)* %42)
  %43 = load i8 addrspace(1)*, i8 addrspace(1)** %middle.2
  call void @_bal_mapping_init_member(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098306584869366125), i8 addrspace(1)* %43)
  %44 = load i8 addrspace(1)*, i8 addrspace(1)** %right
  call void @_bal_mapping_init_member(i8 addrspace(1)* %39, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475944087087474), i8 addrspace(1)* %44)
  store i8 addrspace(1)* %39, i8 addrspace(1)** %8
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %8
  ret i8 addrspace(1)* %45
46:
  %47 = call i8 addrspace(1)* @_bal_panic_construct(i64 45060), !dbg !97
  call void @_bal_panic(i8 addrspace(1)* %47)
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
