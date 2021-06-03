target triple = "x86_64-pc-linux-gnu"
define dso_local void @foo ( ) {
  ret void
}
define dso_local i64 @bar ( ) {
  ret i64 42
}
