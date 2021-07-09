declare i64 addrspace (3) * @genFn ()
define i64* @main () {
  %_0 = call i64 addrspace (3) * @genFn ()
  %_1 = addrspacecast i64 addrspace (3) * %_0 to i64*
  ret i64* %_1
}
