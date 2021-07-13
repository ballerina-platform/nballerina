@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %x = alloca i8 addrspace (1)*
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i1
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i1
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8
  %_8 = load i8*, i8** @_bal_stack_guard
  %_9 = icmp ult i8* %_7, %_8
  br i1 %_9, label %L2, label %L1
L1:
  %_10 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_11 = bitcast i8 addrspace (1)* %_10 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_12 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 17)
  %_13 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_11, i64 0, i64 0
  store i8 addrspace (1)* %_12, i8 addrspace (1)* addrspace (1)* %_13
  %_14 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_11 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_15 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_16 = bitcast i8 addrspace (1)* %_15 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_17 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_16, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_17
  %_18 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_16, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_18
  %_19 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_16, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_14, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_19
  %_20 = getelementptr i8, i8 addrspace (1)* %_15, i64 1297036692682702848
  store i8 addrspace (1)* %_20, i8 addrspace (1)** %_0
  %_21 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_21, i8 addrspace (1)** %x
  %_22 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_23 = addrspacecast i8 addrspace (1)* %_22 to i8*
  %_24 = ptrtoint i8* %_23 to i64
  %_25 = and i64 %_24, 2233785415175766016
  %_26 = icmp eq i64 %_25, 504403158265495552
  br i1 %_26, label %L3, label %L4
L2:
  call void @_bal_panic (i64 772)
  unreachable
L3:
  %_27 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_22)
  %_28 = icmp eq i64 %_27, 1
  store i1 %_28, i1* %_1
  br label %L5
L4:
  store i1 0, i1* %_1
  br label %L5
L5:
  %_29 = load i1, i1* %_1
  %_30 = zext i1 %_29 to i64
  %_31 = or i64 %_30, 72057594037927936
  %_32 = getelementptr i8, i8 addrspace (1)* null, i64 %_31
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_34 = zext i1 1 to i64
  %_35 = or i64 %_34, 72057594037927936
  %_36 = getelementptr i8, i8 addrspace (1)* null, i64 %_35
  %_37 = icmp ne i8 addrspace (1)* %_33, %_36
  store i1 %_37, i1* %_3
  %_38 = load i1, i1* %_3
  %_39 = zext i1 %_38 to i64
  %_40 = or i64 %_39, 72057594037927936
  %_41 = getelementptr i8, i8 addrspace (1)* null, i64 %_40
  call void @_Bio__println (i8 addrspace (1)* %_41)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_42 = load i8 addrspace (1)*, i8 addrspace (1)** %x
  %_43 = icmp eq i8 addrspace (1)* %_42, null
  store i1 %_43, i1* %_5
  %_44 = load i1, i1* %_5
  %_45 = zext i1 %_44 to i64
  %_46 = or i64 %_45, 72057594037927936
  %_47 = getelementptr i8, i8 addrspace (1)* null, i64 %_46
  call void @_Bio__println (i8 addrspace (1)* %_47)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  ret void
}
