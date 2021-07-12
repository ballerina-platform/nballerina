@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i64
  %_11 = alloca i64
  %_12 = alloca i8 addrspace (1)*
  %_13 = alloca i64
  %_14 = alloca i64
  %_15 = alloca i64
  %_16 = alloca i64
  %_17 = alloca i8 addrspace (1)*
  %_18 = alloca i64
  %_19 = alloca i64
  %_20 = alloca i64
  %_21 = alloca i64
  %_22 = alloca i64
  %_23 = alloca i8 addrspace (1)*
  %_24 = alloca i64
  %_25 = alloca i64
  %_26 = alloca i64
  %_27 = alloca i64
  %_28 = alloca i64
  %_29 = alloca i64
  %_30 = alloca i64
  %_31 = alloca i8 addrspace (1)*
  %_32 = alloca i8
  %_33 = load i8*, i8** @_bal_stack_guard
  %_34 = icmp ult i8* %_32, %_33
  br i1 %_34, label %L2, label %L1
L1:
  %_35 = call i64 @_B_div (i64 60, i64 2)
  store i64 %_35, i64* %_0
  %_36 = load i64, i64* %_0
  %_37 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_36)
  call void @_Bio__println (i8 addrspace (1)* %_37)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_38 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_38, i64* %_2
  %_39 = load i64, i64* %_2
  %_40 = call i64 @_B_div (i64 %_39, i64 4)
  store i64 %_40, i64* %_3
  %_41 = load i64, i64* %_3
  %_42 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_41)
  call void @_Bio__println (i8 addrspace (1)* %_42)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_43 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_43, i64* %_5
  %_44 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_44, i64* %_6
  %_45 = load i64, i64* %_5
  %_46 = load i64, i64* %_6
  %_47 = call i64 @_B_div (i64 %_45, i64 %_46)
  store i64 %_47, i64* %_7
  %_48 = load i64, i64* %_7
  %_49 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_48)
  call void @_Bio__println (i8 addrspace (1)* %_49)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  %_50 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_50, i64* %_9
  %_51 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_51, i64* %_10
  %_52 = load i64, i64* %_9
  %_53 = load i64, i64* %_10
  %_54 = call i64 @_B_div (i64 %_52, i64 %_53)
  store i64 %_54, i64* %_11
  %_55 = load i64, i64* %_11
  %_56 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_55)
  call void @_Bio__println (i8 addrspace (1)* %_56)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_12
  %_57 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_57, i64* %_13
  %_58 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_58, i64* %_14
  %_59 = load i64, i64* %_13
  %_60 = load i64, i64* %_14
  %_61 = call i64 @_B_div (i64 %_59, i64 %_60)
  store i64 %_61, i64* %_15
  %_62 = load i64, i64* %_15
  %_63 = call i64 @_B_div (i64 %_62, i64 2)
  store i64 %_63, i64* %_16
  %_64 = load i64, i64* %_16
  %_65 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_64)
  call void @_Bio__println (i8 addrspace (1)* %_65)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_17
  %_66 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_66, i64* %_18
  %_67 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_67, i64* %_19
  %_68 = load i64, i64* %_18
  %_69 = load i64, i64* %_19
  %_70 = call i64 @_B_div (i64 %_68, i64 %_69)
  store i64 %_70, i64* %_20
  %_71 = call i64 @_B_div (i64 10, i64 5)
  store i64 %_71, i64* %_21
  %_72 = load i64, i64* %_20
  %_73 = load i64, i64* %_21
  %_74 = call i64 @_B_div (i64 %_72, i64 %_73)
  store i64 %_74, i64* %_22
  %_75 = load i64, i64* %_22
  %_76 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_75)
  call void @_Bio__println (i8 addrspace (1)* %_76)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_23
  %_77 = call i64 @_B_div (i64 120, i64 3)
  store i64 %_77, i64* %_24
  %_78 = call i64 @_B_div (i64 16, i64 4)
  store i64 %_78, i64* %_25
  %_79 = load i64, i64* %_24
  %_80 = load i64, i64* %_25
  %_81 = call i64 @_B_div (i64 %_79, i64 %_80)
  store i64 %_81, i64* %_26
  %_82 = call i64 @_B_div (i64 400, i64 20)
  store i64 %_82, i64* %_27
  %_83 = call i64 @_B_div (i64 100, i64 10)
  store i64 %_83, i64* %_28
  %_84 = load i64, i64* %_27
  %_85 = load i64, i64* %_28
  %_86 = call i64 @_B_div (i64 %_84, i64 %_85)
  store i64 %_86, i64* %_29
  %_87 = load i64, i64* %_26
  %_88 = load i64, i64* %_29
  %_89 = call i64 @_B_div (i64 %_87, i64 %_88)
  store i64 %_89, i64* %_30
  %_90 = load i64, i64* %_30
  %_91 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_90)
  call void @_Bio__println (i8 addrspace (1)* %_91)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_31
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_div (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_7 = load i64, i64* %x
  %_8 = load i64, i64* %y
  %_9 = icmp eq i64 %_8, 0
  br i1 %_9, label %L4, label %L5
L2:
  %_15 = load i64, i64* %_3
  call void @_bal_panic (i64 %_15)
  unreachable
L3:
  call void @_bal_panic (i64 3332)
  unreachable
L4:
  store i64 3586, i64* %_3
  br label %L2
L5:
  %_10 = icmp eq i64 %_7, -9223372036854775808
  %_11 = icmp eq i64 %_8, -1
  %_12 = and i1 %_10, %_11
  br i1 %_12, label %L7, label %L6
L6:
  %_13 = sdiv i64 %_7, %_8
  store i64 %_13, i64* %_2
  %_14 = load i64, i64* %_2
  ret i64 %_14
L7:
  store i64 3585, i64* %_3
  br label %L2
}
