@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i1
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i1
  %_9 = alloca i8 addrspace (1)*
  %_10 = alloca i8 addrspace (1)*
  %_11 = alloca i8 addrspace (1)*
  %_12 = alloca i8
  %_13 = load i8*, i8** @_bal_stack_guard
  %_14 = icmp ult i8* %_12, %_13
  br i1 %_14, label %L2, label %L1
L1:
  %_15 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_15, i8 addrspace (1)** %_1
  %_16 = call i8 addrspace (1)* @_B_mkNil ()
  store i8 addrspace (1)* %_16, i8 addrspace (1)** %_2
  %_17 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  %_18 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  %_19 = icmp eq i8 addrspace (1)* %_17, %_18
  br i1 %_19, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  store i1 1, i1* %_0
  br label %L5
L4:
  %_20 = addrspacecast i8 addrspace (1)* %_17 to i8*
  %_21 = ptrtoint i8* %_20 to i64
  %_22 = and i64 %_21, 2233785415175766016
  %_23 = icmp eq i64 %_22, 504403158265495552
  %_24 = addrspacecast i8 addrspace (1)* %_18 to i8*
  %_25 = ptrtoint i8* %_24 to i64
  %_26 = and i64 %_25, 2233785415175766016
  %_27 = icmp eq i64 %_26, 504403158265495552
  %_28 = and i1 %_23, %_27
  br i1 %_28, label %L6, label %L7
L5:
  %_32 = load i1, i1* %_0
  %_33 = zext i1 %_32 to i64
  %_34 = or i64 %_33, 72057594037927936
  %_35 = getelementptr i8, i8 addrspace (1)* null, i64 %_34
  call void @_Bio__println (i8 addrspace (1)* %_35)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_36 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_36, i8 addrspace (1)** %_5
  %_37 = call i8 addrspace (1)* @_B_mkInt (i64 1)
  store i8 addrspace (1)* %_37, i8 addrspace (1)** %_6
  %_38 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_39 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  %_40 = icmp eq i8 addrspace (1)* %_38, %_39
  br i1 %_40, label %L8, label %L9
L6:
  %_29 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_17)
  %_30 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_18)
  %_31 = icmp eq i64 %_29, %_30
  store i1 %_31, i1* %_0
  br label %L5
L7:
  store i1 0, i1* %_0
  br label %L5
L8:
  store i1 0, i1* %_4
  br label %L10
L9:
  %_41 = addrspacecast i8 addrspace (1)* %_38 to i8*
  %_42 = ptrtoint i8* %_41 to i64
  %_43 = and i64 %_42, 2233785415175766016
  %_44 = icmp eq i64 %_43, 504403158265495552
  %_45 = addrspacecast i8 addrspace (1)* %_39 to i8*
  %_46 = ptrtoint i8* %_45 to i64
  %_47 = and i64 %_46, 2233785415175766016
  %_48 = icmp eq i64 %_47, 504403158265495552
  %_49 = and i1 %_44, %_48
  br i1 %_49, label %L11, label %L12
L10:
  %_53 = load i1, i1* %_4
  %_54 = zext i1 %_53 to i64
  %_55 = or i64 %_54, 72057594037927936
  %_56 = getelementptr i8, i8 addrspace (1)* null, i64 %_55
  call void @_Bio__println (i8 addrspace (1)* %_56)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  %_57 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_57, i8 addrspace (1)** %_9
  %_58 = call i8 addrspace (1)* @_B_mkBoolean (i1 1)
  store i8 addrspace (1)* %_58, i8 addrspace (1)** %_10
  %_59 = load i8 addrspace (1)*, i8 addrspace (1)** %_9
  %_60 = load i8 addrspace (1)*, i8 addrspace (1)** %_10
  %_61 = icmp eq i8 addrspace (1)* %_59, %_60
  br i1 %_61, label %L13, label %L14
L11:
  %_50 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_38)
  %_51 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_39)
  %_52 = icmp ne i64 %_50, %_51
  store i1 %_52, i1* %_4
  br label %L10
L12:
  store i1 1, i1* %_4
  br label %L10
L13:
  store i1 1, i1* %_8
  br label %L15
L14:
  %_62 = addrspacecast i8 addrspace (1)* %_59 to i8*
  %_63 = ptrtoint i8* %_62 to i64
  %_64 = and i64 %_63, 2233785415175766016
  %_65 = icmp eq i64 %_64, 504403158265495552
  %_66 = addrspacecast i8 addrspace (1)* %_60 to i8*
  %_67 = ptrtoint i8* %_66 to i64
  %_68 = and i64 %_67, 2233785415175766016
  %_69 = icmp eq i64 %_68, 504403158265495552
  %_70 = and i1 %_65, %_69
  br i1 %_70, label %L16, label %L17
L15:
  %_74 = load i1, i1* %_8
  %_75 = zext i1 %_74 to i64
  %_76 = or i64 %_75, 72057594037927936
  %_77 = getelementptr i8, i8 addrspace (1)* null, i64 %_76
  call void @_Bio__println (i8 addrspace (1)* %_77)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_11
  ret void
L16:
  %_71 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_59)
  %_72 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_60)
  %_73 = icmp eq i64 %_71, %_72
  store i1 %_73, i1* %_8
  br label %L15
L17:
  store i1 0, i1* %_8
  br label %L15
}
define internal i8 addrspace (1)* @_B_mkNil () {
  %_0 = alloca i8
  %_1 = load i8*, i8** @_bal_stack_guard
  %_2 = icmp ult i8* %_0, %_1
  br i1 %_2, label %L2, label %L1
L1:
  ret i8 addrspace (1)* null
L2:
  call void @_bal_panic (i64 2308)
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
  call void @_bal_panic (i64 3332)
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
  call void @_bal_panic (i64 4356)
  unreachable
}
