@g1 = external global {i64, i64, {i64, [10 x [20 x i64]], i64}}
define void @foo() {
  %0 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, {i64, i64, {i64, [10 x [20 x i64]], i64}}* @g1, i32 1
  %1 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, {i64, i64, {i64, [10 x [20 x i64]], i64}}* %0, i32 0, i32 2
  %2 = getelementptr {i64, [10 x [20 x i64]], i64}, {i64, [10 x [20 x i64]], i64}* %1, i32 0, i32 1
  %3 = getelementptr [10 x [20 x i64]], [10 x [20 x i64]]* %2, i64 0, i64 5
  %4 = getelementptr [20 x i64], [20 x i64]* %3, i64 0, i64 13
  ret void
}
