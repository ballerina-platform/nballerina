@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare zeroext i1 @_bal_string_eq(i8 addrspace(1)*, i8 addrspace(1)*) readonly
define void @_B_main() {
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
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %47, label %16
16:
  %17 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i1 %17, i1* %1
  %18 = load i1, i1* %1
  %19 = zext i1 %18 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  %22 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i1 %22, i1* %3
  %23 = load i1, i1* %3
  %24 = zext i1 %23 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4
  %27 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630861929))
  store i1 %27, i1* %5
  %28 = load i1, i1* %5
  %29 = zext i1 %28 to i64
  %30 = or i64 %29, 72057594037927936
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6
  %32 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037997157))
  store i1 %32, i1* %7
  %33 = load i1, i1* %7
  %34 = zext i1 %33 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8
  %37 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030))
  store i1 %37, i1* %9
  %38 = load i1, i1* %9
  %39 = zext i1 %38 to i64
  %40 = or i64 %39, 72057594037927936
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10
  %42 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098316506530080114))
  store i1 %42, i1* %11
  %43 = load i1, i1* %11
  %44 = zext i1 %43 to i64
  %45 = or i64 %44, 72057594037927936
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12
  ret void
47:
  %48 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %48)
  unreachable
}
define internal i1 @_B_isKeyword(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i1
  %s.1 = alloca i8 addrspace(1)*
  %3 = alloca i1
  %s.2 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %s.3 = alloca i8 addrspace(1)*
  %5 = alloca i1
  %s.4 = alloca i8 addrspace(1)*
  %6 = alloca i1
  %s.5 = alloca i8 addrspace(1)*
  %7 = alloca i1
  %s.6 = alloca i8 addrspace(1)*
  %8 = alloca i1
  %s.7 = alloca i8 addrspace(1)*
  %9 = alloca i1
  %s.8 = alloca i8 addrspace(1)*
  %10 = alloca i1
  %s.9 = alloca i8 addrspace(1)*
  %11 = alloca i1
  %s.10 = alloca i8 addrspace(1)*
  %12 = alloca i1
  %s.11 = alloca i8 addrspace(1)*
  %13 = alloca i8
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %83, label %16
16:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %18 = call i1 @_bal_string_eq(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098316506530080114))
  store i1 %18, i1* %2
  %19 = load i1, i1* %2
  br i1 %19, label %20, label %22
20:
  %21 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %21, i8 addrspace(1)** %s.1
  ret i1 1
22:
  %23 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %24 = call i1 @_bal_string_eq(i8 addrspace(1)* %23, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978))
  store i1 %24, i1* %3
  %25 = load i1, i1* %3
  br i1 %25, label %26, label %28
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %27, i8 addrspace(1)** %s.2
  ret i1 1
28:
  %29 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %30 = call i1 @_bal_string_eq(i8 addrspace(1)* %29, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473))
  store i1 %30, i1* %4
  %31 = load i1, i1* %4
  br i1 %31, label %32, label %34
32:
  %33 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %33, i8 addrspace(1)** %s.3
  ret i1 1
34:
  %35 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %36 = call i1 @_bal_string_eq(i8 addrspace(1)* %35, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i1 %36, i1* %5
  %37 = load i1, i1* %5
  br i1 %37, label %38, label %40
38:
  %39 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %39, i8 addrspace(1)** %s.4
  ret i1 1
40:
  %41 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %42 = call i1 @_bal_string_eq(i8 addrspace(1)* %41, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879729817719))
  store i1 %42, i1* %6
  %43 = load i1, i1* %6
  br i1 %43, label %44, label %46
44:
  %45 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %45, i8 addrspace(1)** %s.5
  ret i1 1
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %48 = call i1 @_bal_string_eq(i8 addrspace(1)* %47, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055801617135857510))
  store i1 %48, i1* %7
  %49 = load i1, i1* %7
  br i1 %49, label %50, label %52
50:
  %51 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %51, i8 addrspace(1)** %s.6
  ret i1 1
52:
  %53 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %54 = call i1 @_bal_string_eq(i8 addrspace(1)* %53, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630861929))
  store i1 %54, i1* %8
  %55 = load i1, i1* %8
  br i1 %55, label %56, label %58
56:
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %57, i8 addrspace(1)** %s.7
  ret i1 1
58:
  %59 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %60 = call i1 @_bal_string_eq(i8 addrspace(1)* %59, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037997157))
  store i1 %60, i1* %9
  %61 = load i1, i1* %9
  br i1 %61, label %62, label %64
62:
  %63 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %63, i8 addrspace(1)** %s.8
  ret i1 1
64:
  %65 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %66 = call i1 @_bal_string_eq(i8 addrspace(1)* %65, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621489005))
  store i1 %66, i1* %10
  %67 = load i1, i1* %10
  br i1 %67, label %68, label %70
68:
  %69 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %69, i8 addrspace(1)** %s.9
  ret i1 1
70:
  %71 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %72 = call i1 @_bal_string_eq(i8 addrspace(1)* %71, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780))
  store i1 %72, i1* %11
  %73 = load i1, i1* %11
  br i1 %73, label %74, label %76
74:
  %75 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %75, i8 addrspace(1)** %s.10
  ret i1 1
76:
  %77 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %78 = call i1 @_bal_string_eq(i8 addrspace(1)* %77, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030))
  store i1 %78, i1* %12
  %79 = load i1, i1* %12
  br i1 %79, label %80, label %82
80:
  %81 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  store i8 addrspace(1)* %81, i8 addrspace(1)** %s.11
  ret i1 1
82:
  ret i1 0
83:
  %84 = call i8 addrspace(1)* @_bal_panic_construct(i64 3076)
  call void @_bal_panic(i8 addrspace(1)* %84)
  unreachable
}
