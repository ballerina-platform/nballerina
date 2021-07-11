@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_list_set (i8 addrspace (1)*, i64, i8 addrspace (1)*)
declare i64 @_Barray__length (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %_1 = alloca i64
  %i = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  %_8 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_9 = bitcast i8 addrspace (1)* %_8 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_10 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_9, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_10
  %_11 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_9, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_11
  %_12 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_9, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_12
  %_13 = getelementptr i8, i8 addrspace (1)* %_8, i64 1297036692682702848
  store i8 addrspace (1)* %_13, i8 addrspace (1)** %_0
  %_14 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_14, i8 addrspace (1)** %v
  %_15 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_16 = extractvalue {i64, i1} %_15, 1
  br i1 %_16, label %L5, label %L4
L2:
  %_33 = load i64, i64* %_4
  call void @_bal_panic (i64 %_33)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_17 = extractvalue {i64, i1} %_15, 0
  store i64 %_17, i64* %_1
  %_18 = load i64, i64* %_1
  store i64 %_18, i64* %i
  %_19 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_20 = load i64, i64* %i
  %_21 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_22 = bitcast i8 addrspace (1)* %_21 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_22, align 8
  %_23 = getelementptr i8, i8 addrspace (1)* %_21, i64 504403158265495552
  %_24 = call i64 @_bal_list_set (i8 addrspace (1)* %_19, i64 %_20, i8 addrspace (1)* %_23)
  %_25 = icmp eq i64 %_24, 0
  br i1 %_25, label %L6, label %L7
L5:
  store i64 1025, i64* %_4
  br label %L2
L6:
  %_27 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_28 = call i64 @_Barray__length (i8 addrspace (1)* %_27)
  store i64 %_28, i64* %_2
  %_29 = load i64, i64* %_2
  %_30 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_31 = bitcast i8 addrspace (1)* %_30 to i64 addrspace (1)*
  store i64 %_29, i64 addrspace (1)* %_31, align 8
  %_32 = getelementptr i8, i8 addrspace (1)* %_30, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L7:
  %_26 = or i64 %_24, 1280
  store i64 %_26, i64* %_4
  br label %L2
}
