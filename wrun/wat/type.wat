(module
  ;; $_bal_member_type_contains_tagged
  (func $_bal_member_type_contains_tagged (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 (ref null $ComplexType))
    (local $4 i32)
    (local.set $4
      (call $_bal_get_type
        (local.get $1)))
    (if
      (ref.is_i31
        (local.get $0))
      (block
        (local.set $2
          (i31.get_u
            (ref.as_i31
              (local.get $0))))
        (return 
          (i32.ne
            (i32.const 0)
            (i32.and
              (local.get $2)
              (local.get $4)))))
      (block
        (local.set $3
          (ref.cast
            (ref.as_data
              (local.get $0))
            (global.get $rttComplexType)))
        (return
          (call $_bal_complex_type_contains_tagged
            (ref.as_non_null
              (local.get $3))
            (local.get $1))))))
  ;; $_bal_complex_type_contains_tagged 
  (func $_bal_complex_type_contains_tagged (param $0 (ref $ComplexType)) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local $6 (ref null $Subtype))
    (local.set $2
      (call $_bal_get_type
        (local.get $1)))
    (local.set $3
      (struct.get $ComplexType $all
        (local.get $0)))
    (local.set $4
      (struct.get $ComplexType $some
        (local.get $0)))
    (if
      (i32.and
        (local.get $3)
        (local.get $2))
      (return 
        (i32.const 1)))
    (if
      (i32.eqz
        (i32.and
          (local.get $4)
          (local.get $2)))
      (return 
        (i32.const 0)))
    (local.set $5
      (i32.popcnt
        (i32.and
          (local.get $4)
          (i32.sub
            (local.get $2)
            (i32.const 1)))))
    (local.set $6
      (ref.cast 
        (ref.as_data
          (array.get $SubTypeList
            (struct.get $ComplexType $subtypes
                (local.get $0))
            (local.get $5)))
        (global.get $rttSubtype)))
    (return
      (call_ref
        (array.get $SubTypeList
          (struct.get $ComplexType $subtypes
            (local.get $0))
          (local.get $5))
        (local.get $1)
        (struct.get $Subtype $func
          (ref.as_non_null
            (local.get $6))))))
  ;; $_bal_type_contains
  (func $_bal_type_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 (ref null $ComplexType))
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 (ref null $Subtype))
    (local.set $2
      (call $_bal_get_type
        (local.get $1)))
    (local.set $3
      (ref.cast 
        (ref.as_data
          (local.get $0))
        (global.get $rttComplexType)))
    (local.set $4
      (struct.get $ComplexType $all
        (ref.as_non_null
          (local.get $3))))
    (local.set $5
      (struct.get $ComplexType $some
        (ref.as_non_null
          (local.get $3))))
    (if
      (i32.and
        (local.get $4)
        (local.get $2))
      (return 
        (i32.const 1)))
    (if
      (i32.eqz
        (i32.and
          (local.get $5)
          (local.get $2)))
      (return 
        (i32.const 0)))
    (local.set $6
      (i32.popcnt
        (i32.and
          (local.get $5)
          (i32.sub
            (local.get $2)
            (i32.const 1)))))
    (local.set $7
      (ref.cast 
        (ref.as_data
          (array.get $SubTypeList
            (struct.get $ComplexType $subtypes
              (ref.as_non_null
                (local.get $3)))
            (local.get $6)))
        (global.get $rttSubtype)))
    (return
      (call_ref
        (array.get $SubTypeList
          (struct.get $ComplexType $subtypes
            (ref.as_non_null
              (local.get $3)))
          (local.get $6))
        (local.get $1)
        (struct.get $Subtype $func
          (ref.as_non_null
            (local.get $7))))))
  ;; $_bal_member_type_is_subtype_simple
  (func $_bal_member_type_is_subtype_simple (param $0 eqref) (param $1 i32) (result i32)
    (local $2 i32)
    (local $3 (ref null $ComplexType))
    (if
      (ref.is_i31
        (local.get $0))
      (local.set $2
        (i31.get_u
          (ref.as_i31
            (local.get $0))))
      (block
        (local.set $3
          (ref.cast
            (ref.as_data
              (local.get $0))
            (global.get $rttComplexType)))
        (local.set $2
          (i32.or
            (struct.get $ComplexType $all
              (ref.as_non_null
                (local.get $3)))
            (struct.get $ComplexType $some
              (ref.as_non_null
                (local.get $3)))))))
    (return 
      (i32.eqz
        (i32.and
          (local.get $2)
          (i32.xor
            (i32.const 4294967295)
            (local.get $1))))))
  ;; $_bal_false_subtype_contains
  (func $_bal_false_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (i32.eq
        (call $_bal_tagged_to_boolean
          (local.get $1))
        (i32.const 0))))
  ;; $_bal_true_subtype_contains
  (func $_bal_true_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (call $_bal_tagged_to_boolean
        (local.get $1))))
  ;; $_bal_precomputed_subtype_contains
  (func $_bal_precomputed_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $PrecomputedSubtype))
    (local $3 (ref null $PrecomputedTids))
    (local $4 (ref null $Desc))
    (local.set $2
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttPrecomputedSubtype)))
    (local.set $3
      (struct.get $PrecomputedSubtype $tids
        (ref.as_non_null
          (local.get $2))))
    (if
      (i32.eq
        (call $_bal_get_type
          (local.get $1))
        (i32.const 262144))
      (local.set $4
        (struct.get $List $desc
          (ref.cast
            (ref.as_data
              (local.get $1))
            (global.get $rttList))))
      (local.set $4
        (struct.get $Map $desc
          (ref.cast
            (ref.as_data
              (local.get $1))
            (global.get $rttMap)))))
    (return
      (call $_bal_tid_list_contains
        (ref.as_non_null
          (local.get $3))
        (struct.get $Desc $tid
          (ref.as_non_null
            (local.get $4))))))
  ;; $_bal_tid_list_contains
  (func $_bal_tid_list_contains (param $0 (ref $PrecomputedTids)) (param $1 i32) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local.set $2
      (i32.const 0))
    (local.set $3
      (array.len $PrecomputedTids
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
            (array.get $PrecomputedTids
              (local.get $0)
              (local.get $4)))
          (if 
            (i32.eq  
              (local.get $5)
              (local.get $1))
            (return
              (i32.const 1)))
          (if
            (i32.lt_u
              (local.get $1)
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
    
    ;; end
)
