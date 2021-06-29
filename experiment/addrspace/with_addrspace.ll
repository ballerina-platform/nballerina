target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128-ni:1"
target triple ="x86_64-pc-linux-gnu"

@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace(1)* @_bal_alloc (i64)
declare i8 addrspace(1)* @llvm.ptrmask.p0i8.i64 (i8 addrspace(1)*, i64) readnone speculatable
declare void @_Bio__println (i8*)
define void @_B_main () {
  %v = alloca i8 addrspace(1)*
  %_0 = alloca i64
  %n = alloca i64
  %_1 = alloca i8*
  %_2 = alloca i64
  %_3 = alloca i8
  %_4 = load i8*, i8** @_bal_stack_guard
  %_5 = icmp ult i8* %_3, %_4
  br i1 %_5, label %L3, label %L1
L1:
  %_6 = call i8 addrspace(1)* @_bal_alloc (i64 8)
  %_7 = bitcast i8 addrspace(1)* %_6 to i64 addrspace(1)*
  store i64 1, i64 addrspace(1)* %_7, align 8
  %_8 = getelementptr i8, i8 addrspace(1)* %_6, i64 144115188075855872
  store i8 addrspace(1)* %_8, i8 addrspace(1)** %v
  %_9 = load i8 addrspace(1)*, i8 addrspace(1)** %v
  %_9_addrspacecast = addrspacecast i8 addrspace(1)* %_8 to i8* 
  %_10 = ptrtoint i8* %_9_addrspacecast to i64
  %_11 = and i64 %_10, 9151314442816847872
  %_12 = icmp eq i64 %_11, 144115188075855872
  br i1 %_12, label %L4, label %L5
L2:
  %_21 = load i64, i64* %_2
  call void @_bal_panic (i64 %_21)
  unreachable
L3:
  call void @_bal_panic (i64 772)
  unreachable
L4:
  %_13 = call i8 addrspace(1)* @llvm.ptrmask.p0i8.i64 (i8 addrspace(1)* %_9, i64 72057594037927935)
  %_13_addrspacecast = addrspacecast i8 addrspace(1)* %_13 to i8*
  %_14 = bitcast i8* %_13_addrspacecast to i64*
  %_15 = load i64, i64* %_14, align 8
  store i64 %_15, i64* %_0
  %_16 = load i64, i64* %_0
  store i64 %_16, i64* %n
  %_17 = load i64, i64* %n
  %_18 = call i8 addrspace(1)* @_bal_alloc (i64 8)
  %_19 = bitcast i8 addrspace(1)* %_18 to i64 addrspace(1)*
  store i64 %_17, i64 addrspace(1)* %_19, align 8
  %_20 = getelementptr i8, i8 addrspace(1)* %_18, i64 144115188075855872
  %_20_addrspacecast = addrspacecast i8 addrspace(1)* %_20 to i8*
  call void @_Bio__println (i8* %_20_addrspacecast)
  store i8* null, i8** %_1
  ret void
L5:
  store i64 1283, i64* %_2
  br label %L2
}
