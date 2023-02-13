
@g1 = external global { i64, i64, { i64, [10 x [20 x i64]], i64 } }

define ptr @foo() {
  ret ptr getelementptr inbounds ({ i64, i64, { i64, [10 x [20 x i64]], i64 } }, ptr @g1, i32 1, i32 2, i32 1, i64 5, i64 13)
}
