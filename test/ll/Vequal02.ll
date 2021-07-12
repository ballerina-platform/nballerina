@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %x = alloca i8 addrspace (1)*
  %y = alloca i8 addrspace (1)*
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L2, label %L1
L1:
  %_8 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_8, i8 addrspace (1)** %_0
  %_9 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_9, i8 addrspace (1)** %x
  %_10 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  store i8 addrspace (1)* %_10, i8 addrspace (1)** %y
  %_11 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_12 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  %_13 = icmp eq i8 addrspace (1)* %_11, %_12
  br i1 %_13, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_1
  br label %L5
L4:
  %_14 = addrspacecast i8 addrspace (1)* %_11 to i8*
  %_15 = ptrtoint i8* %_14 to i64
  %_16 = and i64 %_15, 2233785415175766016
  %_17 = icmp eq i64 %_16, 504403158265495552
  %_18 = addrspacecast i8 addrspace (1)* %_12 to i8*
  %_19 = ptrtoint i8* %_18 to i64
  %_20 = and i64 %_19, 2233785415175766016
  %_21 = icmp eq i64 %_20, 504403158265495552
  %_22 = and i1 %_17, %_21
  br i1 %_22, label %L6, label %L7
L5:
  %_26 = load i1, i1* %_1
  %_27 = zext i1 %_26 to i64
  %_28 = or i64 %_27, 72057594037927936
  %_29 = getelementptr i8, i8 addrspace (1)* null, i64 %_28
  call void @_Bio__println (i8 addrspace (1)* %_29)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_30 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_31 = load i8 addrspace (1)*, i8 addrspace (1)** %y
  %_32 = icmp eq i8 addrspace (1)* %_30, %_31
  br i1 %_32, label %L8, label %L9
L6:
  %_23 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_11)
  %_24 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_12)
  %_25 = icmp eq i64 %_23, %_24
  store i1 %_25, i1* %_1
  br label %L5
L7:
  store i1 0, i1* %_1
  br label %L5
L8:
  store i1 0, i1* %_3
  br label %L10
L9:
  %_33 = addrspacecast i8 addrspace (1)* %_30 to i8*
  %_34 = ptrtoint i8* %_33 to i64
  %_35 = and i64 %_34, 2233785415175766016
  %_36 = icmp eq i64 %_35, 504403158265495552
  %_37 = addrspacecast i8 addrspace (1)* %_31 to i8*
  %_38 = ptrtoint i8* %_37 to i64
  %_39 = and i64 %_38, 2233785415175766016
  %_40 = icmp eq i64 %_39, 504403158265495552
  %_41 = and i1 %_36, %_40
  br i1 %_41, label %L11, label %L12
L10:
  %_45 = load i1, i1* %_3
  %_46 = zext i1 %_45 to i64
  %_47 = or i64 %_46, 72057594037927936
  %_48 = getelementptr i8, i8 addrspace (1)* null, i64 %_47
  call void @_Bio__println (i8 addrspace (1)* %_48)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  ret void
L11:
  %_42 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_30)
  %_43 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_31)
  %_44 = icmp ne i64 %_42, %_43
  store i1 %_44, i1* %_3
  br label %L10
L12:
  store i1 1, i1* %_3
  br label %L10
}
define internal i8 addrspace (1)* @_B_mkInt (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_4)
  ret i8 addrspace (1)* %_5
L2:
  call void @_bal_panic (i64 2564)
  unreachable
}
