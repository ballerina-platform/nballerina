@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare void @_Bio__println(i8 addrspace(1)*)
define void @_B_main() {
  %x = alloca i64
  %1 = alloca i1
  %x.1 = alloca i64
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %14, label %7
7:
  store i64 1, i64* %x
  %8 = load i64, i64* %x
  %9 = icmp eq i64 %8, 1
  store i1 %9, i1* %1
  %10 = load i1, i1* %1
  br i1 %10, label %clause.0, label %pattern.0
clause.0:
  %11 = load i64, i64* %x
  store i64 %11, i64* %x.1
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543620771439))
  store i8 addrspace(1)* null, i8 addrspace(1)** %2
  br label %12
pattern.0:
  br label %12
12:
  br label %clause.0.1
clause.0.1:
  call void @_Bio__println(i8 addrspace(1)* getelementptr(i8, i8 addrspace(1)* null, i64 3098476543622082145))
  store i8 addrspace(1)* null, i8 addrspace(1)** %3
  br label %13
13:
  ret void
14:
  %15 = call i8 addrspace(1)* @_bal_panic_construct(i64 772)
  call void @_bal_panic(i8 addrspace(1)* %15)
  unreachable
}
