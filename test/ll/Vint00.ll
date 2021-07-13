@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64) noreturn cold
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i64 @_bal_tagged_to_int (i8 addrspace (1)*)
declare void @_Bio__println (i8 addrspace (1)*)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i64
  %two48 = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %two55 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %two56 = alloca i64
  %_6 = alloca i8 addrspace (1)*
  %_7 = alloca i64
  %two62 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i8
  %_11 = load i8*, i8** @_bal_stack_guard
  %_12 = icmp ult i8* %_10, %_11
  br i1 %_12, label %L3, label %L1
L1:
  %_13 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 65536, i64 65536)
  %_14 = extractvalue {i64, i1} %_13, 1
  br i1 %_14, label %L5, label %L4
L2:
  %_40 = load i64, i64* %_9
  call void @_bal_panic (i64 %_40)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_15 = extractvalue {i64, i1} %_13, 0
  store i64 %_15, i64* %_0
  %_16 = load i64, i64* %_0
  %_17 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_16, i64 65536)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L7, label %L6
L5:
  store i64 1025, i64* %_9
  br label %L2
L6:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %_1
  %_20 = load i64, i64* %_1
  store i64 %_20, i64* %two48
  %_21 = load i64, i64* %two48
  call void @_B_testAround (i64 %_21)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_22 = load i64, i64* %two48
  %_23 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_22, i64 128)
  %_24 = extractvalue {i64, i1} %_23, 1
  br i1 %_24, label %L9, label %L8
L7:
  store i64 1025, i64* %_9
  br label %L2
L8:
  %_25 = extractvalue {i64, i1} %_23, 0
  store i64 %_25, i64* %_3
  %_26 = load i64, i64* %_3
  store i64 %_26, i64* %two55
  %_27 = load i64, i64* %two55
  call void @_B_testAround (i64 %_27)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_28 = load i64, i64* %two55
  %_29 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_28, i64 2)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L11, label %L10
L9:
  store i64 2561, i64* %_9
  br label %L2
L10:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_5
  %_32 = load i64, i64* %_5
  store i64 %_32, i64* %two56
  %_33 = load i64, i64* %two56
  call void @_B_testAround (i64 %_33)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_6
  %_34 = load i64, i64* %two56
  %_35 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_34, i64 64)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L13, label %L12
L11:
  store i64 4097, i64* %_9
  br label %L2
L12:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_7
  %_38 = load i64, i64* %_7
  store i64 %_38, i64* %two62
  %_39 = load i64, i64* %two62
  call void @_B_testAround (i64 %_39)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  ret void
L13:
  store i64 5633, i64* %_9
  br label %L2
}
define internal void @_B_testAround (i64 %_0) {
  %pow2 = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i8
  %_11 = load i8*, i8** @_bal_stack_guard
  %_12 = icmp ult i8* %_10, %_11
  br i1 %_12, label %L3, label %L1
L1:
  store i64 %_0, i64* %pow2
  %_13 = load i64, i64* %pow2
  %_14 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_13, i64 1)
  %_15 = extractvalue {i64, i1} %_14, 1
  br i1 %_15, label %L5, label %L4
L2:
  %_33 = load i64, i64* %_9
  call void @_bal_panic (i64 %_33)
  unreachable
L3:
  call void @_bal_panic (i64 7684)
  unreachable
L4:
  %_16 = extractvalue {i64, i1} %_14, 0
  store i64 %_16, i64* %_1
  %_17 = load i64, i64* %_1
  call void @_B_roundTrip (i64 %_17)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_18 = load i64, i64* %pow2
  %_19 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_18)
  %_20 = extractvalue {i64, i1} %_19, 1
  br i1 %_20, label %L7, label %L6
L5:
  store i64 7937, i64* %_9
  br label %L2
L6:
  %_21 = extractvalue {i64, i1} %_19, 0
  store i64 %_21, i64* %_3
  %_22 = load i64, i64* %_3
  call void @_B_roundTrip (i64 %_22)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_23 = load i64, i64* %pow2
  call void @_B_roundTrip (i64 %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  %_24 = load i64, i64* %pow2
  %_25 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 %_24)
  %_26 = extractvalue {i64, i1} %_25, 1
  br i1 %_26, label %L9, label %L8
L7:
  store i64 8193, i64* %_9
  br label %L2
L8:
  %_27 = extractvalue {i64, i1} %_25, 0
  store i64 %_27, i64* %_6
  %_28 = load i64, i64* %_6
  %_29 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_28, i64 1)
  %_30 = extractvalue {i64, i1} %_29, 1
  br i1 %_30, label %L11, label %L10
L9:
  store i64 8705, i64* %_9
  br label %L2
L10:
  %_31 = extractvalue {i64, i1} %_29, 0
  store i64 %_31, i64* %_7
  %_32 = load i64, i64* %_7
  call void @_B_roundTrip (i64 %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  ret void
L11:
  store i64 8705, i64* %_9
  br label %L2
}
define internal void @_B_roundTrip (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L3, label %L1
L1:
  store i64 %_0, i64* %n
  %_9 = load i64, i64* %n
  %_10 = call i8 addrspace (1)* @_B_toAny (i64 %_9)
  store i8 addrspace (1)* %_10, i8 addrspace (1)** %_2
  %_11 = load i8 addrspace (1)*, i8 addrspace (1)** %_2
  %_12 = addrspacecast i8 addrspace (1)* %_11 to i8*
  %_13 = ptrtoint i8* %_12 to i64
  %_14 = and i64 %_13, 2233785415175766016
  %_15 = icmp eq i64 %_14, 504403158265495552
  br i1 %_15, label %L4, label %L5
L2:
  %_24 = load i64, i64* %_5
  call void @_bal_panic (i64 %_24)
  unreachable
L3:
  call void @_bal_panic (i64 9476)
  unreachable
L4:
  %_16 = call i64 @_bal_tagged_to_int (i8 addrspace (1)* %_11)
  store i64 %_16, i64* %_3
  %_17 = load i64, i64* %n
  %_18 = load i64, i64* %_3
  %_19 = icmp eq i64 %_17, %_18
  store i1 %_19, i1* %_1
  %_20 = load i1, i1* %_1
  %_21 = zext i1 %_20 to i64
  %_22 = or i64 %_21, 72057594037927936
  %_23 = getelementptr i8, i8 addrspace (1)* null, i64 %_22
  call void @_Bio__println (i8 addrspace (1)* %_23)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  ret void
L5:
  store i64 9731, i64* %_5
  br label %L2
}
define internal i8 addrspace (1)* @_B_toAny (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_4)
  ret i8 addrspace (1)* %_5
L2:
  call void @_bal_panic (i64 10500)
  unreachable
}
