(module 
  ;; type
  (type $Any (struct (field $type i32)))
  (type $List (struct (field $type i32) (field $default eqref) (field $atomic i32) (field $arr (mut (ref $AnyList))) (field $len (mut i64)))) 
  (type $AnyList (array (mut eqref))) 
  ;; tag
  (tag $index-outof-bound) 
  (tag $index-too-large) 
  (tag $bad-list-store) 
  (tag $no-filler-value) 
  ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttList (rtt 1 $List) (rtt.sub $List (global.get $rttAny)))
  ;; export
  (export "no-filler-value" (tag $no-filler-value)) 
  (export "index-outof-bound" (tag $index-outof-bound)) 
  (export "index-too-large" (tag $index-too-large)) 
  (export "bad-list-store" (tag $bad-list-store)) 
  (export "arr_len" (func $length)) 
  (export "arr_get" (func $arr_get)) 
  ;; $length
  (func $length (param $0 eqref) (result i64) 
    (struct.get $List $len 
      (ref.cast 
        (ref.as_data 
          (local.get $0)) 
        (global.get $rttList)))) 
  ;; $arr_get
  (func $arr_get (param $0 eqref) (param $1 i32) (result eqref) 
    (try 
      (do 
        (if 
          (i32.eqz 
            (i32.or 
              (i32.lt_s 
                (local.get $1) 
                (i32.const 0)) 
              (i32.ge_s 
                (local.get $1) 
                (i32.wrap_i64 
                  (call $length 
                    (local.get $0)))))) 
          (return 
            (call $arr_get_cast 
              (ref.cast 
                (ref.as_data 
                  (local.get $0)) 
                (global.get $rttList)) 
              (local.get $1))) 
          (throw $index-outof-bound))))) 
  ;; $arr_get_cast
  (func $arr_get_cast (param $0 (ref $List)) (param $1 i32) (result eqref) 
    (array.get $AnyList 
      (struct.get $List $arr 
        (local.get $0)) 
      (local.get $1))) 
  ;; $push
  (func $push (param $0 (ref $List)) (param $1 eqref) 
    (call $arr_grow 
      (local.get $0) 
      (local.get $1) 
      (call $length 
        (local.get $0)))) 
  ;; $arr_create
  (func $arr_create (param $0 i64) (param $1 eqref) (param $2 i32) (result (ref $List)) 
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
  ;; $arr_set
  (func $arr_set (param $0 (ref $List)) (param $1 eqref) (param $2 i64) 
        (if 
          (i64.ge_s 
            (local.get $2) 
            (i64.const 0)) 
      (if 
        (call $check_filler_value
          (local.get $0)
          (local.get $2))
          (call $arr_grow 
            (local.get $0) 
            (local.get $1) 
            (local.get $2)) 
        (throw $no-filler-value)) 
      (throw $index-outof-bound))) 
  ;; $check_filler_value
  (func $check_filler_value (param $0 (ref $List)) (param $1 i64) (result i32)
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
  ;; $arr_grow
  (func $arr_grow (param $0 (ref $List)) (param $1 eqref) (param $2 i64) 
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
            (call $get_type
              (local.get $1))
            (struct.get $List $atomic
              (local.get $0)))) 
        (throw $bad-list-store)) 
      (local.set $3 
        (struct.get $List $arr 
          (local.get $0))) 
      (local.set $4 
        (call $length 
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
                  (call $arr_get_cast 
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
  ;; end
) 
