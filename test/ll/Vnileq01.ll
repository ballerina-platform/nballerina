@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i1
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i1
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i1
  %b = alloca i1
  %_14 = alloca i8 addrspace (1)*
  %_15 = alloca i8
  %_16 = load i8*, i8** @_bal_stack_guard
  %_17 = icmp ult i8* %_15, %_16
  br i1 %_17, label %L12, label %L1
L1:
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_18 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_19 = icmp eq i8 addrspace (1)* %_18, null
  store i1 %_19, i1* %_0
  %_20 = load i1, i1* %_0
  br i1 %_20, label %L2, label %L3
L2:
  %_21 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1)
  call void @_Bio__println (i8 addrspace (1)* %_21)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  br label %L3
L3:
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_22 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_23 = icmp eq i8 addrspace (1)* null, %_22
  store i1 %_23, i1* %_3
  %_24 = load i1, i1* %_3
  br i1 %_24, label %L4, label %L5
L4:
  %_25 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 2)
  call void @_Bio__println (i8 addrspace (1)* %_25)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L5
L5:
  %_26 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 3)
  call void @_Bio__println (i8 addrspace (1)* %_26)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_27 = load i8 addrspace (1)*, i8 addrspace (1)** %_8
  %_28 = icmp ne i8 addrspace (1)* %_27, null
  store i1 %_28, i1* %_7
  %_29 = load i1, i1* %_7
  br i1 %_29, label %L6, label %L7
L6:
  %_30 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 4)
  call void @_Bio__println (i8 addrspace (1)* %_30)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  br label %L7
L7:
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  %_31 = load i8 addrspace (1)*, i8 addrspace (1)** %_11
  %_32 = icmp ne i8 addrspace (1)* null, %_31
  store i1 %_32, i1* %_10
  %_33 = load i1, i1* %_10
  br i1 %_33, label %L8, label %L9
L8:
  %_34 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 5)
  call void @_Bio__println (i8 addrspace (1)* %_34)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  br label %L9
L9:
  %_35 = icmp ne i8 addrspace (1)* null, null
  store i1 %_35, i1* %_13
  %_36 = load i1, i1* %_13
  store i1 %_36, i1* %b
  %_37 = load i1, i1* %b
  br i1 %_37, label %L10, label %L11
L10:
  %_38 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 6)
  call void @_Bio__println (i8 addrspace (1)* %_38)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_14
  br label %L11
L11:
  ret void
L12:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_makeNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret void
L2:
  call void @_bal_panic (i64 6404)
  unreachable
}
