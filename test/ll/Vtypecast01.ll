@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)*, i64) readnone speculatable
declare i8 addrspace (1)* @_bal_alloc (i64)
declare void @_Bio__println (i8 addrspace (1)*)
define void @_B_main () {
  %_0 = alloca i8 addrspace (1)*
  %_1 = alloca i64
  %n = alloca i64
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i8
  %_5 = load i8*, i8** @_bal_stack_guard
  %_6 = icmp ult i8* %_4, %_5
  br i1 %_6, label %L3, label %L1
L1:
  %_7 = call i8 addrspace (1)* @_B_foo (i64 1017)
  store i8 addrspace (1)* %_7, i8 addrspace (1)** %_0
  %_8 = load i8 addrspace (1)*, i8 addrspace (1)** %_0
  %_9 = addrspacecast i8 addrspace (1)* %_8 to i8*
  %_10 = ptrtoint i8* %_9 to i64
  %_11 = and i64 %_10, 9151314442816847872
  %_12 = icmp eq i64 %_11, 504403158265495552
  br i1 %_12, label %L4, label %L5
L2:
  %_21 = load i64, i64* %_3
  call void @_bal_panic (i64 %_21)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_13 = call i8 addrspace (1)* @llvm.ptrmask.p1i8.i64 (i8 addrspace (1)* %_8, i64 72057594037927935)
  %_14 = bitcast i8 addrspace (1)* %_13 to i64 addrspace (1)*
  %_15 = load i64, i64 addrspace (1)* %_14, align 8
  store i64 %_15, i64* %_1
  %_16 = load i64, i64* %_1
  store i64 %_16, i64* %n
  %_17 = load i64, i64* %n
  %_18 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_19 = bitcast i8 addrspace (1)* %_18 to i64 addrspace (1)*
  store i64 %_17, i64 addrspace (1)* %_19, align 8
  %_20 = getelementptr i8, i8 addrspace (1)* %_18, i64 504403158265495552
  call void @_Bio__println (i8 addrspace (1)* %_20)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  ret void
L5:
  store i64 1027, i64* %_3
  br label %L2
}
define internal i8 addrspace (1)* @_B_foo (i64 %_0) {
  %n = alloca i64
  %_1 = alloca i8
  %_2 = load i8*, i8** @_bal_stack_guard
  %_3 = icmp ult i8* %_1, %_2
  br i1 %_3, label %L2, label %L1
L1:
  store i64 %_0, i64* %n
  %_4 = load i64, i64* %n
  %_5 = call i8 addrspace (1)* @_bal_alloc (i64 8)
  %_6 = bitcast i8 addrspace (1)* %_5 to i64 addrspace (1)*
  store i64 %_4, i64 addrspace (1)* %_6, align 8
  %_7 = getelementptr i8, i8 addrspace (1)* %_5, i64 504403158265495552
  ret i8 addrspace (1)* %_7
L2:
  call void @_bal_panic (i64 2052)
  unreachable
}
