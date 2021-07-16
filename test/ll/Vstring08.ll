@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i16, i16, [4 x i8]} {i16 4, i16 1, [4 x i8] c"\F0\9F\98\80"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare i64 @_Bstring__length(i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8
  %4 = load i8*, i8** @_bal_stack_guard
  %5 = icmp ult i8* %3, %4
  br i1 %5, label %13, label %6
6:
  %7 = bitcast {i16, i16, [4 x i8]}* @.str0 to i8*
  %8 = addrspacecast i8* %7 to i8 addrspace(1)*
  %9 = getelementptr i8, i8 addrspace(1)* %8, i64 720575940379279361
  %10 = call i64 @_Bstring__length(i8 addrspace(1)* %9)
  store i64 %10, i64* %1
  %11 = load i64, i64* %1
  %12 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 %11)
  call void @_Bio__println(i8 addrspace(1)* %12)
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  ret void
13:
  call void @_bal_panic(i64 772)
  unreachable
}
