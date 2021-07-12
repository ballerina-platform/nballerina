@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i1
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L8, label %L1
L1:
  store i64 6, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = icmp slt i64 %_8, 10
  store i1 %_9, i1* %_0
  %_10 = load i1, i1* %_0
  br i1 %_10, label %L5, label %L3
L3:
  %_11 = zext i1 0 to i64
  %_12 = or i64 %_11, 72057594037927936
  %_13 = getelementptr i8, i8 addrspace (1)* null, i64 %_12
  call void @_Bio__println (i8 addrspace (1)* %_13)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  ret void
L4:
  %_14 = load i64, i64* %i
  %_15 = add nsw i64 %_14, 1
  store i64 %_15, i64* %i
  br label %L2
L5:
  %_16 = load i64, i64* %i
  %_17 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_16)
  call void @_Bio__println (i8 addrspace (1)* %_17)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_18 = load i64, i64* %i
  %_19 = icmp eq i64 %_18, 6
  store i1 %_19, i1* %_2
  %_20 = load i1, i1* %_2
  br i1 %_20, label %L6, label %L7
L6:
  br label %L4
L7:
  %_21 = zext i1 1 to i64
  %_22 = or i64 %_21, 72057594037927936
  %_23 = getelementptr i8, i8 addrspace (1)* null, i64 %_22
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L8:
  call void @_bal_panic (i64 772)
  unreachable
}
