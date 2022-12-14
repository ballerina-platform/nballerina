
@g1 = external global { i64, i64, { i64, [10 x [20 x i64]], i64 } }
@g2 = external global { i8, i8, { i32, [10 x ptr addrspace(1)], i32 } }

define ptr @foo() {
  ret ptr getelementptr ({ i64, i64, { i64, [10 x [20 x i64]], i64 } }, ptr @g1, i32 1, i32 2, i32 1, i64 5, i64 13)
}

define ptr @bar() {
  ret ptr getelementptr ({ i8, i8, { i32, [10 x ptr addrspace(1)], i32 } }, ptr @g2, i32 1, i32 2, i32 1, i32 4)
}
