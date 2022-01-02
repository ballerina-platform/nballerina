(module
 (type $i32_=>_none (func (param i32)))
 (import "console" "log" (func $println (param i32)))
 (export "printBoolean" (func $printBoolean))
 (func $printBoolean (param $0 i32)
  (block $block$4$break
   (block
   )
   (if
    (local.get $0)
    (block
     (call $println
      (i32.const 0)
     )
     (block
      (br $block$4$break)
     )
    )
    (block
     (call $println
      (i32.const 1)
     )
     (block
      (br $block$4$break)
     )
    )
   )
  )
  (block
   (return)
  )
 )
)
