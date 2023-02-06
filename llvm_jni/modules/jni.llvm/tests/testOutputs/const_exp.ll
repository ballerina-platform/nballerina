@g1 = external constant { i64, i32, i8 }
@g2 = global ptr @g1
@g3 = global ptr @g2
@g4 = external constant ptr
@g5 = global ptr addrspace(1) addrspacecast (ptr @g4 to ptr addrspace(1))
