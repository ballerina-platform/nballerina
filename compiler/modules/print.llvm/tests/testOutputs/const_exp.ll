@g1 = external constant {i64, i32, i8}
@g2 = global i64* getelementptr inbounds({i64, i32, i8}, {i64, i32, i8}* @g1, i32 0, i32 0)
@g3 = global i32* bitcast(i64** @g2 to i32*)
