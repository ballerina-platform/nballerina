@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %i = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L3, label %L1
L1:
  %_12 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 11)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L5, label %L4
L2:
  %_68 = load i64, i64* %_8
  call void @_bal_panic (i64 %_68)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_0
  %_15 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_16 = bitcast i8 addrspace (1)* %_15 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_17 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 17)
  %_18 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_16, i64 0, i64 0
  store i8 addrspace (1)* %_17, i8 addrspace (1)* addrspace (1)* %_18
  %_19 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 42)
  %_20 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_16, i64 0, i64 1
  store i8 addrspace (1)* %_19, i8 addrspace (1)* addrspace (1)* %_20
  %_21 = load i64, i64* %_0
  %_22 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_21)
  %_23 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_16, i64 0, i64 2
  store i8 addrspace (1)* %_22, i8 addrspace (1)* addrspace (1)* %_23
  %_24 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_16 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_25 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_26 = bitcast i8 addrspace (1)* %_25 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_27 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_27
  %_28 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_28
  %_29 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_26, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_24, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_29
  %_30 = getelementptr i8, i8 addrspace (1)* %_25, i64 1297036692682702848
  store i8 addrspace (1)* %_30, i8 addrspace (1)** %_1
  %_31 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  store i8 addrspace (1)* %_31, i8 addrspace (1)** %v
  store i64 0, i64* %i
  %_32 = load i64, i64* %i
  %_33 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_34 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_33, i64 72057594037927935)
  %_35 = bitcast i8 addrspace (1)* %_34 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_36 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_35, i64 0, i32 0
  %_37 = load i64, i64 addrspace (1)* %_36, align 8
  %_38 = icmp ult i64 %_32, %_37
  br i1 %_38, label %L6, label %L7
L5:
  store i64 769, i64* %_8
  br label %L2
L6:
  %_39 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_35, i64 0, i32 2
  %_40 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_39, align 8
  %_41 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_40, i64 0, i64 %_32
  %_42 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_41, align 8
  store i8 addrspace (1)* %_42, i8 addrspace (1)** %_2
  %_43 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  call void @_Bio__println (i8 addrspace (1)* %_43)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  store i64 1, i64* %i
  %_44 = load i64, i64* %i
  %_45 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_46 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_45, i64 72057594037927935)
  %_47 = bitcast i8 addrspace (1)* %_46 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_48 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_47, i64 0, i32 0
  %_49 = load i64, i64 addrspace (1)* %_48, align 8
  %_50 = icmp ult i64 %_44, %_49
  br i1 %_50, label %L8, label %L9
L7:
  store i64 1285, i64* %_8
  br label %L2
L8:
  %_51 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_47, i64 0, i32 2
  %_52 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_51, align 8
  %_53 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_52, i64 0, i64 %_44
  %_54 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_53, align 8
  store i8 addrspace (1)* %_54, i8 addrspace (1)** %_4
  %_55 = load i8 addrspace (1)*, i8 addrspace (1)** %_4
  call void @_Bio__println (i8 addrspace (1)* %_55)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  store i64 2, i64* %i
  %_56 = load i64, i64* %i
  %_57 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_58 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_57, i64 72057594037927935)
  %_59 = bitcast i8 addrspace (1)* %_58 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_60 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_59, i64 0, i32 0
  %_61 = load i64, i64 addrspace (1)* %_60, align 8
  %_62 = icmp ult i64 %_56, %_61
  br i1 %_62, label %L10, label %L11
L9:
  store i64 1797, i64* %_8
  br label %L2
L10:
  %_63 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_59, i64 0, i32 2
  %_64 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_63, align 8
  %_65 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_64, i64 0, i64 %_56
  %_66 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_65, align 8
  store i8 addrspace (1)* %_66, i8 addrspace (1)** %_6
  %_67 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  call void @_Bio__println (i8 addrspace (1)* %_67)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  ret void
L11:
  store i64 2309, i64* %_8
  br label %L2
}
