declare i64 @bar (i64)
declare void @barVoid ()
define i64 @foo () {
  call void @barVoid ()
  %R0 = call i64 @bar (i64 0)
  ret i64 %R0
}
