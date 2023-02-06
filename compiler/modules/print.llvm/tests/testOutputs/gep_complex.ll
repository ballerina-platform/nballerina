@g1 = external global {i64, i64, {i64, [10 x [20 x i64]], i64}}
@g2 = external global {i8, i8, {i32, [10 x ptr addrspace(1)], i32}}
define void @foo() {
  %1 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, ptr @g1, i32 1
  %2 = getelementptr {i64, i64, {i64, [10 x [20 x i64]], i64}}, ptr %1, i32 0, i32 2
  %3 = getelementptr {i64, [10 x [20 x i64]], i64}, ptr %2, i32 0, i32 1
  %4 = getelementptr [10 x [20 x i64]], ptr %3, i64 0, i64 5
  %5 = getelementptr [20 x i64], ptr %4, i64 0, i64 13
  ret void
}
define ptr @bar() {
  %1 = getelementptr {i8, i8, {i32, [10 x ptr addrspace(1)], i32}}, ptr @g2, i32 1, i32 2, i32 1, i32 4
  ret ptr %1
}
