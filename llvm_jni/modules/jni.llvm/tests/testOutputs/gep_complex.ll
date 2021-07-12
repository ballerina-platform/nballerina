
@g1 = external global { i64, i64, { i64, [10 x [20 x i64]], i64 } }
@g2 = external global { i8, i8, { i32, [10 x i64 addrspace(1)*], i32 } }

define i64* @foo() {
  ret i64* getelementptr ({ i64, i64, { i64, [10 x [20 x i64]], i64 } }, { i64, i64, { i64, [10 x [20 x i64]], i64 } }* @g1, i32 1, i32 2, i32 1, i64 5, i64 13)
}

define i64 addrspace(1)** @bar() {
  ret i64 addrspace(1)** getelementptr ({ i8, i8, { i32, [10 x i64 addrspace(1)*], i32 } }, { i8, i8, { i32, [10 x i64 addrspace(1)*], i32 } }* @g2, i32 1, i32 2, i32 1, i32 4)
}
