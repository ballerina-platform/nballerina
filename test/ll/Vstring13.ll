@_bal_stack_guard = external global i8*
declare void @_bal_panic(i64) noreturn cold
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
  call void @_bal_panic(i64 772)
  unreachable
}
define internal i1 @_B_isKeyword(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*
  %2 = alloca i1
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
  %14 = load i8*, i8** @_bal_stack_guard
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %72, label %16
16:
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %18 = call i1 @_bal_string_eq(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098316506530080114))
  store i1 %18, i1* %2
  %19 = load i1, i1* %2
  br i1 %19, label %20, label %21
20:
  ret i1 1
21:
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %23 = call i1 @_bal_string_eq(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3057488285269978978))
  store i1 %23, i1* %3
  %24 = load i1, i1* %3
  br i1 %24, label %25, label %26
25:
  ret i1 1
26:
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %28 = call i1 @_bal_string_eq(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621754473))
  store i1 %28, i1* %4
  %29 = load i1, i1* %4
  br i1 %29, label %30, label %31
30:
  ret i1 1
31:
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %33 = call i1 @_bal_string_eq(i8 addrspace(1)* %32, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i1 %33, i1* %5
  %34 = load i1, i1* %5
  br i1 %34, label %35, label %36
35:
  ret i1 1
36:
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %38 = call i1 @_bal_string_eq(i8 addrspace(1)* %37, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879729817719))
  store i1 %38, i1* %6
  %39 = load i1, i1* %6
  br i1 %39, label %40, label %41
40:
  ret i1 1
41:
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %43 = call i1 @_bal_string_eq(i8 addrspace(1)* %42, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3055801617135857510))
  store i1 %43, i1* %7
  %44 = load i1, i1* %7
  br i1 %44, label %45, label %46
45:
  ret i1 1
46:
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %48 = call i1 @_bal_string_eq(i8 addrspace(1)* %47, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543630861929))
  store i1 %48, i1* %8
  %49 = load i1, i1* %8
  br i1 %49, label %50, label %51
50:
  ret i1 1
51:
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %53 = call i1 @_bal_string_eq(i8 addrspace(1)* %52, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541037997157))
  store i1 %53, i1* %9
  %54 = load i1, i1* %9
  br i1 %54, label %55, label %56
55:
  ret i1 1
56:
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %58 = call i1 @_bal_string_eq(i8 addrspace(1)* %57, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543621489005))
  store i1 %58, i1* %10
  %59 = load i1, i1* %10
  br i1 %59, label %60, label %61
60:
  ret i1 1
61:
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %63 = call i1 @_bal_string_eq(i8 addrspace(1)* %62, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476541038129780))
  store i1 %63, i1* %11
  %64 = load i1, i1* %11
  br i1 %64, label %65, label %66
65:
  ret i1 1
66:
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %68 = call i1 @_bal_string_eq(i8 addrspace(1)* %67, i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098475879847453030))
  store i1 %68, i1* %12
  %69 = load i1, i1* %12
  br i1 %69, label %70, label %71
70:
  ret i1 1
71:
  ret i1 0
72:
  call void @_bal_panic(i64 3076)
  unreachable
}
