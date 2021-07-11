@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %neg1 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i8
  %_11 = load i8*, i8** @_bal_stack_guard
  %_12 = icmp ult i8* %_10, %_11
  br i1 %_12, label %L3, label %L1
L1:
  %_13 = call i64 @_B_neg (i64 17)
  store i64 %_13, i64* %_0
  %_14 = load i64, i64* %_0
  store i64 %_14, i64* %neg1
  %_15 = load i64, i64* %neg1
  %_16 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_17 = bitcast i8 addrspace (1)* %_16 to i64 addrspace (1)*
  store i64 %_15, i64 addrspace (1)* %_17, align 8
  %_18 = getelementptr i8, i8 addrspace (1)* %_16, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_18)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_19 = call i64 @_B_neg (i64 0)
  store i64 %_19, i64* %_2
  %_20 = load i64, i64* %_2
  %_21 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_22 = bitcast i8 addrspace (1)* %_21 to i64 addrspace (1)*
  store i64 %_20, i64 addrspace (1)* %_22, align 8
  %_23 = getelementptr i8, i8 addrspace (1)* %_21, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  %_24 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_25 = extractvalue {i64, i1} %_24, 1
  br i1 %_25, label %L5, label %L4
L2:
  %_38 = load i64, i64* %_9
  call void @_bal_panic (i64 %_38)
  unreachable
L3:
  call void @_bal_panic (i64 516)
  unreachable
L4:
  %_26 = extractvalue {i64, i1} %_24, 0
  store i64 %_26, i64* %_4
  %_27 = load i64, i64* %_4
  %_28 = call i64 @_B_neg (i64 %_27)
  store i64 %_28, i64* %_5
  %_29 = load i64, i64* %_5
  %_30 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_31 = bitcast i8 addrspace (1)* %_30 to i64 addrspace (1)*
  store i64 %_29, i64 addrspace (1)* %_31, align 8
  %_32 = getelementptr i8, i8 addrspace (1)* %_30, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_33 = call i64 @_B_negneg (i64 1)
  store i64 %_33, i64* %_7
  %_34 = load i64, i64* %_7
  %_35 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_36 = bitcast i8 addrspace (1)* %_35 to i64 addrspace (1)*
  store i64 %_34, i64 addrspace (1)* %_36, align 8
  %_37 = getelementptr i8, i8 addrspace (1)* %_35, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_37)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  ret void
L5:
  store i64 1537, i64* %_9
  br label %L2
}
define internal i64 @_B_neg (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  %_6 = load i64, i64* %x
  %_7 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_6)
  %_8 = extractvalue {i64, i1} %_7, 1
  br i1 %_8, label %L5, label %L4
L2:
  %_11 = load i64, i64* %_2
  call void @_bal_panic (i64 %_11)
  unreachable
L3:
  call void @_bal_panic (i64 2564)
  unreachable
L4:
  %_9 = extractvalue {i64, i1} %_7, 0
  store i64 %_9, i64* %_1
  %_10 = load i64, i64* %_1
  ret i64 %_10
L5:
  store i64 2817, i64* %_2
  br label %L2
}
define internal i64 @_B_negneg (i64 %_0) {
  %x = alloca i64
  %_1 = alloca i64
  %_2 = alloca i64
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  store i64 %_0, i64* %x
  %_7 = load i64, i64* %x
  %_8 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_7)
  %_9 = extractvalue {i64, i1} %_8, 1
  br i1 %_9, label %L5, label %L4
L2:
  %_16 = load i64, i64* %_3
  call void @_bal_panic (i64 %_16)
  unreachable
L3:
  call void @_bal_panic (i64 3588)
  unreachable
L4:
  %_10 = extractvalue {i64, i1} %_8, 0
  store i64 %_10, i64* %_1
  %_11 = load i64, i64* %_1
  %_12 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_11)
  %_13 = extractvalue {i64, i1} %_12, 1
  br i1 %_13, label %L7, label %L6
L5:
  store i64 3841, i64* %_3
  br label %L2
L6:
  %_14 = extractvalue {i64, i1} %_12, 0
  store i64 %_14, i64* %_2
  %_15 = load i64, i64* %_2
  ret i64 %_15
L7:
  store i64 3841, i64* %_3
  br label %L2
}
