(module
 (type $i32_=>_none (func (param i32)))
 (import "console" "log" (func $println (param i32)))
 (export "printBoolean" (func $printBoolean))
 (func $printBoolean (param $0 i32)
  (block $first
   (block $second
    (br_if $second
     (local.get $0)
    )
    (call $println
     (i32.const 0)
    )
    (br $first)
   )
   (call $println
    (i32.const 1)
   )
  )
 )
)