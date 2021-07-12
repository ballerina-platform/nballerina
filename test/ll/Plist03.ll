@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %val = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i8
  %_8 = load i8*, i8** @_bal_stack_guard
  %_9 = icmp ult i8* %_7, %_8
  br i1 %_9, label %L6, label %L1
L1:
  %_10 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_11 = bitcast i8 addrspace (1)* %_10 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_12 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_11, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_12
  %_13 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_11, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_13
  %_14 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_11, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_14
  %_15 = getelementptr i8, i8 addrspace (1)* %_10, i64 1297036692682702848
  store i8 addrspace (1)* %_15, i8 addrspace (1)** %_0
  %_16 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_16, i8 addrspace (1)** %v
  store i64 1, i64* %val
  store i64 0, i64* %i
  br label %L2
L2:
  %_17 = load i64, i64* %i
  %_18 = icmp slt i64 %_17, 62
  store i1 %_18, i1* %_1
  %_19 = load i1, i1* %_1
  br i1 %_19, label %L4, label %L3
L3:
  %_20 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_21 = load i64, i64* %val
  %_22 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 0)
  %_23 = call i64 @_bal_list_set (i8 addrspace (1)* %_20, i64 %_21, i8 addrspace (1)* %_22)
  %_24 = icmp eq i64 %_23, 0
  br i1 %_24, label %L7, label %L8
L4:
  %_38 = load i64, i64* %val
  %_39 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_38, i64 2)
  %_40 = extractvalue {i64, i1} %_39, 1
  br i1 %_40, label %L12, label %L11
L5:
  %_48 = load i64, i64* %_6
  call void @_bal_panic (i64 %_48)
  unreachable
L6:
  call void @_bal_panic (i64 516)
  unreachable
L7:
  %_26 = load i64, i64* %val
  %_27 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_28 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_27, i64 72057594037927935)
  %_29 = bitcast i8 addrspace (1)* %_28 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_30 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_29, i64 0, i32 0
  %_31 = load i64, i64 addrspace (1)* %_30, align 8
  %_32 = icmp ult i64 %_26, %_31
  br i1 %_32, label %L9, label %L10
L8:
  %_25 = or i64 %_23, 2816
  store i64 %_25, i64* %_6
  br label %L5
L9:
  %_33 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_29, i64 0, i32 2
  %_34 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_33, align 8
  %_35 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_34, i64 0, i64 %_26
  %_36 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_35, align 8
  store i8 addrspace (1)* %_36, i8 addrspace (1)** %_4
  %_37 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  call void @_Bio__println (i8 addrspace (1)* %_37)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  ret void
L10:
  store i64 3077, i64* %_6
  br label %L5
L11:
  %_41 = extractvalue {i64, i1} %_39, 0
  store i64 %_41, i64* %_2
  %_42 = load i64, i64* %_2
  store i64 %_42, i64* %val
  %_43 = load i64, i64* %i
  %_44 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_43, i64 1)
  %_45 = extractvalue {i64, i1} %_44, 1
  br i1 %_45, label %L14, label %L13
L12:
  store i64 2049, i64* %_6
  br label %L5
L13:
  %_46 = extractvalue {i64, i1} %_44, 0
  store i64 %_46, i64* %_3
  %_47 = load i64, i64* %_3
  store i64 %_47, i64* %i
  br label %L2
L14:
  store i64 2305, i64* %_6
  br label %L5
}
