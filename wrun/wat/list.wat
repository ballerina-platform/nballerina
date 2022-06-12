(module 
  ;; tag
  (tag $index-outof-bound) 
  (tag $index-too-large) 
  (tag $bad-list-store) 
  (tag $no-filler-value) 
  ;; export
  (export "no-filler-value" (tag $no-filler-value)) 
  (export "index-outof-bound" (tag $index-outof-bound)) 
  (export "index-too-large" (tag $index-too-large)) 
  (export "bad-list-store" (tag $bad-list-store)) 
  (export "_bal_list_length" (func $_bal_list_length)) 
  (export "_bal_list_get" (func $_bal_list_get)) 
  ;; $_bal_list_create
  (func $_bal_list_create (param $0 i64) (param $1 eqref) (param $2 i32) (result (ref $List)) 
    (local $3 i64) 
    (block 
      (if 
        (i64.ge_s 
          (local.get $0) 
          (i64.const 4)) 
        (local.set $3
          (local.get $0)) 
        (local.set $3 
          (i64.const 4))) 
      (return 
        (struct.new_with_rtt $List
          (i32.const 262148)
          (local.get $1)
          (local.get $2)
          (array.new_with_rtt $AnyList 
            (local.get $1) 
            (i32.wrap_i64 
              (local.get $3))
            (rtt.canon $AnyList)) 
          (local.get $0)
          (global.get $rttList)))))
  ;; $_bal_list_get
  (func $_bal_list_get (param $0 eqref) (param $1 i32) (result eqref) 
    (local $2 (ref null $List))
    (local.set $2
      (ref.cast 
        (ref.as_data 
          (local.get $0)) 
        (global.get $rttList)))
    (if 
      (i32.eqz 
        (i32.or 
          (i32.lt_s 
            (local.get $1) 
            (i32.const 0))
          (i32.ge_s 
            (local.get $1) 
            (i32.wrap_i64 
              (call $_bal_casted_list_length 
                (ref.as_non_null
                  (local.get $2))))))) 
      (return 
        (call $_bal_list_get_cast 
          (ref.as_non_null
            (local.get $2)) 
          (local.get $1))) 
      (throw $index-outof-bound)))
  ;; $_bal_list_set
  (func $_bal_list_set (param $0 (ref $List)) (param $1 eqref) (param $2 i64) 
    (if 
      (i64.ge_s 
        (local.get $2) 
        (i64.const 0)) 
      (if 
        (call $_bal_check_filler_value
          (local.get $0)
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
          (i32.and
            (call $_bal_get_type
              (local.get $1))
            (struct.get $List $atomic
              (local.get $0)))) 
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
            (array.new_with_rtt $AnyList 
              (struct.get $List $default 
                (local.get $0))
              (i32.wrap_i64 
                (local.get $6)) 
              (rtt.canon $AnyList))) 
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
  (func $_bal_list_eq (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 (ref null $List))
    (local $4 (ref null $List))
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local.set $2
      (i32.const 0))
    (local.set $7
      (i32.const 0))
    (local.set $3
      (ref.cast 
        (ref.as_data
          (local.get $0))
        (global.get $rttList)))
    (local.set $4
      (ref.cast 
        (ref.as_data
          (local.get $1))
        (global.get $rttList)))
    (local.set $5
      (i32.wrap_i64
        (struct.get $List $len
          (local.get $3))))
    (local.set $6
      (i32.wrap_i64
        (struct.get $List $len
          (local.get $4))))
    (if 
      (i32.eq
        (local.get $5)
        (local.get $6))
      (block $loop$br 
        (loop $loop$cont
          (if 
            (i32.lt_u
              (local.get $7)
              (local.get $5))
            (if 
              (call $_bal_eq
                (call $_bal_list_get_cast
                  (ref.as_non_null
                    (local.get $3))
                  (local.get $7))
                (call $_bal_list_get_cast
                  (ref.as_non_null
                    (local.get $4))
                  (local.get $7)))
              (block
                (local.set $7
                  (i32.add
                    (local.get $7)
                    (i32.const 1)))
                (local.set $2
                  (i32.const 1))
                (br $loop$cont))
              (block
                (local.set $2
                  (i32.const 0))
                (br $loop$br)))))))
    (return 
      (local.get $2)))
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
  ;; $_bal_check_filler_value
  (func $_bal_check_filler_value (param $0 (ref $List)) (param $1 i64) (result i32)
    (local $2 i32)
    (local.set $2
      (struct.get $List $atomic
        (local.get $0)))
    (if
      (i64.le_u
        (local.get $1)
        (struct.get $List $len
          (local.get $0)))
      (return 
        (i32.const 1)))
    (if 
      (i32.or
        (i32.eq 
          (local.get $2)
          (i32.const 262148))
        (i32.or
          (i32.eq 
            (local.get $2)
            (i32.const 524296))
          (i32.eq
            (i32.const 8386559)
            (local.get $2))))
      (return 
        (i32.const 1))
      (return 
        (i32.eq
          (i32.popcnt
            (local.get $2))
          (i32.const 1)))))
  ;; $_bal_check_type_and_list_atomic
  (func $_bal_check_type_and_list_atomic (param $0 eqref) (param $1 i32) (result i32)
    (local $2 (ref null $List))
    (local $3 i32)
    (local $4 i32)
    (local.set $3
      (call $_bal_get_type
        (local.get $0)))
    (if 
      (i32.eq
        (i32.and
          (local.get $3)
          (i32.const 262148))
        (local.get $3))
      (block
        (local.set $2
          (ref.cast 
            (ref.as_data
              (local.get $0))
            (global.get $rttList)))
        (local.set $4
          (struct.get $List $atomic
            (ref.as_non_null
              (local.get $2))))
        (if
          (i32.eq
            (i32.and
              (local.get $4)
              (local.get $1))
            (local.get $4))
          (return 
            (i32.const 1))
          (return 
            (i32.const 0))))
      (return 
        (i32.const 0))))
  ;; end
) 
