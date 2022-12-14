@g1 = external global {i64, i64, {i64, [10 x [20 x i64]], i64}}
define void @foo() {
  %1 = getelementptr inbounds {i64, i64, {i64, [10 x [20 x i64]], i64}}, ptr @g1, i32 1
  ret void
}
