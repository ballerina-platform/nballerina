@_bal_stack_guard = external global i8*
@.str0 = internal unnamed_addr constant {i8, [15 x i8]} {i8 11, [15 x i8] c"hello world\00\00\00\00"}, align 8
declare void @_bal_panic(i64) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8
  %3 = load i8*, i8** @_bal_stack_guard
  %4 = icmp ult i8* %2, %3
  br i1 %4, label %9, label %5
5:
  %6 = bitcast {i8, [15 x i8]}* @.str0 to i8*
  %7 = addrspacecast i8* %6 to i8 addrspace(1)*
  %8 = getelementptr i8, i8 addrspace(1)* %7, i64 720575940379279360
  call void @_Bio__println(i8 addrspace(1)* %8)
  store i8 addrspace(1)* null, i8 addrspace(1)** %1
  ret void
9:
  call void @_bal_panic(i64 772)
  unreachable
}
