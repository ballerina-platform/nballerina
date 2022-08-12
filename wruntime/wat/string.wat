(module 
  ;; import
  (import "string" "create" (func $_js_string_create (param i32) (param i32) (result anyref))) 
  (import "string" "length" (func $_js_string_length (param anyref) (result i32))) 
  (import "string" "concat" (func $_js_string_concat (param anyref) (param anyref) (result anyref))) 
  (import "string" "eq" (func $_js_string_eq (param anyref) (param anyref) (result i32))) 
  (import "string" "comp" (func $_js_string_comp (param anyref) (param anyref) (result i32))) 
  ;; $_bal_string_subtype_contains
  (func $_bal_string_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $StringSubtype))
    (local $3 (ref null $AnyList))
    (local $4 i32)
    (local $5 i32)
    (local.set $2
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttStringSubtype)))
    (local.set $3
      (struct.get $StringSubtype $values
        (ref.as_non_null
          (local.get $2))))
    (local.set $4
      (call $_bal_string_list_contains
        (ref.as_non_null
          (local.get $3))
        (local.get $1)))
    (if
      (i32.eqz
        (call $_bal_is_char
          (local.get $1)))
      (local.set $5
        (struct.get $StringSubtype $nonCharAllowed
          (ref.as_non_null
            (local.get $2))))
      (local.set $5
        (struct.get $StringSubtype $charAllowed
          (ref.as_non_null
            (local.get $2)))))
    (return 
      (i32.eq
        (local.get $4)
        (local.get $5))))
  ;; $_bal_string_list_contains
  (func $_bal_string_list_contains (param $0 (ref $AnyList)) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local.set $2
      (i32.const 0))
    (local.set $3
      (array.len $AnyList
        (local.get $0)))
    (loop $loop$cont
      (if
        (i32.lt_u
          (local.get $2)
          (local.get $3))
        (block
          (local.set $4
            (i32.add
              (local.get $2)
              (i32.div_u
                (i32.sub
                  (local.get $3)
                  (local.get $2))
                (i32.const 2))))
          (local.set $5
            (call $_bal_string_compare
              (local.get $1)
              (array.get $AnyList
                (local.get $0)
                (local.get $4))))
          (if 
            (i32.eq  
              (local.get $5)
              (i32.const 1))
            (return
              (i32.const 1)))
          (if
            (i32.eqz
              (local.get $5))
            (local.set $3
              (local.get $4))
            (local.set $2
              (i32.add
                (i32.const 1)
                (local.get $4))))
          (br $loop$cont))))
    (return 
      (i32.const 0)))
  ;; $_bal_is_char
  (func $_bal_is_char (param $0 eqref) (result i32) 
    (i64.eq
      (call $_bal_string_length
        (local.get $0))
      (i64.const 1)))
  ;; $_bal_string_length
  (func $_bal_string_length (param $0 eqref) (result i64) 
    (local $1 (ref null $String))
    (local.set $1
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttString)))
    (i64.extend_i32_u 
      (i32.sub 
        (call $_js_string_length 
          (struct.get $String $val 
            (ref.as_non_null
              (local.get $1)))) 
        (array.len $Surrogate 
          (struct.get $String $surrogate 
            (ref.as_non_null
              (local.get $1)))))))
  ;; $_bal_string_compare
  (func $_bal_string_compare (param $0 eqref) (param $1 eqref) (result i32) 
    (local $2 anyref)
    (local $3 anyref)
    (local.set $2
      (struct.get $String $val
        (ref.cast
          (ref.as_data
            (local.get $0))
          (global.get $rttString))))
    (local.set $3
      (struct.get $String $val
        (ref.cast
          (ref.as_data
            (local.get $1))
          (global.get $rttString))))
    (return 
      (call $_js_string_comp
        (local.get $2)
        (local.get $3))))
  ;; $_bal_string_concat
  (func $_bal_string_concat (param $0 (ref $String)) (param $1 (ref $String)) (result (ref $String)) 
    (local $2 (ref null $Surrogate)) 
    (local $3 (ref null $Surrogate)) 
    (local $4 i32) 
    (local $5 i32) 
    (local $6 (ref null $Surrogate)) 
    (local $7 i32) 
    (local $8 i32) 
    (block 
      (local.set $2 
        (struct.get $String $surrogate 
          (local.get $0))) 
      (local.set $3 
        (struct.get $String $surrogate 
          (local.get $1))) 
      (local.set $4 
        (array.len $Surrogate 
          (local.get $2))) 
      (local.set $5 
        (array.len $Surrogate 
          (local.get $3))) 
      (local.set $6 
        (array.new_default_with_rtt $Surrogate 
          (i32.add 
            (local.get $4) 
            (local.get $5)) 
          (rtt.canon $Surrogate))) 
      (local.set $7 
        (i32.const 0)) 
      (loop $block1$continue 
        (if 
          (i32.lt_s 
            (local.get $7) 
            (local.get $4)) 
          (block 
            (array.set $Surrogate 
              (local.get $6) 
              (local.get $7) 
              (array.get $Surrogate 
                (local.get $2) 
                (local.get $7))) 
            (local.set $7 
              (i32.add 
                (local.get $7) 
                (i32.const 1))) 
            (br $block1$continue)))) 
      (local.set $8 
        (i32.const 0)) 
      (loop $block2$continue 
        (if 
          (i32.lt_s 
            (local.get $8) 
            (local.get $5)) 
          (block 
            (array.set $Surrogate 
              (local.get $6) 
              (local.get $7) 
              (array.get $Surrogate 
                (local.get $3) 
                (local.get $8))) 
            (local.set $7 
              (i32.add 
                (local.get $7) 
                (i32.const 1))) 
            (local.set $8 
              (i32.add 
                (local.get $8) 
                (i32.const 1))) 
            (br $block2$continue)))) 
      (return 
        (struct.new_with_rtt $String 
          (i32.const 1024)
          (call $_js_string_concat 
            (struct.get $String $val 
              (local.get $0)) 
            (struct.get $String $val 
              (local.get $1))) 
          (ref.as_non_null 
            (local.get $6))
          (i32.const -1) 
          (global.get $rttString)))))
  ;; $_bal_string_eq
  (func $_bal_string_eq (param $0 eqref) (param $1 eqref) (result i32) 
    (local $2 anyref)
    (local $3 anyref)
    (local.set $2
      (struct.get $String $val
        (ref.cast
          (ref.as_data
            (local.get $0))
          (global.get $rttString))))
    (local.set $3
      (struct.get $String $val
        (ref.cast
          (ref.as_data
            (local.get $1))
          (global.get $rttString))))
    (return 
      (call $_js_string_eq
        (local.get $2)
        (local.get $3))))
  ;; end
  ) 
