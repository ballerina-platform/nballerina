@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [7 x i8]} {i8 3, [7 x i8] c"abc\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
declare i64 @_Bstring__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
define void @_B_main() {
  %s = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i64
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %16, label %7
7:
  %8 = bitcast {i8, [7 x i8]}* @.str0 to i8*
  %9 = addrspacecast i8* %8 to i8 addrspace(1)*
  %10 = getelementptr i8, i8 addrspace(1)* %9, i64 720575940379279360
  store i8 addrspace(1)* %10, i8 addrspace(1)** %s
  %11 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  call void @_Bio__println(i8 addrspace(1)* %11)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  %12 = load i8 addrspace(1)*, i8 addrspace(1)** %s
  %13 = call i64 @_Bstring__length(i8 addrspace(1)* %12)
  store i64 %13, i64* %2
  %14 = load i64, i64* %2
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %14)
  call void @_Bio__println(i8 addrspace(1)* %15)
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  ret void
16:
  call void @_bal_panic(i64 772)
  unreachable
}
