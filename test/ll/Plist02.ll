@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare i8 addrspace (1)* @_bal_alloc (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %v = alloca i8 addrspace (1)*
  %i = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  %_7 = call i8 addrspace (1)* @_bal_alloc (i64 24)
  %_8 = bitcast i8 addrspace (1)* %_7 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_9 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_8, i64 0, i32 0
  store i64 0, i64 addrspace (1)* %_9
  %_10 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_8, i64 0, i32 1
  store i64 0, i64 addrspace (1)* %_10
  %_11 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_8, i64 0, i32 2
  store [0 x i8 addrspace (1)*] addrspace (1)* null, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_11
  %_12 = getelementptr i8, i8 addrspace (1)* %_7, i64 1297036692682702848
  store i8 addrspace (1)* %_12, i8 addrspace (1)** %_0
  %_13 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  store i8 addrspace (1)* %_13, i8 addrspace (1)** %v
  store i64 0, i64* %i
  %_14 = load i64, i64* %i
  %_15 = load i8 addrspace (1)*, i8 addrspace (1)** %v
  %_16 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_15, i64 72057594037927935)
  %_17 = bitcast i8 addrspace (1)* %_16 to {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)*
  %_18 = getelementptr {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_17, i64 0, i32 0
  %_19 = load i64, i64 addrspace (1)* %_18, align 8
  %_20 = icmp ult i64 %_14, %_19
  br i1 %_20, label %L4, label %L5
L2:
  %_26 = load i64, i64* %_3
  call void @_bal_panic (i64 %_26)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_21 = getelementptr inbounds {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*}, {i64, i64, [0 x i8 addrspace (1)*] addrspace (1)*} addrspace (1)* %_17, i64 0, i32 2
  %_22 = load [0 x i8 addrspace (1)*] addrspace (1)*, [0 x i8 addrspace (1)*] addrspace (1)* addrspace (1)* %_21, align 8
  %_23 = getelementptr inbounds [0 x i8 addrspace (1)*], [0 x i8 addrspace (1)*] addrspace (1)* %_22, i64 0, i64 %_14
  %_24 = load i8 addrspace (1)*, i8 addrspace (1)* addrspace (1)* %_23, align 8
  store i8 addrspace (1)* %_24, i8 addrspace (1)** %_1
  %_25 = load i8 addrspace (1)*, i8 addrspace (1)** %_1
  call void @_Bio__println (i8 addrspace (1)* %_25)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L5:
  store i64 1285, i64* %_3
  br label %L2
}
