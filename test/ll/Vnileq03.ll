@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i1
  %_7 = alloca i8 addrspace (1)*
  %x = alloca i8 addrspace (1)*
  %_8 = alloca i1
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i1
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i8
  %_14 = load i8*, i8** @_bal_stack_guard
  %_15 = icmp ult i8* %_13, %_14
  br i1 %_15, label %L2, label %L1
L1:
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_16 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_17 = icmp eq i8 addrspace (1)* %_16, null
  store i1 %_17, i1* %_0
  %_18 = load i1, i1* %_0
  %_19 = zext i1 %_18 to i64
  %_20 = or i64 %_19, 72057594037927936
  %_21 = getelementptr i8, i8 addrspace (1)* null, i64 %_20
  call void @_Bio__println (i8 addrspace (1)* %_21)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  call void @_B_makeNil ()
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_22 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_23 = icmp eq i8 addrspace (1)* %_22, null
  store i1 %_23, i1* %_3
  %_24 = load i1, i1* %_3
  %_25 = zext i1 %_24 to i64
  %_26 = or i64 %_25, 72057594037927936
  %_27 = getelementptr i8, i8 addrspace (1)* null, i64 %_26
  call void @_Bio__println (i8 addrspace (1)* %_27)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_28 = icmp ne i8 addrspace (1)* null, null
  store i1 %_28, i1* %_6
  %_29 = load i1, i1* %_6
  %_30 = zext i1 %_29 to i64
  %_31 = or i64 %_30, 72057594037927936
  %_32 = getelementptr i8, i8 addrspace (1)* null, i64 %_31
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  store i8 addrspace (1)* null, i8 addrspace (1)** %x
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_34 = icmp eq i8 addrspace (1)* %_33, null
  store i1 %_34, i1* %_8
  %_35 = load i1, i1* %_8
  %_36 = zext i1 %_35 to i64
  %_37 = or i64 %_36, 72057594037927936
  %_38 = getelementptr i8, i8 addrspace (1)* null, i64 %_37
  call void @_Bio__println (i8 addrspace (1)* %_38)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_9
  %_39 = call i8 addrspace (1)* @_B_makeNilAny ()
  store i8 addrspace (1)* %_39, i8 addrspace (1)** %_11
  %_40 = load i8 addrspace (1)*, i8 addrspace (1)** %_11
  %_41 = icmp ne i8 addrspace (1)* %_40, null
  store i1 %_41, i1* %_10
  %_42 = load i1, i1* %_10
  %_43 = zext i1 %_42 to i64
  %_44 = or i64 %_43, 72057594037927936
  %_45 = getelementptr i8, i8 addrspace (1)* null, i64 %_44
  call void @_Bio__println (i8 addrspace (1)* %_45)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  ret void
L2:
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
  call void @_bal_panic (i64 3076)
  unreachable
}
define internal i8 addrspace (1)* @_B_makeNilAny () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8 addrspace (1)* null
L2:
  call void @_bal_panic (i64 4100)
  unreachable
}
