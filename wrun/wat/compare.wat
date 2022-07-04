(module 
  ;; type
  (type $arrayCompFunc (func (param eqref eqref) (result i32)))
  ;; $_bal_array_int_compare
  (func $_bal_array_int_compare (param $0 eqref) (param $1 eqref) (result i32)
    (return 
      (call $_bal_array_compare 
        (local.get $0)
        (local.get $1)
        (ref.func $_bal_opt_int_compare))))
  ;; $_bal_array_float_compare
  (func $_bal_array_float_compare (param $0 eqref) (param $1 eqref) (result i32)
    (return 
      (call $_bal_array_compare 
        (local.get $0)
        (local.get $1)
        (ref.func $_bal_opt_float_compare))))
  ;; $_bal_array_string_compare
  (func $_bal_array_string_compare (param $0 eqref) (param $1 eqref) (result i32)
    (return 
      (call $_bal_array_compare 
        (local.get $0)
        (local.get $1)
        (ref.func $_bal_opt_string_compare))))
  ;; $_bal_array_boolean_compare
  (func $_bal_array_boolean_compare (param $0 eqref) (param $1 eqref) (result i32)
    (return 
      (call $_bal_array_compare 
        (local.get $0)
        (local.get $1)
        (ref.func $_bal_opt_boolean_compare))))
  ;; $_bal_array_list_compare
  (func $_bal_array_list_compare (param $0 eqref) (param $1 eqref) (result i32)
    (return 
      (call $_bal_array_compare 
        (local.get $0)
        (local.get $1)
        (ref.func $_bal_opt_list_compare))))
  ;; $_bal_opt_list_compare
  (func $_bal_opt_list_compare (param $0 eqref) (param $1 eqref) (result i32)
    (return 
      (call $_bal_array_compare 
        (local.get $0)
        (local.get $1)
        (ref.func $_bal_tagged_compare))))
  ;; $_bal_tagged_compare
  (func $_bal_tagged_compare (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local.set $2
      (call $_bal_get_type 
        (local.get $0)))
    (local.set $3
      (call $_bal_get_type 
        (local.get $1)))
    (if
      (i32.ne
        (local.get $2)
        (local.get $3))
      (return 
        (i32.const -1)))
    (if
      (i32.eq 
        (local.get $2)
        (i32.const 2))
      (return
        (call $_bal_boolean_compare
          (call $_bal_tagged_to_boolean
            (local.get $0))
          (call $_bal_tagged_to_boolean
            (local.get $1)))))
    (if
      (i32.eq 
        (local.get $2)
        (i32.const 128))
      (return
        (call $_bal_int_compare
          (call $_bal_tagged_to_int
            (local.get $0))
          (call $_bal_tagged_to_int
            (local.get $1)))))
    (if
      (i32.eq 
        (local.get $2)
        (i32.const 256))
      (return
        (call $_bal_float_compare
          (call $_bal_tagged_to_float
            (local.get $0))
          (call $_bal_tagged_to_float
            (local.get $1)))))
    (if
      (i32.eq 
        (local.get $2)
        (i32.const 1024))
      (return
        (call $_bal_string_compare
          (local.get $0)
          (local.get $1))))
    (if
      (i32.eq 
        (local.get $2)
        (i32.const 262148))
      (return
        (call $_bal_opt_list_compare
          (local.get $0)
          (local.get $1))))
    (return 
      (i32.const 1)))
  ;; $_bal_array_compare
  (func $_bal_array_compare (param $0 eqref) (param $1 eqref) (param $2 (ref $arrayCompFunc)) (result i32)
    (local $3 (ref null $List))
    (local $4 (ref null $List))
    (local $5 i64)
    (local $6 i64)
    (local $7 i64)
    (local $8 i64)
    (local $9 i32)
    (if
      (ref.eq
        (local.get $0)
        (local.get $1))
      (return 
        (i32.const 1)))
    (if
      (i32.or
        (ref.is_null
          (local.get $0))
        (ref.is_null
          (local.get $1)))
      (return
        (i32.const -1)))
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
      (struct.get $List $len
        (local.get $3)))
    (local.set $6
      (struct.get $List $len
        (local.get $4)))
    (if
      (i64.le_u
        (local.get $5)
        (local.get $6))
      (local.set $7
        (local.get $5))
      (local.set $7
        (local.get $6)))
    (local.set $8
      (i64.const 0))
    (loop $loop$cont
      (if 
        (i64.lt_u
          (local.get $8)
          (local.get $7))
        (block
          (local.set $9
            (call_ref
              (array.get $AnyList 
                (struct.get $List $arr 
                  (ref.as_non_null
                    (local.get $3))) 
                (i32.wrap_i64
                  (local.get $8)))
              (array.get $AnyList 
                (struct.get $List $arr 
                  (ref.as_non_null
                    (local.get $4))) 
                (i32.wrap_i64
                  (local.get $8)))
              (local.get $2)))
          (if 
            (i32.eq
              (local.get $9)
              (i32.const 1))
            (block
              (local.set $8
                (i64.add
                  (local.get $8)
                  (i64.const 1)))
              (br $loop$cont))
            (return 
              (local.get $9))))))
    (return 
      (call $_bal_int_compare
        (local.get $5)
        (local.get $6)))) 
  ;; $_bal_opt_int_compare
  (func $_bal_opt_int_compare (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local.set $2
      (ref.is_null
        (local.get $0)))
    (local.set $3
      (ref.is_null
        (local.get $1)))
    (if
      (i32.or
        (local.get $2)
        (local.get $3))
      (return 
        (call $_bal_opt_null_check
          (local.get $0)
          (local.get $1)))
      (return       
        (call $_bal_int_compare
          (struct.get $BoxedInt $val
            (ref.cast
              (ref.as_data
                (local.get $0))
              (global.get $rttBoxedInt)))
          (struct.get $BoxedInt $val
            (ref.cast
              (ref.as_data
                (local.get $1))
              (global.get $rttBoxedInt)))))))
  ;; $_bal_opt_float_compare
  (func $_bal_opt_float_compare (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local.set $2
      (ref.is_null
        (local.get $0)))
    (local.set $3
      (ref.is_null
        (local.get $1)))
    (if
      (i32.or
        (local.get $2)
        (local.get $3))
      (return 
        (call $_bal_opt_null_check
          (local.get $0)
          (local.get $1)))
      (return 
        (call $_bal_float_compare
          (struct.get $Float $val
            (ref.cast
              (ref.as_data
                (local.get $0))
              (global.get $rttFloat)))
          (struct.get $Float $val
            (ref.cast
              (ref.as_data
                (local.get $1))
              (global.get $rttFloat)))))))
  ;; $_bal_opt_string_compare
  (func $_bal_opt_string_compare (param $0 eqref) (param $1 eqref) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 anyref)
    (local $6 anyref)
    (local.set $3
      (ref.is_null
        (local.get $0)))
    (local.set $4
      (ref.is_null
        (local.get $1)))
    (if
      (i32.or
        (local.get $3)
        (local.get $4))
      (return 
        (call $_bal_opt_null_check
          (local.get $0)
          (local.get $1)))       
      (return
        (call $_bal_string_compare
          (local.get $0)
          (local.get $1)))))
  ;; $_bal_opt_boolean_compare
  (func $_bal_opt_boolean_compare (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local.set $2
      (ref.is_null
        (local.get $0)))
    (local.set $3
      (ref.is_null
        (local.get $1)))
    (if
      (i32.or
        (local.get $2)
        (local.get $3))
      (return 
        (call $_bal_opt_null_check
          (local.get $0)
          (local.get $1)))
      (return 
        (call $_bal_boolean_compare
          (i31.get_u
            (ref.as_i31
              (local.get $0)))
          (i31.get_u
            (ref.as_i31
              (local.get $1)))))))
  ;; $_bal_transform_compare_result
  (func $_bal_transform_compare_result (param $0 i32) (param $1 i32) (result i32)
    (if
      (i32.eq
        (local.get $1)
        (i32.const -1))
      (return 
        (i32.const 0))
      (if
        (i32.rem_u
          (local.get $0)
          (i32.const 2))
        (if
          (i32.eq 
            (local.get $0)
            (i32.const 1))
          (return 
            (i32.or
              (i32.eq
                (local.get $1)
                (i32.const 0))
              (i32.eq
                (local.get $1)
                (i32.const 1))))
          (return 
            (i32.or
              (i32.eq
                (local.get $1)
                (i32.const 1))
              (i32.eq
                (local.get $1)
                (i32.const 2)))))
        (return
          (i32.eq
            (local.get $0)
            (local.get $1))))))
  ;; $_bal_int_compare                  
  (func $_bal_int_compare (param $0 i64) (param $1 i64) (result i32)
    (if
      (i64.lt_s
        (local.get $0)
        (local.get $1))
      (return 
        (i32.const 0))
      (if
        (i64.gt_s
          (local.get $0)
          (local.get $1))
        (return 
          (i32.const 2))
        (return
          (i32.const 1)))))
  ;; $_bal_float_compare                  
  (func $_bal_float_compare (param $0 f64) (param $1 f64) (result i32)
    (if
      (f64.lt
        (local.get $0)
        (local.get $1))
      (return 
        (i32.const 0))
      (if
        (f64.gt
          (local.get $0)
          (local.get $1))
        (return 
          (i32.const 2))
        (return 
          (i32.const 1)))))
  ;; $_bal_boolean_compare
  (func $_bal_boolean_compare (param $0 i32) (param $1 i32) (result i32)
    (if
      (i32.lt_u
        (local.get $0)
        (local.get $1))
      (return 
        (i32.const 0))
      (if
        (i32.gt_u
          (local.get $0)
          (local.get $1))
        (return 
          (i32.const 2))
        (return 
          (i32.const 1)))))
  ;; $_bal_opt_null_check
  (func $_bal_opt_null_check (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local.set $2
      (ref.is_null
        (local.get $0)))
    (local.set $3
      (ref.is_null
        (local.get $1)))
    (if
      (i32.and
        (local.get $2)
        (local.get $3))
      (return 
        (i32.const 1))
      (return 
        (i32.const -1))))
  ;; $_bal_string_compare
  (func $_bal_string_compare (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (i32.const -1)))
  ;; end
  ) 
