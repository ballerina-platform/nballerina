@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %x = alloca i64
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L2, label %L1
L1:
  store i64 0, i64* %x
  %_6 = load i64, i64* %x
  %_7 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_8 = bitcast i8 addrspace (1)* %_7 to i64 addrspace (1)*
  store i64 %_6, i64 addrspace (1)* %_8, align 8
  %_9 = getelementptr i8, i8 addrspace (1)* %_7, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_9)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  store i64 1, i64* %x
  %_10 = load i64, i64* %x
  %_11 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_12 = bitcast i8 addrspace (1)* %_11 to i64 addrspace (1)*
  store i64 %_10, i64 addrspace (1)* %_12, align 8
  %_13 = getelementptr i8, i8 addrspace (1)* %_11, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  store i64 2, i64* %x
  %_14 = load i64, i64* %x
  %_15 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_16 = bitcast i8 addrspace (1)* %_15 to i64 addrspace (1)*
  store i64 %_14, i64 addrspace (1)* %_16, align 8
  %_17 = getelementptr i8, i8 addrspace (1)* %_15, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_17)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
