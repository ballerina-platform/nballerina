@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare {i64, i1} @llvm.ssub.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
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
  call void @_B_foo (i64 1, i64 1)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  call void @_B_foo (i64 2, i64 1)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  call void @_B_foo (i64 5, i64 4)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  call void @_B_foo (i64 12, i64 10)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_3
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_foo (i64 %_0, i64 %_1) {
  %x = alloca i64
  %y = alloca i64
  %_2 = alloca i1
  %_3 = alloca i64
  %_4 = alloca i8 addrspace (1)*
  %_5 = alloca i1
  %_6 = alloca i64
  %_7 = alloca i8 addrspace (1)*
  %_8 = alloca i8 addrspace (1)*
  %_9 = alloca i64
  %_10 = alloca i8
  %_11 = load i8*, i8** @_bal_stack_guard
  %_12 = icmp ult i8* %_10, %_11
  br i1 %_12, label %L9, label %L1
L1:
  store i64 %_0, i64* %x
  store i64 %_1, i64* %y
  %_13 = load i64, i64* %x
  %_14 = load i64, i64* %y
  %_15 = icmp sgt i64 %_13, %_14
  store i1 %_15, i1* %_2
  %_16 = load i1, i1* %_2
  br i1 %_16, label %L2, label %L3
L2:
  %_17 = load i64, i64* %x
  %_18 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_17, i64 1)
  %_19 = extractvalue {i64, i1} %_18, 1
  br i1 %_19, label %L11, label %L10
L3:
  %_23 = load i64, i64* %x
  %_24 = load i64, i64* %y
  %_25 = icmp slt i64 %_23, %_24
  store i1 %_25, i1* %_5
  %_26 = load i1, i1* %_5
  br i1 %_26, label %L4, label %L5
L4:
  %_27 = load i64, i64* %y
  %_28 = call {i64, i1} @llvm.ssub.with.overflow.i64 (i64 %_27, i64 1)
  %_29 = extractvalue {i64, i1} %_28, 1
  br i1 %_29, label %L13, label %L12
L5:
  %_33 = load i64, i64* %x
  %_34 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_33)
  call void @_Bio__println (i8 addrspace (1)* %_34)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_8
  br label %L6
L6:
  br label %L7
L7:
  ret void
L8:
  %_35 = load i64, i64* %_9
  call void @_bal_panic (i64 %_35)
  unreachable
L9:
  call void @_bal_panic (i64 2564)
  unreachable
L10:
  %_20 = extractvalue {i64, i1} %_18, 0
  store i64 %_20, i64* %_3
  %_21 = load i64, i64* %_3
  %_22 = load i64, i64* %y
  call void @_B_foo (i64 %_21, i64 %_22)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_4
  br label %L7
L11:
  store i64 3073, i64* %_9
  br label %L8
L12:
  %_30 = extractvalue {i64, i1} %_28, 0
  store i64 %_30, i64* %_6
  %_31 = load i64, i64* %x
  %_32 = load i64, i64* %_6
  call void @_B_foo (i64 %_31, i64 %_32)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_7
  br label %L6
L13:
  store i64 3585, i64* %_9
  br label %L8
}
