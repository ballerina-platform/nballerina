@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  call void @_B_printInts (i64 5)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_0
  ret void
L2:
  call void @_bal_panic (i64 772)
  unreachable
}
define internal void @_B_printInts (i64 %_0) {
  %maxExclusive = alloca i64
  %i = alloca i64
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L6, label %L1
L1:
  store i64 %_0, i64* %maxExclusive
  store i64 0, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = load i64, i64* %maxExclusive
  %_10 = icmp slt i64 %_8, %_9
  store i1 %_10, i1* %_1
  %_11 = load i1, i1* %_1
  br i1 %_11, label %L4, label %L3
L3:
  ret void
L4:
  %_12 = load i64, i64* %i
  %_13 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_14 = bitcast i8 addrspace (1)* %_13 to i64 addrspace (1)*
  store i64 %_12, i64 addrspace (1)* %_14, align 8
  %_15 = getelementptr i8, i8 addrspace (1)* %_13, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_15)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_16 = load i64, i64* %i
  %_17 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_16, i64 1)
  %_18 = extractvalue {i64, i1} %_17, 1
  br i1 %_18, label %L8, label %L7
L5:
  %_21 = load i64, i64* %_4
  call void @_bal_panic (i64 %_21)
  unreachable
L6:
  call void @_bal_panic (i64 3076)
  unreachable
L7:
  %_19 = extractvalue {i64, i1} %_17, 0
  store i64 %_19, i64* %_3
  %_20 = load i64, i64* %_3
  store i64 %_20, i64* %i
  br label %L2
L8:
  store i64 4097, i64* %_4
  br label %L5
}
