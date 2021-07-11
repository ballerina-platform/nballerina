@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i64
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i64
  %_9 = alloca i8
  %_10 = load i8*, i8** @_bal_stack_guard
  %_11 = icmp ult i8* %_9, %_10
  br i1 %_11, label %L3, label %L1
L1:
  %_12 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_13 = bitcast i8 addrspace (1)* %_12 to i64 addrspace (1)*
  store i64 0, i64 addrspace (1)* %_13, align 8
  %_14 = getelementptr i8, i8 addrspace (1)* %_12, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  %_15 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_16 = bitcast i8 addrspace (1)* %_15 to i64 addrspace (1)*
  store i64 1, i64 addrspace (1)* %_16, align 8
  %_17 = getelementptr i8, i8 addrspace (1)* %_15, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_17)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_18 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_19 = bitcast i8 addrspace (1)* %_18 to i64 addrspace (1)*
  store i64 9223372036854775807, i64 addrspace (1)* %_19, align 8
  %_20 = getelementptr i8, i8 addrspace (1)* %_18, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_20)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_21 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 1)
  %_22 = extractvalue {i64, i1} %_21, 1
  br i1 %_22, label %L5, label %L4
L2:
  %_39 = load i64, i64* %_8
  call void @_bal_panic (i64 %_39)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_23 = extractvalue {i64, i1} %_21, 0
  store i64 %_23, i64* %_3
  %_24 = load i64, i64* %_3
  %_25 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_26 = bitcast i8 addrspace (1)* %_25 to i64 addrspace (1)*
  store i64 %_24, i64 addrspace (1)* %_26, align 8
  %_27 = getelementptr i8, i8 addrspace (1)* %_25, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_27)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  %_28 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 0, i64 9223372036854775807)
  %_29 = extractvalue {i64, i1} %_28, 1
  br i1 %_29, label %L7, label %L6
L5:
  store i64 1793, i64* %_8
  br label %L2
L6:
  %_30 = extractvalue {i64, i1} %_28, 0
  store i64 %_30, i64* %_5
  %_31 = load i64, i64* %_5
  %_32 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_31, i64 1)
  %_33 = extractvalue {i64, i1} %_32, 1
  br i1 %_33, label %L9, label %L8
L7:
  store i64 2049, i64* %_8
  br label %L2
L8:
  %_34 = extractvalue {i64, i1} %_32, 0
  store i64 %_34, i64* %_6
  %_35 = load i64, i64* %_6
  %_36 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_37 = bitcast i8 addrspace (1)* %_36 to i64 addrspace (1)*
  store i64 %_35, i64 addrspace (1)* %_37, align 8
  %_38 = getelementptr i8, i8 addrspace (1)* %_36, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_38)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  ret void
L9:
  store i64 2049, i64* %_8
  br label %L2
}
