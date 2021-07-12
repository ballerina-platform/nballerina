@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
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
  %_12 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_13 = bitcast i8 addrspace (1)* %_12 to [3 x i8 addrspace (1)*] addrspace (1)*
  %_14 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_13, i64 0, i64 0
  store i8 addrspace (1)* null, i8 addrspace (1)* addrspace (1)* %_14
  %_15 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 1234567890123456789)
  %_16 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_13, i64 0, i64 1
  store i8 addrspace (1)* %_15, i8 addrspace (1)* addrspace (1)* %_16
  %_17 = zext i1 1 to i64
  %_18 = or i64 %_17, 72057594037927936
  %_19 = getelementptr i8, i8 addrspace (1)* null, i64 %_18
  %_20 = getelementptr inbounds [3 x i8 addrspace (1)*], [3 x i8 addrspace (1)*] addrspace (1)* %_13, i64 0, i64 2
  store i8 addrspace (1)* %_19, i8 addrspace (1)* addrspace (1)* %_20
  %_21 = bitcast [3 x i8 addrspace (1)*] addrspace (1)* %_13 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_22 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_23 = bitcast i8 addrspace (1)* %_22 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_24 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 0
  store i64 3, i64 addrspace (1)* %_24
  %_25 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 1
  store i64 3, i64 addrspace (1)* %_25
  %_26 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_23, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_21, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_26
  %_27 = getelementptr i8, i8 addrspace (1)* %_22, i64 1297036692682702848
  store i8 addrspace (1)* %_27, i8 addrspace (1)** %_0
  %_28 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_28, i8 addrspace (1)** %v
  %_29 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_30 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_29, i64 72057594037927935)
  %_31 = bitcast i8 addrspace (1)* %_30 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_32 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 0
  %_33 = load i64, i64 addrspace (1)* %_32, align 8
  %_34 = icmp ult i64 2, %_33
  br i1 %_34, label %L4, label %L5
L2:
  %_73 = load i64, i64* %_8
  call void @_bal_panic (i64 %_73)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_35 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_31, i64 0, i32 2
  %_36 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_35, align 8
  %_37 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_36, i64 0, i64 2
  %_38 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_37, align 8
  store i8 addrspace (1)* %_38, i8 addrspace (1)** %_1
  %_39 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  call void @_Bio__println (i8 addrspace (1)* %_39)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_40 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_41 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_40, i64 72057594037927935)
  %_42 = bitcast i8 addrspace (1)* %_41 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_43 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_42, i64 0, i32 0
  %_44 = load i64, i64 addrspace (1)* %_43, align 8
  %_45 = icmp ult i64 1, %_44
  br i1 %_45, label %L6, label %L7
L5:
  store i64 1029, i64* %_8
  br label %L2
L6:
  %_46 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_42, i64 0, i32 2
  %_47 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_46, align 8
  %_48 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_47, i64 0, i64 1
  %_49 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_48, align 8
  store i8 addrspace (1)* %_49, i8 addrspace (1)** %_3
  %_50 = load i8 addrspace (1)*, i8 addrspace (1)** %_3
  call void @_Bio__println (i8 addrspace (1)* %_50)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_51 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_52 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_51, i64 72057594037927935)
  %_53 = bitcast i8 addrspace (1)* %_52 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_54 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_53, i64 0, i32 0
  %_55 = load i64, i64 addrspace (1)* %_54, align 8
  %_56 = icmp ult i64 0, %_55
  br i1 %_56, label %L8, label %L9
L7:
  store i64 1285, i64* %_8
  br label %L2
L8:
  %_57 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_53, i64 0, i32 2
  %_58 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_57, align 8
  %_59 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_58, i64 0, i64 0
  %_60 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_59, align 8
  store i8 addrspace (1)* %_60, i8 addrspace (1)** %_5
  %_61 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_62 = bitcast i8 addrspace (1)* %_61 to [1 x i8 addrspace (1)*] addrspace (1)*
  %_63 = load i8 addrspace (1)*, i8 addrspace (1)** %_5
  %_64 = getelementptr inbounds [1 x i8 addrspace (1)*], [1 x i8 addrspace (1)*] addrspace (1)* %_62, i64 0, i64 0
  store i8 addrspace (1)* %_63, i8 addrspace (1)* addrspace (1)* %_64
  %_65 = bitcast [1 x i8 addrspace (1)*] addrspace (1)* %_62 to [0 x i8 addrspace (1)*] addrspace (1)*
  %_66 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_67 = bitcast i8 addrspace (1)* %_66 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_68 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_67, i64 0, i32 0
  store i64 1, i64 addrspace (1)* %_68
  %_69 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_67, i64 0, i32 1
  store i64 1, i64 addrspace (1)* %_69
  %_70 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_67, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* %_65, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_70
  %_71 = getelementptr i8, i8 addrspace (1)* %_66, i64 1297036692682702848
  store i8 addrspace (1)* %_71, i8 addrspace (1)** %_6
  %_72 = load i8 addrspace (1)*, i8 addrspace (1)** %_6
  call void @_Bio__println (i8 addrspace (1)* %_72)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  ret void
L9:
  store i64 1541, i64* %_8
  br label %L2
}
