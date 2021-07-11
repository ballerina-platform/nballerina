@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
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
  %_22 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_23 = bitcast i8 addrspace (1)* %_22 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_23, align 8
  %_24 = getelementptr i8, i8 addrspace (1)* %_22, i64 504403158265495552
  %_25 = call i64 @_bal_list_set (i8 addrspace (1)* %_20, i64 %_21, i8 addrspace (1)* %_24)
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %L7, label %L8
L4:
  %_40 = load i64, i64* %val
  %_41 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_40, i64 2)
  %_42 = extractvalue {i64, i1} %_41, 1
  br i1 %_42, label %L12, label %L11
L5:
  %_50 = load i64, i64* %_6
  call void @_bal_panic (i64 %_50)
  unreachable
L6:
  call void @_bal_panic (i64 516)
  unreachable
L7:
  %_28 = load i64, i64* %val
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_30 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_29, i64 72057594037927935)
  %_31 = bitcast i8 addrspace (1)* %_30 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_32 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 0
  %_33 = load i64, i64 addrspace (1)* %_32, align 8
  %_34 = icmp ult i64 %_28, %_33
  br i1 %_34, label %L9, label %L10
L8:
  %_27 = or i64 %_25, 2816
  store i64 %_27, i64* %_6
  br label %L5
L9:
  %_35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 2
  %_36 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_35, align 8
  %_37 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_36, i64 0, i64 %_28
  %_38 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_37, align 8
  store i8 addrspace (1)* %_38, i8 addrspace (1)** %_4
  %_39 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  call void @_Bio__println (i8 addrspace (1)* %_39)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  ret void
L10:
  store i64 3077, i64* %_6
  br label %L5
L11:
  %_43 = extractvalue {i64, i1} %_41, 0
  store i64 %_43, i64* %_2
  %_44 = load i64, i64* %_2
  store i64 %_44, i64* %val
  %_45 = load i64, i64* %i
  %_46 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_45, i64 1)
  %_47 = extractvalue {i64, i1} %_46, 1
  br i1 %_47, label %L14, label %L13
L12:
  store i64 2049, i64* %_6
  br label %L5
L13:
  %_48 = extractvalue {i64, i1} %_46, 0
  store i64 %_48, i64* %_3
  %_49 = load i64, i64* %_3
  store i64 %_49, i64* %i
  br label %L2
L14:
  store i64 2305, i64* %_6
  br label %L5
}
