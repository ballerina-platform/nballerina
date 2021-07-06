declare void @bar() gc "shadow-stack"

; Function Attrs: noreturn
declare void @bar2() #0 gc "shadow-stack"

define i64 @foo() {
  ret i64 0
}

; Function Attrs: noreturn
define i64 @foo2() #0 gc "shadow-stack" {
  ret i64 0
}

define i64 @foo3() {
  ret i64 0
}

attributes #0 = { noreturn }
