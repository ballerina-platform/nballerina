define i64 @foo() {
  call void @barVoid()
  %1 = call i64 @bar(i64 0)
  ret i64 %1
}

declare i64 @bar(i64)

declare void @barVoid()
