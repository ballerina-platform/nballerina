declare ptr addrspace(3) @genFn()

define ptr @main() {
  %1 = call ptr addrspace(3) @genFn()
  %2 = addrspacecast ptr addrspace(3) %1 to ptr
  ret ptr %2
}
