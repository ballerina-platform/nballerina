@g1 = external global { i32, ptr }
@g2 = external global ptr
@g3 = global ptr @otherFn

declare i8 @otherFn(i64)
