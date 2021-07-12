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
  %_6 = alloca i1
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i1
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i1
  %_13 = alloca i8 addrspace (1)*
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L17, label %L1
L1:
  %_18 = icmp eq i1 1, 1
  store i1 %_18, i1* %_0
  %_19 = load i1, i1* %_0
  store i1 %_19, i1* %b
  %_20 = load i1, i1* %b
  br i1 %_20, label %L2, label %L3
L2:
  %_21 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 4)
  call void @_Bio__println (i8 addrspace (1)* %_21)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  br label %L4
L3:
  %_22 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 5)
  call void @_Bio__println (i8 addrspace (1)* %_22)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L4
L4:
  %_23 = icmp eq i1 0, 0
  store i1 %_23, i1* %_3
  %_24 = load i1, i1* %_3
  store i1 %_24, i1* %b
  %_25 = load i1, i1* %b
  br i1 %_25, label %L5, label %L6
L5:
  %_26 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 6)
  call void @_Bio__println (i8 addrspace (1)* %_26)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  br label %L7
L6:
  %_27 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 7)
  call void @_Bio__println (i8 addrspace (1)* %_27)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L7
L7:
  %_28 = icmp ne i1 1, 1
  store i1 %_28, i1* %_6
  %_29 = load i1, i1* %_6
  store i1 %_29, i1* %b
  %_30 = load i1, i1* %b
  br i1 %_30, label %L8, label %L9
L8:
  %_31 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 8)
  call void @_Bio__println (i8 addrspace (1)* %_31)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  br label %L10
L9:
  %_32 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 9)
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  br label %L10
L10:
  store i1 1, i1* %b
  %_33 = load i1, i1* %b
  %_34 = icmp eq i1 %_33, 1
  store i1 %_34, i1* %_9
  %_35 = load i1, i1* %_9
  br i1 %_35, label %L11, label %L12
L11:
  %_36 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 10)
  call void @_Bio__println (i8 addrspace (1)* %_36)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_10
  br label %L13
L12:
  %_37 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 11)
  call void @_Bio__println (i8 addrspace (1)* %_37)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  br label %L13
L13:
  store i1 0, i1* %b
  %_38 = load i1, i1* %b
  %_39 = icmp eq i1 1, %_38
  store i1 %_39, i1* %_12
  %_40 = load i1, i1* %_12
  br i1 %_40, label %L14, label %L15
L14:
  %_41 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 12)
  call void @_Bio__println (i8 addrspace (1)* %_41)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_13
  br label %L16
L15:
  %_42 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 13)
  call void @_Bio__println (i8 addrspace (1)* %_42)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  br label %L16
L16:
  ret void
L17:
  call void @_bal_panic (i64 772)
  unreachable
}
