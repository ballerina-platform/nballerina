@g = internal addrspace(1) global i64 5
@a = alias i64, i64 addrspace(1)* @g
@b = internal alias i64, i64 addrspace(1)* @g
@c = internal unnamed_addr alias i64, i64 addrspace(1)* @g
@d = unnamed_addr alias i64, i64 addrspace(1)* @g
define i64 @main() {
  %1 = load i64, i64 addrspace(1)* @a
  ret i64 %1
}
