@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %b = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %x = alloca i64
  %_6 = alloca i1
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L14, label %L1
L1:
  %_15 = icmp eq i64 17, 17
  store i1 %_15, i1* %_0
  %_16 = load i1, i1* %_0
  store i1 %_16, i1* %b
  %_17 = load i1, i1* %b
  br i1 %_17, label %L2, label %L3
L2:
  %_18 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 17)
  call void @_Bio__println (i8 addrspace (1)* %_18)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L3:
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_19)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L4:
  %_20 = icmp ne i64 21, 21
  store i1 %_20, i1* %_3
  %_21 = load i1, i1* %_3
  store i1 %_21, i1* %b
  %_22 = load i1, i1* %b
  br i1 %_22, label %L5, label %L6
L5:
  %_23 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  br label %L7
L6:
  %_24 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 21)
  call void @_Bio__println (i8 addrspace (1)* %_24)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L7
L7:
  store i64 42, i64* %x
  %_25 = load i64, i64* %x
  %_26 = icmp eq i64 %_25, 42
  store i1 %_26, i1* %_6
  %_27 = load i1, i1* %_6
  br i1 %_27, label %L8, label %L9
L8:
  %_28 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 42)
  call void @_Bio__println (i8 addrspace (1)* %_28)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  br label %L10
L9:
  %_29 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_29)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  br label %L10
L10:
  %_30 = load i64, i64* %x
  %_31 = icmp ne i64 42, %_30
  store i1 %_31, i1* %_9
  %_32 = load i1, i1* %_9
  br i1 %_32, label %L11, label %L12
L11:
  %_33 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  call void @_Bio__println (i8 addrspace (1)* %_33)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  br label %L13
L12:
  %_34 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 42)
  call void @_Bio__println (i8 addrspace (1)* %_34)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  br label %L13
L13:
  ret void
L14:
  call void @_bal_panic (i64 772)
  unreachable
}
