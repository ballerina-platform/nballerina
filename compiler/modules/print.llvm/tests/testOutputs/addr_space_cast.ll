declare i64 addrspace (3)* @genFn ()
define i64* @main () {
  %1 = call i64 addrspace (3)* @genFn ()
  %2 = addrspacecast i64 addrspace (3)* %1 to i64*
  ret i64* %2
}
