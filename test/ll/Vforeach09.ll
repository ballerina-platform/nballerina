@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L6, label %L1
L1:
  %_6 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_7 = bitcast i8 addrspace (1)* %_6 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_7, align 8
  %_8 = getelementptr i8, i8 addrspace (1)* %_6, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_8)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  store i64 0, i64* %i
  br label %L2
L2:
  %_9 = load i64, i64* %i
  %_10 = icmp slt i64 %_9, 1000
  store i1 %_10, i1* %_1
  %_11 = load i1, i1* %_1
  br i1 %_11, label %L5, label %L3
L3:
  %_12 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_13 = bitcast i8 addrspace (1)* %_12 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_13, align 8
  %_14 = getelementptr i8, i8 addrspace (1)* %_12, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L4:
  %_15 = load i64, i64* %i
  %_16 = add nsw i64 %_15, 1
  store i64 %_16, i64* %i
  br label %L2
L5:
  br label %L4
L6:
  call void @_bal_panic (i64 772)
  unreachable
}
