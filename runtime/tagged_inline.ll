declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable

define i8 addrspace(1)* @_bal_tagged_to_ptr(i8 addrspace(1)* %0) alwaysinline {
  %2 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %0, i64 72057594037927928)
  ret i8 addrspace(1)* %2
}

define i8 addrspace(1)* @_bal_tagged_to_ptr_exact(i8 addrspace(1)* %0) alwaysinline {
  %2 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %0, i64 72057594037927932)
  ret i8 addrspace(1)* %2
}

define i8 addrspace(1)* @_bal_tagged_clear_exact(i8 addrspace(1)* %0) alwaysinline {
  ; %2 contains ptr with exact bit cleared
  %2 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %0, i64 -5)
  ; %3 contains the immediate bit
  %3 = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %0, i64 2305843009213693952)
  ; %4 is true if there is no immediate bit
  %4 = icmp eq i8 addrspace(1)* %3, null
  ; if there's no immediate bit, clear the exact bit; otherwise do nothing
  %5 = select i1 %4, i8 addrspace(1)* %2, i8 addrspace(1)* %0
  ret i8 addrspace(1)* %5
}
