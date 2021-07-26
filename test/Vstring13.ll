; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128-ni:1"
target triple = "x86_64-pc-linux-gnu"

@_bal_stack_guard = external global i8*

define void @_B_main() {
  %1 = alloca i1, align 1
  %2 = alloca i8 addrspace(1)*, align 8
  %3 = alloca i1, align 1
  %4 = alloca i8 addrspace(1)*, align 8
  %5 = alloca i1, align 1
  %6 = alloca i8 addrspace(1)*, align 8
  %7 = alloca i1, align 1
  %8 = alloca i8 addrspace(1)*, align 8
  %9 = alloca i1, align 1
  %10 = alloca i8 addrspace(1)*, align 8
  %11 = alloca i1, align 1
  %12 = alloca i8 addrspace(1)*, align 8
  %13 = alloca i8, align 1
  %14 = load i8*, i8** @_bal_stack_guard, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %47, label %16

16:                                               ; preds = %0
  %17 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i1 %17, i1* %1, align 1
  %18 = load i1, i1* %1, align 1
  %19 = zext i1 %18 to i64
  %20 = or i64 %19, 72057594037927936
  %21 = getelementptr i8, i8 addrspace(1)* null, i64 %20
  call void @_Bio__println(i8 addrspace(1)* %21)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, align 8
  %22 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098475922679686504))
  store i1 %22, i1* %3, align 1
  %23 = load i1, i1* %3, align 1
  %24 = zext i1 %23 to i64
  %25 = or i64 %24, 72057594037927936
  %26 = getelementptr i8, i8 addrspace(1)* null, i64 %25
  call void @_Bio__println(i8 addrspace(1)* %26)
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, align 8
  %27 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098476543630861929))
  store i1 %27, i1* %5, align 1
  %28 = load i1, i1* %5, align 1
  %29 = zext i1 %28 to i64
  %30 = or i64 %29, 72057594037927936
  %31 = getelementptr i8, i8 addrspace(1)* null, i64 %30
  call void @_Bio__println(i8 addrspace(1)* %31)
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, align 8
  %32 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098476541037997157))
  store i1 %32, i1* %7, align 1
  %33 = load i1, i1* %7, align 1
  %34 = zext i1 %33 to i64
  %35 = or i64 %34, 72057594037927936
  %36 = getelementptr i8, i8 addrspace(1)* null, i64 %35
  call void @_Bio__println(i8 addrspace(1)* %36)
  store i8 addrspace(1)* null, i8 addrspace(1)** %8, align 8
  %37 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098475879847453030))
  store i1 %37, i1* %9, align 1
  %38 = load i1, i1* %9, align 1
  %39 = zext i1 %38 to i64
  %40 = or i64 %39, 72057594037927936
  %41 = getelementptr i8, i8 addrspace(1)* null, i64 %40
  call void @_Bio__println(i8 addrspace(1)* %41)
  store i8 addrspace(1)* null, i8 addrspace(1)** %10, align 8
  %42 = call i1 @_B_isKeyword(i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098316506530080114))
  store i1 %42, i1* %11, align 1
  %43 = load i1, i1* %11, align 1
  %44 = zext i1 %43 to i64
  %45 = or i64 %44, 72057594037927936
  %46 = getelementptr i8, i8 addrspace(1)* null, i64 %45
  call void @_Bio__println(i8 addrspace(1)* %46)
  store i8 addrspace(1)* null, i8 addrspace(1)** %12, align 8
  ret void

47:                                               ; preds = %0
  call void @_bal_panic(i64 772)
  unreachable
}

define internal i1 @_B_isKeyword(i8 addrspace(1)* %0) {
  %s = alloca i8 addrspace(1)*, align 8
  %2 = alloca i1, align 1
  %3 = alloca i1, align 1
  %4 = alloca i1, align 1
  %5 = alloca i1, align 1
  %6 = alloca i1, align 1
  %7 = alloca i1, align 1
  %8 = alloca i1, align 1
  %9 = alloca i1, align 1
  %10 = alloca i1, align 1
  %11 = alloca i1, align 1
  %12 = alloca i1, align 1
  %13 = alloca i8, align 1
  %14 = load i8*, i8** @_bal_stack_guard, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %72, label %16

16:                                               ; preds = %1
  store i8 addrspace(1)* %0, i8 addrspace(1)** %s, align 8
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %18 = call i1 @_bal_string_eq(i8 addrspace(1)* %17, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098316506530080114))
  store i1 %18, i1* %2, align 1
  %19 = load i1, i1* %2, align 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  ret i1 true

