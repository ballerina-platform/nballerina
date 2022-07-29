(module 
  ;; tag
  (tag $index-outof-bound) 
  (tag $index-too-large) 
  (tag $bad-list-store) 
  (tag $no-filler-value) 
  ;; import
  (import "string" "create" (func $_js_string_create (param i32) (param i32) (result anyref))) 
  ;; export
  (export "no-filler-value" (tag $no-filler-value)) 
  (export "index-outof-bound" (tag $index-outof-bound)) 
  (export "index-too-large" (tag $index-too-large)) 
  (export "bad-list-store" (tag $bad-list-store)) 
  (export "_bal_list_length" (func $_bal_list_length)) 
  (export "_bal_list_get" (func $_bal_list_get)) 
  ;; $_bal_list_create
  (func $_bal_list_create (param $0 i64) (param $1 (ref $ListDesc)) (result (ref $List)) 
    (local $3 i64) 
    (local $4 (ref null $List)) 
    (if 
      (i64.ge_s 
        (local.get $0) 
        (i64.const 4)) 
      (local.set $3
        (local.get $0)) 
      (local.set $3 
        (i64.const 4))) 
    (local.set $4
      (struct.new_with_rtt $List
        (i32.const 262144)
        (local.get $1)
        (array.new_default_with_rtt $AnyList  
          (i32.wrap_i64 
            (local.get $3))
          (rtt.canon $AnyList)) 
        (local.get $0)
        (global.get $rttList)))
    (call $_bal_init_default
      (struct.get $List $arr
        (ref.as_non_null
          (local.get $4)))
      (local.get $1)
      (i32.const 0)
      (i32.wrap_i64 
        (local.get $3)))
    (return
      (ref.as_non_null
        (local.get $4))))
  ;; $_bal_list_get
  (func $_bal_list_get (param $0 eqref) (param $1 i32) (result eqref) 
    (local $2 (ref null $List))
    (local $3 i64)
    (local.set $2
      (ref.cast 
        (ref.as_data 
          (local.get $0)) 
        (global.get $rttList)))
    (local.set $3
      (call $_bal_casted_list_length 
        (ref.as_non_null
          (local.get $2))))
    (if 
      (i32.eqz 
        (i32.lt_s 
          (local.get $1) 
          (i32.const 0))) 
      (if 
        (i32.or
          (i32.lt_u
            (local.get $1) 
            (i32.wrap_i64 
              (local.get $3)))
          (call $_bal_check_list_filler
            (struct.get $List $desc 
              (ref.as_non_null
                (local.get $2)))
            (struct.get $List $len 
              (ref.as_non_null
                (local.get $2)))
            (i64.extend_i32_u
              (local.get $1))))
        (return
          (call $_bal_list_get_cast 
            (ref.as_non_null
              (local.get $2)) 
            (local.get $1)))
        (throw $no-filler-value)) 
      (throw $index-outof-bound)))
  ;; $_bal_list_set
  (func $_bal_list_set (param $0 (ref $List)) (param $1 eqref) (param $2 i64) 
    (if 
      (i64.ge_s 
        (local.get $2) 
        (i64.const 0)) 
      (if 
        (call $_bal_check_list_filler
          (struct.get $List $desc 
            (local.get $0))
          (struct.get $List $len 
            (local.get $0))
          (local.get $2))
        (call $_bal_list_grow 
          (local.get $0) 
          (local.get $1) 
          (local.get $2)) 
        (throw $no-filler-value)) 
      (throw $index-outof-bound)))
  ;; $push
  (func $push (param $0 (ref $List)) (param $1 eqref) 
    (call $_bal_list_grow 
      (local.get $0) 
      (local.get $1) 
      (call $_bal_list_length 
        (local.get $0))))
  ;; $_bal_list_grow
  (func $_bal_list_grow (param $0 (ref $List)) (param $1 eqref) (param $2 i64) 
    (local $3 (ref null $AnyList)) 
    (local $4 i64) 
    (local $5 i64) 
    (local $6 i64) 
    (local $7 (ref null $AnyList)) 
    (local $8 i32) 
    (local $9 i32) 
    (block 
      (if 
        (i64.gt_s 
          (local.get $2) 
          (i64.const 4294967295)) 
        (throw $index-too-large))
      (if 
        (i32.eqz
          (call $_bal_member_type_contains_tagged
            (struct.get $ListDesc $restType
              (struct.get $List $desc
                (local.get $0)))
            (local.get $1))) 
        (throw $bad-list-store)) 
      (local.set $3 
        (struct.get $List $arr 
          (local.get $0))) 
      (local.set $4 
        (call $_bal_casted_list_length 
          (local.get $0))) 
      (local.set $5 
        (i64.extend_i32_u 
          (array.len $AnyList 
            (local.get $3)))) 
      (if 
        (i64.le_s 
          (local.get $5) 
          (local.get $2)) 
        (block 
          (local.set $6 
            (i64.add 
              (local.get $2) 
              (i64.shr_u 
                (local.get $2) 
                (i64.const 1)))) 
          (if 
            (i64.gt_s 
              (local.get $6) 
              (i64.const 4294967295)) 
            (local.set $6 
              (i64.const 4294967295))) 
          (local.set $9 
            (i32.wrap_i64 
              (local.get $4))) 
          (local.set $7 
            (array.new_default_with_rtt $AnyList 
              (i32.wrap_i64 
                (local.get $6)) 
              (rtt.canon $AnyList)))
          (call $_bal_init_default
            (ref.as_non_null
              (local.get $7))
            (struct.get $List $desc
              (local.get $0))
            (i32.const 0)
            (i32.wrap_i64 
              (local.get $6))) 
          (local.set $8 
            (i32.const 0)) 
          (loop $block1$continue 
            (if 
              (i32.lt_s 
                (local.get $8) 
                (local.get $9)) 
              (block 
                (array.set $AnyList 
                  (local.get $7) 
                  (local.get $8) 
                  (call $_bal_list_get_cast 
                    (local.get $0) 
                    (local.get $8))) 
                (local.set $8 
                  (i32.add 
                    (local.get $8) 
                    (i32.const 1))) 
                (br $block1$continue)))) 
          (struct.set $List $arr 
            (local.get $0) 
            (ref.as_non_null 
              (local.get $7))))) 
      (block 
        (array.set $AnyList 
          (struct.get $List $arr 
            (local.get $0)) 
          (i32.wrap_i64 
            (local.get $2)) 
          (local.get $1)) 
        (if 
          (i64.le_s 
            (local.get $4) 
            (local.get $2)) 
          (struct.set $List $len 
            (local.get $0) 
            (i64.add 
              (local.get $2) 
              (i64.const 1)))))))
  ;; $_bal_list_eq
  (func $_bal_list_eq (param $0 eqref) (param $1 eqref) (param $2 (ref null $EqStack)) (result i32)
    (local $3 i32)
    (local $4 (ref null $List))
    (local $5 (ref null $List))
    (local $6 i32)
    (local $7 i32)
    (local $8 i32)
    (local.set $3
      (i32.const 0))
    (local.set $8
      (i32.const 0))
    (local.set $4
      (ref.cast 
        (ref.as_data
          (local.get $0))
        (global.get $rttList)))
    (local.set $5
      (ref.cast 
        (ref.as_data
          (local.get $1))
        (global.get $rttList)))
    (local.set $6
      (i32.wrap_i64
        (struct.get $List $len
          (local.get $4))))
    (local.set $7
      (i32.wrap_i64
        (struct.get $List $len
          (local.get $5))))
    (if 
      (i32.eq
        (local.get $6)
        (local.get $7))
      (block $loop$br 
        (loop $loop$cont
          (if 
            (i32.lt_u
              (local.get $8)
              (local.get $6))
            (if 
              (call $_bal_eq
                (call $_bal_list_get_cast
                  (ref.as_non_null
                    (local.get $4))
                  (local.get $8))
                (call $_bal_list_get_cast
                  (ref.as_non_null
                    (local.get $5))
                  (local.get $8))
                (local.get $2))
              (block
                (local.set $8
                  (i32.add
                    (local.get $8)
                    (i32.const 1)))
                (local.set $3
                  (i32.const 1))
                (br $loop$cont))
              (block
                (local.set $3
                  (i32.const 0))
                (br $loop$br)))))))
    (return 
      (local.get $3)))
  ;; $_bal_list_length
  (func $_bal_list_length (param $0 eqref) (result i64) 
    (call $_bal_casted_list_length 
      (ref.cast 
        (ref.as_data 
          (local.get $0)) 
        (global.get $rttList))))
  ;; $_bal_casted_list_length
  (func $_bal_casted_list_length (param $0 (ref $List)) (result i64) 
    (struct.get $List $len 
      (local.get $0)))
  ;; $_bal_list_get_cast
  (func $_bal_list_get_cast (param $0 (ref $List)) (param $1 i32) (result eqref) 
    (array.get $AnyList 
      (struct.get $List $arr 
        (local.get $0)) 
      (local.get $1)))   
  ;; $_bal_array_subtype_contains
  (func $_bal_array_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $ArrMapSubtype))
    (local $3 i32)
    (local $4 (ref null $ListDesc))
    (local.set $2
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttArrMapSubtype)))
    (local.set $3
      (struct.get $ArrMapSubtype $bitSet
        (ref.as_non_null
          (local.get $2))))
    (local.set $4
      (struct.get $List $desc 
        (ref.cast
          (ref.as_data
            (local.get $1))
          (global.get $rttList))))
    (return
      (call $_bal_member_type_is_subtype_simple
        (struct.get $ListDesc $restType
          (ref.as_non_null
            (local.get $4)))
        (local.get $3))))
  ;; $_bal_check_list_filler
  (func $_bal_check_list_filler (param $0 (ref $ListDesc)) (param $1 i64) (param $2 i64) (result i32)
    (if
      (i64.le_u
        (local.get $2)
        (local.get $1))
      (return
        (i32.const 1)))
    (return
      (call $_bal_check_filler_value
        (struct.get $ListDesc $restType
          (local.get $0))
        (struct.get $ListDesc $filler
          (local.get $0)))))
  ;; $_bal_check_filler_value
  (func $_bal_check_filler_value (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $ComplexType))
    (local $3 i32)
    (local $4 i32)
    (if
      (ref.is_i31
        (local.get $0))
      (block
        (local.set $4
          (i31.get_u
            (ref.as_i31
              (local.get $0))))
        (if
          (i32.or
            (i32.eq
              (i32.popcnt
                (local.get $4))
              (i32.const 1))
            (i32.eq 
              (i32.const 8386559)
              (local.get $4)))
          (return 
            (i32.const 1)))
        (return
          (i32.const 0))))
    (local.set $2
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttComplexType)))
    (local.set $3
      (i32.or
        (struct.get $ComplexType $all
          (ref.as_non_null
            (local.get $2)))
        (struct.get $ComplexType $some
          (ref.as_non_null
            (local.get $2)))))
    (if 
      (ref.is_null
        (local.get $1))
      (if
        (i32.and
          (i32.eq
            (i32.popcnt
              (local.get $3))
            (i32.const 1))
          (i32.or
            (i32.ne
              (local.get $3)
              (i32.const 262144))
            (i32.ne
              (local.get $3)
              (i32.const 524288))))
        (return
          (i32.const 1))
        (return 
          (i32.const 0))))
    (if
      (i32.and
        (local.get $3)
        (i32.const 262144))
      (return 
        (i32.const 1)))
    (if
      (i32.and
        (local.get $3)
        (i32.const 524288))
      (return 
        (i32.const 1)))
    (return
      (i32.const 0)))
  ;; $_bal_init_default
  (func $_bal_init_default (param $0 (ref $AnyList)) (param $1 (ref $ListDesc)) (param $2 i32) (param $3 i32)
    (local $4 i32)
    (local.set $4
      (local.get $2))
    (loop $loop$cont
      (if
        (i32.lt_u
          (local.get $4)
          (local.get $3))
        (block
          (array.set $AnyList 
            (local.get $0)
            (local.get $4)
            (call $_bal_filler_value
              (struct.get $ListDesc $restType
               (local.get $1))
              (struct.get $ListDesc $filler
               (local.get $1))))
          (local.set $4
            (i32.add
              (local.get $4)
              (i32.const 1)))
          (br $loop$cont)))))
  ;; $_bal_filler_value
  (func $_bal_filler_value (param $0 eqref) (param $1 eqref) (result eqref) ;; restType, filler
    (local $2 (ref null $ComplexType))
    (local $3 i32)
    (local $4 eqref)
    (if
      (i32.eqz
        (ref.is_i31
          (local.get $0)))
      (block
        (local.set $2
          (ref.cast
            (ref.as_data
              (local.get $0))
            (global.get $rttComplexType)))
        (local.set $3
          (i32.or
            (struct.get $ComplexType $all
              (ref.as_non_null
                (local.get $2)))
            (struct.get $ComplexType $some
              (ref.as_non_null
                (local.get $2)))))
        (if 
          (i32.eqz
            (ref.is_null
              (local.get $1)))
          (block
            (if
              (i32.eq
                (local.get $3)
                (i32.const 262144))
              (return 
                (call $_bal_list_create
                  (i64.const 0)
                  (ref.cast
                    (ref.as_data
                      (ref.as_non_null
                        (local.get $1)))
                    (global.get $rttListDesc)))))
            (if
              (i32.eq
                (local.get $3)
                (i32.const 524288))
              (return 
                (call $_bal_mapping_construct
                  (i32.const 0)
                  (ref.cast
                    (ref.as_data
                      (ref.as_non_null
                        (local.get $1)))
                    (global.get $rttMappingDesc))))))))
      (block
        (local.set $3
          (i31.get_u
            (ref.as_i31
              (local.get $0))))))
    (return 
      (call $_bal_uniform_type_filler
        (local.get $3))))
  ;; $_bal_uniform_type_filler
  (func $_bal_uniform_type_filler (param $0 i32) (result eqref)
    (if 
      (i32.eq
        (i32.const 128)
        (local.get $0))
      (return
        (struct.new_with_rtt $BoxedInt 
          (i32.const 128) 
          (i64.const 0) 
          (global.get $rttBoxedInt))))
    (if 
      (i32.eq
        (i32.const 256)
        (local.get $0))
      (return
        (struct.new_with_rtt $Float
          (i32.const 256) 
          (f64.const 0.0) 
          (global.get $rttFloat))))
    (if 
      (i32.eq
        (i32.const 1024)
        (local.get $0))
      (return
        (struct.new_with_rtt $String 
          (i32.const 1024) 
          (call $_js_string_create 
            (i32.const 0) 
            (i32.const 0)) 
          (array.new_default_with_rtt $Surrogate 
            (i32.const 0) 
            (rtt.canon $Surrogate)) 
          (i32.const -1) 
          (global.get $rttString))))
    (if 
      (i32.eq
        (i32.const 2)
        (local.get $0))
      (return
        (i31.new
          (i32.const 0))))
    (return
      (ref.null data)))  
  ;; $_bal_mapping_construct
  (func $_bal_mapping_construct (param $0 i32) (param $1 eqref) (result eqref)
    (ref.null data))  
 ;; end
) 
