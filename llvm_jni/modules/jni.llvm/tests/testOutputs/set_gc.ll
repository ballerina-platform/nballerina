declare void @bar() gc "shadow-stack"

; Function Attrs: noreturn
declare void @bar2() #0 gc "shadow-stack"

define i64 @foo() gc "shadow-stack" {
  ret i64 0
}

; Function Attrs: noreturn
define i64 @foo2() #0 gc "shadow-stack" {
  ret i64 0
}

attributes #0 = { noreturn }
