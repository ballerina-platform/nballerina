declare void @bar() gc "shadow-stack"
declare void @bar2() noreturn gc "shadow-stack"
define i64 @foo() gc "shadow-stack" {
  ret i64 0
}
define i64 @foo2() noreturn gc "shadow-stack" {
  ret i64 0
}
