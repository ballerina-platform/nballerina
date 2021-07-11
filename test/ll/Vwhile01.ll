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
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L5, label %L1
L1:
  store i64 %_0, i64* %maxExclusive
  store i64 0, i64* %i
  br label %L2
L2:
  %_7 = load i64, i64* %i
  %_8 = load i64, i64* %maxExclusive
  %_9 = icmp slt i64 %_7, %_8
  store i1 %_9, i1* %_1
  %_10 = load i1, i1* %_1
  br i1 %_10, label %L4, label %L3
L3:
  ret void
L4:
  %_11 = load i64, i64* %i
  %_12 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_13 = bitcast i8 addrspace (1)* %_12 to i64 addrspace (1)*
  store i64 %_11, i64 addrspace (1)* %_13, align 8
  %_14 = getelementptr i8, i8 addrspace (1)* %_12, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_15 = load i64, i64* %i
  %_16 = call i64 @_B_increase (i64 %_15)
  store i64 %_16, i64* %_3
  %_17 = load i64, i64* %_3
  store i64 %_17, i64* %i
  br label %L2
L5:
  call void @_bal_panic (i64 3076)
  unreachable
}
define internal i64 @_B_increase (i64 %_0) {
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
  %_7 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_6, i64 1)
  %_8 = extractvalue {i64, i1} %_7, 1
  br i1 %_8, label %L5, label %L4
L2:
  %_11 = load i64, i64* %_2
  call void @_bal_panic (i64 %_11)
  unreachable
L3:
  call void @_bal_panic (i64 5124)
  unreachable
L4:
  %_9 = extractvalue {i64, i1} %_7, 0
  store i64 %_9, i64* %_1
  %_10 = load i64, i64* %_1
  ret i64 %_10
L5:
  store i64 5377, i64* %_2
  br label %L2
}