21:                                               ; preds = %16
  %22 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %23 = call i1 @_bal_string_eq(i8 addrspace(1)* %22, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3057488285269978978))
  store i1 %23, i1* %3, align 1
  %24 = load i1, i1* %3, align 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  ret i1 true

26:                                               ; preds = %21
  %27 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %28 = call i1 @_bal_string_eq(i8 addrspace(1)* %27, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098476543621754473))
  store i1 %28, i1* %4, align 1
  %29 = load i1, i1* %4, align 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  ret i1 true

31:                                               ; preds = %26
  %32 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %33 = call i1 @_bal_string_eq(i8 addrspace(1)* %32, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098308792567362675))
  store i1 %33, i1* %5, align 1
  %34 = load i1, i1* %5, align 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  ret i1 true

36:                                               ; preds = %31
  %37 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %38 = call i1 @_bal_string_eq(i8 addrspace(1)* %37, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098475879729817719))
  store i1 %38, i1* %6, align 1
  %39 = load i1, i1* %6, align 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  ret i1 true

41:                                               ; preds = %36
  %42 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %43 = call i1 @_bal_string_eq(i8 addrspace(1)* %42, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3055801617135857510))
  store i1 %43, i1* %7, align 1
  %44 = load i1, i1* %7, align 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  ret i1 true

46:                                               ; preds = %41
  %47 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %48 = call i1 @_bal_string_eq(i8 addrspace(1)* %47, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098476543630861929))
  store i1 %48, i1* %8, align 1
  %49 = load i1, i1* %8, align 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  ret i1 true

51:                                               ; preds = %46
  %52 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %53 = call i1 @_bal_string_eq(i8 addrspace(1)* %52, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098476541037997157))
  store i1 %53, i1* %9, align 1
  %54 = load i1, i1* %9, align 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  ret i1 true

56:                                               ; preds = %51
  %57 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %58 = call i1 @_bal_string_eq(i8 addrspace(1)* %57, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098476543621489005))
  store i1 %58, i1* %10, align 1
  %59 = load i1, i1* %10, align 1
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  ret i1 true

61:                                               ; preds = %56
  %62 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %63 = call i1 @_bal_string_eq(i8 addrspace(1)* %62, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098476541038129780))
  store i1 %63, i1* %11, align 1
  %64 = load i1, i1* %11, align 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  ret i1 true

66:                                               ; preds = %61
  %67 = load i8 addrspace(1)*, i8 addrspace(1)** %s, align 8
  %68 = call i1 @_bal_string_eq(i8 addrspace(1)* %67, i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* null, i64 3098475879847453030))
  store i1 %68, i1* %12, align 1
  %69 = load i1, i1* %12, align 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  ret i1 true

71:                                               ; preds = %66
  ret i1 false

72:                                               ; preds = %1
  call void @_bal_panic(i64 3076)
  unreachable
}

declare void @_Bio__println(i8 addrspace(1)*)

; Function Attrs: cold noreturn
declare void @_bal_panic(i64) #0

; Function Attrs: alwaysinline nounwind readonly uwtable
define linkonce_odr dso_local zeroext i1 @_bal_string_eq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) #1 {
  %3 = addrspacecast i8 addrspace(1)* %0 to i8*
  %4 = addrspacecast i8 addrspace(1)* %1 to i8*
  %5 = icmp eq i8* %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = ptrtoint i8* %4 to i64
  %8 = ptrtoint i8* %3 to i64
  %9 = or i64 %7, %8
  %10 = and i64 %9, 2305843009213693952
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call zeroext i1 @_bal_string_heap_eq(i8 addrspace(1)* %0, i8 addrspace(1)* %1) #3
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi i1 [ %13, %12 ], [ true, %2 ], [ false, %6 ]
  ret i1 %15
}

; Function Attrs: nounwind readonly
declare dso_local zeroext i1 @_bal_string_heap_eq(i8 addrspace(1)*, i8 addrspace(1)*) local_unnamed_addr #2

attributes #0 = { cold noreturn }
attributes #1 = { alwaysinline nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
