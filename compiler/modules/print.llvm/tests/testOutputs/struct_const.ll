define {i64, i64} @test() {
  ret {i64, i64} {i64 1, i64 2}
}
define {{i64, i64}, {i64, i64}} @test2() {
  ret {{i64, i64}, {i64, i64}} {{i64, i64} {i64 1, i64 2}, {i64, i64} {i64 3, i64 4}}
}
define {{i64, i64}()*} @test3() {
  ret {{i64, i64}()*} {{i64, i64}()* @test}
}
