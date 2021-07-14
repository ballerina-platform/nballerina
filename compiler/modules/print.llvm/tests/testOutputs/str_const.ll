@.str.0 = constant [10 x i8] c"abc123#@% "
define i8* @test() {
  %1 = getelementptr inbounds [10 x i8], [10 x i8]* @.str.0, i64 0, i64 0
  ret i8* %1
}
