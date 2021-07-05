
@g1 = external global { i64, i64, { i64, [10 x [20 x i64]], i64 } }

define i64* @foo() {
  ret i64* getelementptr ({ i64, i64, { i64, [10 x [20 x i64]], i64 } }, { i64, i64, { i64, [10 x [20 x i64]], i64 } }* @g1, i32 1, i32 2, i32 1, i64 5, i64 13)
}
