@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L3, label %L1
L1:
  call void @_B_printIfBetween (i64 6, i64 5, i64 7)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_B_printIfBetween (i64 1, i64 2, i64 3)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_8 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_9 = extractvalue {i64, i1} %_8, 1
  br i1 %_9, label %L5, label %L4
L2:
  %_12 = load i64, i64* %_4
  call void @_bal_panic (i64 %_12)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_10 = extractvalue {i64, i1} %_8, 0
  store i64 %_10, i64* %_2
  %_11 = load i64, i64* %_2
  call void @_B_printIfBetween (i64 0, i64 %_11, i64 4)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L5:
  store i64 1537, i64* %_4
  br label %L2
}
define internal void @_B_printIfBetween (i64 %_0, i64 %_1, i64 %_2) {
  %n = alloca i64
  %min = alloca i64
  %max = alloca i64
  %i = alloca i64
  %_3 = alloca i1
  %_4 = alloca i1
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8
  %_9 = load i8*, i8** @_bal_stack_guard
  %_10 = icmp ult i8* %_8, %_9
  br i1 %_10, label %L8, label %L1
L1:
  store i64 %_0, i64* %n
  store i64 %_1, i64* %min
  store i64 %_2, i64* %max
  %_11 = load i64, i64* %min
  store i64 %_11, i64* %i
  br label %L2
L2:
  %_12 = load i64, i64* %i
  %_13 = load i64, i64* %max
  %_14 = icmp sle i64 %_12, %_13
  store i1 %_14, i1* %_3
  %_15 = load i1, i1* %_3
  br i1 %_15, label %L4, label %L3
L3:
  ret void
L4:
  %_16 = load i64, i64* %i
  %_17 = load i64, i64* %n
  %_18 = icmp eq i64 %_16, %_17
  store i1 %_18, i1* %_4
  %_19 = load i1, i1* %_4
  br i1 %_19, label %L5, label %L6
L5:
  %_20 = load i64, i64* %n
  %_21 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_22 = bitcast i8 addrspace (1)* %_21 to i64 addrspace (1)*
  store i64 %_20, i64 addrspace (1)* %_22, align 8
  %_23 = getelementptr i8, i8 addrspace (1)* %_21, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L3
L6:
  %_24 = load i64, i64* %i
  %_25 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_24, i64 1)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L10, label %L9
L7:
  %_29 = load i64, i64* %_7
  call void @_bal_panic (i64 %_29)
  unreachable
L8:
  call void @_bal_panic (i64 2308)
  unreachable
L9:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_6
  %_28 = load i64, i64* %_6
  store i64 %_28, i64* %i
  br label %L2
L10:
  store i64 4097, i64* %_7
  br label %L7
}
