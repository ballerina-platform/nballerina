target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128-ni:1" ; specify non integral addr space
target triple ="x86_64-pc-linux-gnu"
@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace(1)* @_bal_alloc (i64)
declare i8 addrspace(1)* @llvm.ptrmask.p0i8.i64 (i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %v = alloca i8 addrspace(1)* ; allocate `v` in addrspace 1
  %_0 = alloca i64
  %n = alloca i64
  %_1 = alloca i64
  %_2 = alloca i8
  %_3 = load i8*, i8** @_bal_stack_guard
  %_4 = icmp ult i8* %_2, %_3
  br i1 %_4, label %L3, label %L1
L1:
  %_5 = call i8 addrspace(1)* @_bal_alloc (i64 8) ; specify return value is addrspace(1)
  %_6 = bitcast i8 addrspace(1)* %_5 to i64 addrspace(1)*
  store i64 1, i64 addrspace(1)* %_6, align 8
  %_7 = getelementptr i8, i8 addrspace(1)* %_5, i64 144115188075855872
  store i8 addrspace(1)* %_7, i8 addrspace(1)** %v
  %_8 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %_8_addrspacecast = addrspacecast i8 addrspace(1)* %_8 to i8* ; cast to default addrspace
  %_9 = ptrtoint i8* %_8_addrspacecast to i64
  %_10 = and i64 %_9, 9151314442816847872
  %_11 = icmp eq i64 %_10, 144115188075855872
  br i1 %_11, label %L4, label %L5
L2:
  %_16 = load i64, i64* %_1
  call void @_bal_panic (i64 %_16)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_12 = call i8 addrspace(1)* @llvm.ptrmask.p0i8.i64 (i8 addrspace(1)* %_8, i64 72057594037927935)
  %_12_addrspacecast = addrspacecast i8 addrspace(1)* %_12 to i8*
  %_13 = bitcast i8* %_12_addrspacecast to i64*
  %_14 = load i64, i64* %_13, align 8
  store i64 %_14, i64* %_0
  %_15 = load i64, i64* %_0
  store i64 %_15, i64* %n  
  ret void
L5:
  store i64 1283, i64* %_1
  br label %L2
}
