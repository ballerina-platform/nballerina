@g1 = external global {i64, i64, {i64, [10 x [20 x i64]], i64}}
define void @foo () {
  %_0 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, {i64, i64, {i64, [10 x [20 x i64]], i64}}* @g1, i32 1
  %_1 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, {i64, i64, {i64, [10 x [20 x i64]], i64}}* %_0, i32 0, i32 2
  %_2 = getelementptr {i64, [10 x [20 x i64]], i64}, {i64, [10 x [20 x i64]], i64}* %_1, i32 0, i32 1
  %_3 = getelementptr [10 x [20 x i64]], [10 x [20 x i64]]* %_2, i64 0, i64 5
  %_4 = getelementptr [20 x i64], [20 x i64]* %_3, i64 0, i64 13
  ret void
}
