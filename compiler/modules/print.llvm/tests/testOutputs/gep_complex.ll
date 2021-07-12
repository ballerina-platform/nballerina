@g1 = external global {i64, i64, {i64, [10 x [20 x i64]], i64}}
@g2 = external global {i8, i8, {i32, [10 x i64 addrspace(1)*], i32}}
define void @foo() {
  %1 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, {i64, i64, {i64, [10 x [20 x i64]], i64}}* @g1, i32 1
  %2 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, {i64, i64, {i64, [10 x [20 x i64]], i64}}* %1, i32 0, i32 2
  %3 = getelementptr {i64, [10 x [20 x i64]], i64}, {i64, [10 x [20 x i64]], i64}* %2, i32 0, i32 1
  %4 = getelementptr [10 x [20 x i64]], [10 x [20 x i64]]* %3, i64 0, i64 5
  %5 = getelementptr [20 x i64], [20 x i64]* %4, i64 0, i64 13
  ret void
}
define i64 addrspace(1)** @bar() {
  %_0 = getelementptr {i8, i8, {i32, [10 x i64 addrspace(1)*], i32}}, {i8, i8, {i32, [10 x i64 addrspace(1)*], i32}}* @g2, i32 1, i32 2, i32 1, i32 4
  ret i64 addrspace(1)** %_0
}
