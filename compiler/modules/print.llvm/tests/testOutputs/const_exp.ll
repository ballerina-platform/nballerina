@g1 = external constant {i64, i32, i8}
@g2 = global ptr getelementptr inbounds({i64, i32, i8}, ptr @g1, i32 0, i32 0)
@g3 = global ptr bitcast(ptr @g2 to ptr)
@g4 = external constant ptr
@g5 = global ptr addrspace(1) addrspacecast(ptr @g4 to ptr addrspace(1))
