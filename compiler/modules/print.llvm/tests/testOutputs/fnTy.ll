@g1 = external global {i32, i64(i8, i64)*}
@g2 = external global i64(i8, i64)*
@g3 = global i8(i64)* @otherFn
declare i8 @otherFn(i64)
