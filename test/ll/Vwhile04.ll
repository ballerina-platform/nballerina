@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L2, label %L1
L1:
  call void @_B_printClosestSquareNum (i64 1)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_B_printClosestSquareNum (i64 0)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  call void @_B_printClosestSquareNum (i64 5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  call void @_B_printClosestSquareNum (i64 17)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printClosestSquareNum (i64 %_0) {
  %x = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i8 addrspace (1)*
  %_4 = alloca i64
  %_5 = alloca i64
  %_6 = alloca i8
  %_7 = load i8*, i8** @_bal_stack_guard
  %_8 = icmp ult i8* %_6, %_7
  br i1 %_8, label %L8, label %L1
L1:
  store i64 %_0, i64* %x
  %_9 = load i64, i64* %x
  store i64 %_9, i64* %i
  br label %L2
L2:
  %_10 = load i64, i64* %i
  %_11 = icmp sge i64 %_10, 0
  store i1 %_11, i1* %_1
  %_12 = load i1, i1* %_1
  br i1 %_12, label %L4, label %L3
L3:
  ret void
L4:
  %_13 = load i64, i64* %i
  %_14 = call i1 @_B_isSquareNumber (i64 %_13)
  store i1 %_14, i1* %_2
  %_15 = load i1, i1* %_2
  br i1 %_15, label %L5, label %L6
L5:
  %_16 = load i64, i64* %i
  %_17 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_18 = bitcast i8 addrspace (1)* %_17 to i64 addrspace (1)*
  store i64 %_16, i64 addrspace (1)* %_18, align 8
  %_19 = getelementptr i8, i8 addrspace (1)* %_17, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_19)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L6:
  %_20 = load i64, i64* %i
  %_21 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_20, i64 1)
  %_22 = extractvalue {i64, i1} %_21, 1
  br i1 %_22, label %L10, label %L9
L7:
  %_25 = load i64, i64* %_5
  call void @_bal_panic (i64 %_25)
  unreachable
L8:
  call void @_bal_panic (i64 2564)
  unreachable
L9:
  %_23 = extractvalue {i64, i1} %_21, 0
  store i64 %_23, i64* %_4
  %_24 = load i64, i64* %_4
  store i64 %_24, i64* %i
  br label %L2
L10:
  store i64 4353, i64* %_5
  br label %L7
}
define internal i1 @_B_isSquareNumber (i64 %_0) {
  %x = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i1
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i64
  %_8 = alloca i8
  %_9 = load i8*, i8** @_bal_stack_guard
  %_10 = icmp ult i8* %_8, %_9
  br i1 %_10, label %L11, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 0, i64* %i
  br label %L2
L2:
  %_11 = load i64, i64* %i
  %_12 = load i64, i64* %x
  %_13 = icmp sle i64 %_11, %_12
  store i1 %_13, i1* %_1
  %_14 = load i1, i1* %_1
  br i1 %_14, label %L4, label %L3
L3:
  ret i1 0
L4:
  %_15 = load i64, i64* %i
  %_16 = load i64, i64* %i
  %_17 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_15, i64 %_16)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L13, label %L12
L5:
  ret i1 1
L6:
  %_24 = load i64, i64* %i
  %_25 = load i64, i64* %i
  %_26 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 %_24, i64 %_25)
  %_27 = extractvalue {i64, i1} %_26, 1
  br i1 %_27, label %L15, label %L14
L7:
  ret i1 0
L8:
  br label %L9
L9:
  %_33 = load i64, i64* %i
  %_34 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_33, i64 1)
  %_35 = extractvalue {i64, i1} %_34, 1
  br i1 %_35, label %L17, label %L16
L10:
  %_38 = load i64, i64* %_7
  call void @_bal_panic (i64 %_38)
  unreachable
L11:
  call void @_bal_panic (i64 5380)
  unreachable
L12:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %_3
  %_20 = load i64, i64* %_3
  %_21 = load i64, i64* %x
  %_22 = icmp eq i64 %_20, %_21
  store i1 %_22, i1* %_2
  %_23 = load i1, i1* %_2
  br i1 %_23, label %L5, label %L6
L13:
  store i64 6145, i64* %_7
  br label %L10
L14:
  %_28 = extractvalue {i64, i1} %_26, 0
  store i64 %_28, i64* %_5
  %_29 = load i64, i64* %_5
  %_30 = load i64, i64* %x
  %_31 = icmp sgt i64 %_29, %_30
  store i1 %_31, i1* %_4
  %_32 = load i1, i1* %_4
  br i1 %_32, label %L7, label %L8
L15:
  store i64 6657, i64* %_7
  br label %L10
L16:
  %_36 = extractvalue {i64, i1} %_34, 0
  store i64 %_36, i64* %_6
  %_37 = load i64, i64* %_6
  store i64 %_37, i64* %i
  br label %L2
L17:
  store i64 7425, i64* %_7
  br label %L10
}
