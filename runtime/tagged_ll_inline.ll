declare i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)*, i64) readnone speculatable

define i8 addrspace(1)* @_bal_ptr_mask(i8 addrspace(1)* %ptr, i64 %mask) alwaysinline readnone {
  %result = call i8 addrspace(1)* @llvm.ptrmask.p1i8.i64(i8 addrspace(1)* %ptr, i64 %mask)
  ret i8 addrspace(1)* %result
}

