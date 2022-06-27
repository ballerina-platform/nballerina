(module 
  ;; $_bal_eq
  (func $_bal_eq (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local $4 i32) 
    (local.set $2
      (call $_bal_get_type
        (local.get $0)))
    (local.set $3
      (call $_bal_get_type
        (local.get $1))) 
    (local.set $4
      (i32.const 0))
    (if 
      (i32.eq
        (local.get $2)
        (local.get $3))
      (if 
        (i32.eq
          (local.get $2)
          (i32.const 128))
        (local.set $4
          (i64.eq
            (call $_bal_tagged_to_int
              (local.get $0))
            (call $_bal_tagged_to_int
              (local.get $1))))
        (if
          (i32.eq
            (local.get $2)
            (i32.const 2))
          (local.set $4
            (i32.eq
              (call $_bal_tagged_to_boolean
                (local.get $0))
              (call $_bal_tagged_to_boolean
                (local.get $1))))
          (if
            (i32.eq
              (local.get $2)
              (i32.const 256))
            (local.set $4
              (call $_bal_float_eq
                (call $_bal_tagged_to_float
                  (local.get $0))
                (call $_bal_tagged_to_float
                  (local.get $1))))
              (if
                (i32.eq
                  (local.get $2)
                  (i32.const 1))
                (local.set $4
                  (i32.and
                    (ref.is_null
                      (local.get $0))
                    (ref.is_null
                      (local.get $1))))
                (if 
                  (i32.eq
                    (local.get $2)
                    (i32.const 262148))
                  (local.set $4
                    (call $_bal_list_eq
                      (local.get $0)
                      (local.get $1)))
                  (if 
                    (i32.eq
                      (local.get $2)
                      (i32.const 524296))
                    (local.set $4
                      (call $_bal_map_eq
                        (local.get $0)
                        (local.get $1)))
                    (if 
                      (i32.eq 
                        (local.get $2)
                        (i32.const 1024))
                      (local.set $4
                        (call $_bal_string_eq
                          (local.get $0)
                          (local.get $1)))))))))))
    (return 
      (local.get $4))) 
  ;; $_bal_map_eq
  (func $_bal_map_eq (param $0 eqref) (param $1 eqref) (result i32)
    (i32.const 0)) 
  ;; $_bal_list_eq
  (func $_bal_list_eq (param $0 eqref) (param $1 eqref) (result i32)
    (i32.const 0))
  ;; $_bal_string_eq
  (func $_bal_string_eq (param $0 eqref) (param $1 eqref) (result i32) 
    (i32.const 0))
  ;; $_bal_exact_eq
  (func $_bal_exact_eq (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local $4 i32) 
    (local.set $2
      (call $_bal_get_type
        (local.get $0)))
    (local.set $3
      (call $_bal_get_type
        (local.get $1))) 
    (local.set $4
      (i32.const 0))
    (if 
      (i32.eq
        (local.get $2)
        (local.get $3))
      (if 
        (i32.eq
          (local.get $2)
          (i32.const 256))
        (local.set $4
          (call $_bal_float_exact_eq
            (call $_bal_tagged_to_float
              (local.get $0))
            (call $_bal_tagged_to_float
              (local.get $1))))
        (local.set $4
          (ref.eq
            (local.get $0)
            (local.get $1)))))
    (return 
      (local.get $4))) 
  ;; $_bal_float_exact_eq
  (func $_bal_float_exact_eq (param $0 f64) (param $1 f64)  (result i32)
    (return 
      (i64.eq
        (i64.reinterpret_f64
          (local.get $0))
        (i64.reinterpret_f64
          (local.get $1)))))
  ;; $_bal_float_eq
  (func $_bal_float_eq (param $0 f64) (param $1 f64) (result i32)
    (local $2 i32)
    (local $3 i32)
    (block
      (local.set $2
        (f64.ne
          (local.get $0)
          (local.get $0)))
      (local.set $3
        (f64.ne
          (local.get $1)
          (local.get $1)))
      (if
        (i32.and
          (local.get $2)
          (local.get $3))
        (return
          (i32.const 1))
        (return
          (f64.eq
            (local.get $0)
            (local.get $1)))))) 
  ;; end
) 
