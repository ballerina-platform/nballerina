@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i8 addrspace (1)*
  %_2 = alloca i64
  %_3 = alloca i1
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L8, label %L1
L1:
  store i64 0, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = icmp sge i64 %_8, 0
  store i1 %_9, i1* %_0
  %_10 = load i1, i1* %_0
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
  store i8 addrspace (1)* null, i8 addrspace (1)** %_1
  %_15 = load i64, i64* %i
  %_16 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_15, i64 1)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L10, label %L9
L5:
  br label %L3
L6:
  br label %L2
L7:
  %_23 = load i64, i64* %_4
  call void @_bal_panic (i64 %_23)
  unreachable
L8:
  call void @_bal_panic (i64 772)
  unreachable
L9:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %_2
  %_19 = load i64, i64* %_2
  store i64 %_19, i64* %i
  %_20 = load i64, i64* %i
  %_21 = icmp eq i64 %_20, 2
  store i1 %_21, i1* %_3
  %_22 = load i1, i1* %_3
  br i1 %_22, label %L5, label %L6
L10:
  store i64 2305, i64* %_4
  br label %L7
}
