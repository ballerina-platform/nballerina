@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %_0 = alloca i1
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
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L2, label %L1
L1:
  %_15 = call i8 addrspace (1)* @_B_mkInt (i64 2)
  store i8 addrspace (1)* %_15, i8 addrspace (1)** %_1
  %_16 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_17 = addrspacecast i8 addrspace (1)* %_16 to i8*
  %_18 = ptrtoint i8* %_17 to i64
  %_19 = and i64 %_18, 2233785415175766016
  %_20 = icmp eq i64 %_19, 504403158265495552
  br i1 %_20, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_21 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_16)
  %_22 = icmp eq i64 %_21, 2
  store i1 %_22, i1* %_0
  br label %L5
L4:
  store i1 0, i1* %_0
  br label %L5
L5:
  %_23 = load i1, i1* %_0
  %_24 = zext i1 %_23 to i64
  %_25 = or i64 %_24, 72057594037927936
  %_26 = getelementptr i8, i8 addrspace (1)* null, i64 %_25
  call void @_Bio__println (i8 addrspace (1)* %_26)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_27 = call i8 addrspace (1)* @_B_mkInt (i64 17)
  store i8 addrspace (1)* %_27, i8 addrspace (1)** %_4
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  %_29 = addrspacecast i8 addrspace (1)* %_28 to i8*
  %_30 = ptrtoint i8* %_29 to i64
  %_31 = and i64 %_30, 2233785415175766016
  %_32 = icmp eq i64 %_31, 504403158265495552
  br i1 %_32, label %L6, label %L7
L6:
  %_33 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_28)
  %_34 = icmp ne i64 %_33, 17
  store i1 %_34, i1* %_3
  br label %L8
L7:
  store i1 1, i1* %_3
  br label %L8
L8:
  %_35 = load i1, i1* %_3
  %_36 = zext i1 %_35 to i64
  %_37 = or i64 %_36, 72057594037927936
  %_38 = getelementptr i8, i8 addrspace (1)* null, i64 %_37
  call void @_Bio__println (i8 addrspace (1)* %_38)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_39 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_39, i8 addrspace (1)** %_7
  %_40 = load i8 addrspace (1)*, i8 addrspace (1)** %_7
  %_41 = zext i1 1 to i64
  %_42 = or i64 %_41, 72057594037927936
  %_43 = getelementptr i8, i8 addrspace (1)* null, i64 %_42
  %_44 = icmp eq i8 addrspace (1)* %_40, %_43
  store i1 %_44, i1* %_6
  %_45 = load i1, i1* %_6
  %_46 = zext i1 %_45 to i64
  %_47 = or i64 %_46, 72057594037927936
  %_48 = getelementptr i8, i8 addrspace (1)* null, i64 %_47
  call void @_Bio__println (i8 addrspace (1)* %_48)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_49 = call i8 addrspace (1)* @_B_mkBoolean (i1 0)
  store i8 addrspace (1)* %_49, i8 addrspace (1)** %_10
  %_50 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_51 = zext i1 0 to i64
  %_52 = or i64 %_51, 72057594037927936
  %_53 = getelementptr i8, i8 addrspace (1)* null, i64 %_52
  %_54 = icmp ne i8 addrspace (1)* %_50, %_53
  store i1 %_54, i1* %_9
  %_55 = load i1, i1* %_9
  %_56 = zext i1 %_55 to i64
  %_57 = or i64 %_56, 72057594037927936
  %_58 = getelementptr i8, i8 addrspace (1)* null, i64 %_57
  call void @_Bio__println (i8 addrspace (1)* %_58)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  ret void
}
define internal i8 addrspace (1)* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8 addrspace (1)* null
L2:
  call void @_bal_panic (i64 2564)
  unreachable
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
  call void @_bal_panic (i64 3588)
  unreachable
}
define internal i8 addrspace (1)* @_B_mkBoolean (i1 %_0) {
  %b = alloca i1
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i1 %_0, i1* %b
  %_4 = load i1, i1* %b
  %_5 = zext i1 %_4 to i64
  %_6 = or i64 %_5, 72057594037927936
  %_7 = getelementptr i8, i8 addrspace (1)* null, i64 %_6
  ret i8 addrspace (1)* %_7
L2:
  call void @_bal_panic (i64 4612)
  unreachable
}
