@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i64
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L2, label %L1
L1:
  %_5 = call i64 @_B_foo (i64 10)
  store i64 %_5, i64* %_0
  %_6 = load i64, i64* %_0
  %_7 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_8 = bitcast i8 addrspace (1)* %_7 to i64 addrspace (1)*
  store i64 %_6, i64 addrspace (1)* %_8, align 8
  %_9 = getelementptr i8, i8 addrspace (1)* %_7, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_9)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal i64 @_B_foo (i64 %_0) {
  %x = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i64
  %_5 = alloca i8 addrspace (1)*
  %_6 = alloca i1
  %_7 = alloca i64
  %_8 = alloca i64
  %_9 = alloca i64
  %_10 = alloca i8
  %_11 = load i8*, i8** @_bal_stack_guard
  %_12 = icmp ult i8* %_10, %_11
  br i1 %_12, label %L10, label %L1
L1:
  store i64 %_0, i64* %x
  %_13 = load i64, i64* %x
  store i64 %_13, i64* %i
  br label %L2
L2:
  %_14 = load i64, i64* %i
  %_15 = icmp sge i64 %_14, 0
  store i1 %_15, i1* %_1
  %_16 = load i1, i1* %_1
  br i1 %_16, label %L4, label %L3
L3:
  %_17 = load i64, i64* %i
  %_18 = icmp slt i64 %_17, 0
  store i1 %_18, i1* %_6
  %_19 = load i1, i1* %_6
  br i1 %_19, label %L7, label %L8
L4:
  %_20 = load i64, i64* %i
  %_21 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_20, i64 1)
  %_22 = extractvalue {i64, i1} %_21, 1
  br i1 %_22, label %L12, label %L11
L5:
  %_33 = load i64, i64* %i
  %_34 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_35 = bitcast i8 addrspace (1)* %_34 to i64 addrspace (1)*
  store i64 %_33, i64 addrspace (1)* %_35, align 8
  %_36 = getelementptr i8, i8 addrspace (1)* %_34, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_36)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_5
  br label %L3
L6:
  br label %L2
L7:
  %_37 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_38 = extractvalue {i64, i1} %_37, 1
  br i1 %_38, label %L16, label %L15
L8:
  %_41 = load i64, i64* %i
  %_42 = call i64 @_B_foo (i64 %_41)
  store i64 %_42, i64* %_8
  %_43 = load i64, i64* %_8
  ret i64 %_43
L9:
  %_44 = load i64, i64* %_9
  call void @_bal_panic (i64 %_44)
  unreachable
L10:
  call void @_bal_panic (i64 3332)
  unreachable
L11:
  %_23 = extractvalue {i64, i1} %_21, 0
  store i64 %_23, i64* %_2
  %_24 = load i64, i64* %_2
  store i64 %_24, i64* %i
  %_25 = load i64, i64* %x
  %_26 = load i64, i64* %i
  %_27 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_25, i64 %_26)
  %_28 = extractvalue {i64, i1} %_27, 1
  br i1 %_28, label %L14, label %L13
L12:
  store i64 4097, i64* %_9
  br label %L9
L13:
  %_29 = extractvalue {i64, i1} %_27, 0
  store i64 %_29, i64* %_4
  %_30 = load i64, i64* %_4
  %_31 = icmp eq i64 %_30, 2
  store i1 %_31, i1* %_3
  %_32 = load i1, i1* %_3
  br i1 %_32, label %L5, label %L6
L14:
  store i64 4353, i64* %_9
  br label %L9
L15:
  %_39 = extractvalue {i64, i1} %_37, 0
  store i64 %_39, i64* %_7
  %_40 = load i64, i64* %_7
  ret i64 %_40
L16:
  store i64 5889, i64* %_9
  br label %L9
}
