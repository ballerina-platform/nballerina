(module  
  ;; type
  (type $Any (struct (field $type i32)))
  (type $BoxedInt (struct (field $type i32) (field $val i64)))
  (type $Float (struct (field $type i32) (field $val f64)))
  (type $Error (struct (field $type i32) (field $val (ref $String))))
  (type $HashTable (array (mut i32))) 
  (type $MapField (struct (field $key (mut eqref)) (field $value (mut eqref)))) 
  (type $MapKeys (array (mut eqref))) 
  (type $MapFieldArr (array (mut (ref null $MapField)))) 
  (type $MapFields (struct (field $members (mut (ref null $MapFieldArr))) (field $length (mut i32)))) 
  (type $Map (struct (field $type i32) (field $atomic i32) (field $tableLengthShift (mut i32)) (field $table (mut (ref $HashTable))) (field $fArray (mut (ref $MapFields)))))   
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  ;; import
  (import "string" "eq" (func $str_eq (param anyref) (param anyref) (result i32))) 
  ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttBoxedInt (rtt 1 $BoxedInt) (rtt.sub $BoxedInt (global.get $rttAny)))
  (global $rttFloat (rtt 1 $Float) (rtt.sub $Float (global.get $rttAny)))
  (global $rttList (rtt 1 $List) (rtt.sub $List (global.get $rttAny)))
  (global $rttString (rtt 1 $String) (rtt.sub $String (global.get $rttAny)))
  (global $rttMap (rtt 1 $Map) (rtt.sub $Map (global.get $rttAny)))
  (global $rttError (rtt 1 $Error) (rtt.sub $Error (global.get $rttAny)))
  ;; export
  (export "tagged_to_int" (func $tagged_to_int)) 
  (export "tagged_to_float" (func $tagged_to_float)) 
  (export "tagged_to_boolean" (func $tagged_to_boolean)) 
  (export "get_type" (func $get_type)) 
  (export "get_type_children" (func $get_type_children)) 
  (export "get_error" (func $get_error)) 
  ;; $tagged_to_int
  (func $tagged_to_int (param $0 eqref) (result i64) 
    (return 
      (struct.get $BoxedInt $val 
        (ref.cast 
          (ref.as_data 
            (local.get $0)) 
          (global.get $rttBoxedInt)))))
  ;; $tagged_to_float
  (func $tagged_to_float (param $0 eqref) (result f64) 
    (return 
      (struct.get $Float $val 
        (ref.cast 
          (ref.as_data 
            (local.get $0)) 
          (global.get $rttFloat))))) 
  ;; $tagged_to_boolean
  (func $tagged_to_boolean (param $0 eqref) (result i32) 
    (return 
      (i31.get_u 
        (ref.as_i31 
          (local.get $0))))) 
  ;; $get_type
  (func $get_type (param $0 eqref) (result i32) 
    (if
      (ref.is_i31
        (local.get $0))
      (return
        (i32.const 2)) ;; TYPE_BOOLEAN
      (if
        (ref.is_null
          (local.get $0))
        (return
          (i32.const 1)) ;; TYPE_NIL
        (return
          (struct.get $Any $type
            (ref.cast
              (ref.as_data
                (local.get $0))
              (global.get $rttAny)))))))
  ;; $get_type_children
  (func $get_type_children (param $0 eqref) (param $1 eqref) (result i32) 
    (if 
      (ref.eq 
        (local.get $0) 
        (local.get $1)) 
      (return 
        (i32.const 4)) 
      (return 
        (call $get_type 
          (local.get $1)))))
  ;; $get_error
  (func $get_error (param $0 eqref) (result anyref) 
    (return 
      (struct.get $String $val
        (struct.get $Error $val 
          (ref.cast 
            (ref.as_data 
              (local.get $0)) 
            (global.get $rttError))))))
  ;; $message
  (func $message (param $0 eqref) (result (ref $String)) 
    (return 
      (struct.get $Error $val 
        (ref.cast 
          (ref.as_data 
            (local.get $0)) 
          (global.get $rttError))))) 
  ;; $_bal_check_type_and_boolean_val
  (func $_bal_check_type_and_boolean_val (param $0 eqref) (param $1 i32) (result i32)
    (local $2 i32) 
    (local.set $2
      (i32.const 0)) 
    (if 
      (ref.is_i31
        (local.get $0))
      (if
        (i32.eq
          (i31.get_u
            (ref.as_i31
              (local.get $0)))
          (local.get $1))
        (local.set $2
          (i32.const 1))))
    (return 
      (local.get $2)))
  ;; $_bal_check_type_and_nil_val
  (func $_bal_check_type_and_nil_val (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32) 
    (local.set $2
      (i32.const 0)) 
    (if 
      (i32.and
        (ref.is_null
          (local.get $0))
        (ref.is_null
          (local.get $1)))
      (local.set $2
        (i32.const 1)))
    (return 
      (local.get $2)))
  ;; $_bal_check_type_and_list_atomic
  (func $_bal_check_type_and_list_atomic (param $0 eqref) (param $1 i32) (result i32)
    (local $2 (ref null $List))
    (local $3 i32)
    (local $4 i32)
    (local.set $3
      (call $get_type
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
  ;; $_bal_check_type_and_map_atomic
  (func $_bal_check_type_and_map_atomic (param $0 eqref) (param $1 i32) (result i32)
    (local $2 (ref null $Map))
    (local $3 i32)
    (local $4 i32)
    (local.set $3
      (call $get_type
        (local.get $0)))
    (if 
      (i32.eq
        (i32.and
          (local.get $3)  
          (i32.const 524296))
        (local.get $3))
      (block
        (local.set $2
          (ref.cast 
            (ref.as_data
              (local.get $0))
            (global.get $rttMap)))
        (local.set $4
          (struct.get $Map $atomic
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
  ;; $_bal_eq
  (func $_bal_eq (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local $4 i32) 
    (local.set $2
      (call $get_type
        (local.get $0)))
    (local.set $3
      (call $get_type
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
            (call $tagged_to_int
              (local.get $0))
            (call $tagged_to_int
              (local.get $1))))
        (if
          (i32.eq
            (local.get $2)
            (i32.const 2))
          (local.set $4
            (i32.eq
              (call $tagged_to_boolean
                (local.get $0))
              (call $tagged_to_boolean
                (local.get $1))))
          (if
            (i32.eq
              (local.get $2)
              (i32.const 256))
            (local.set $4
              (call $_bal_float_eq
                (call $tagged_to_float
                  (local.get $0))
                (call $tagged_to_float
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
                    (call $list_equality
                      (local.get $0)
                      (local.get $1)))
                  (if 
                    (i32.eq
                      (local.get $2)
                      (i32.const 524296))
                    (local.set $4
                      (call $map_equality
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
  ;; $list_equality
  (func $list_equality (param $0 eqref) (param $1 eqref) (result i32)
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
                (call $arr_get
                  (local.get $3)
                  (local.get $7))
                (call $arr_get
                  (local.get $4)
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
  ;; map_equality
  (func $map_equality (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 eqref)
    (local $4 eqref)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local.set $2
      (i32.const 0))
    (local.set $7
      (i32.const 0))
    (local.set $3
      (call $_bal_map_get_keys
        (local.get $0)))
    (local.set $4
      (call $_bal_map_get_keys
        (local.get $1)))
    (local.set $5
      (call $_bal_mapping_num_keys 
        (ref.as_non_null
          (local.get $3))))
    (local.set $6
      (call $_bal_mapping_num_keys 
        (ref.as_non_null
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
                (call $_bal_mapping_get
                  (local.get $0)
                  (call $_bal_mapping_get_key
                    (local.get $3)
                    (local.get $7)))
                (call $_bal_mapping_get
                  (local.get $1)
                  (call $_bal_mapping_get_key
                    (local.get $3)
                    (local.get $7))))
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
  ;; $_bal_exact_eq
  (func $_bal_exact_eq (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local $4 i32) 
    (local.set $2
      (call $get_type
        (local.get $0)))
    (local.set $3
      (call $get_type
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
            (call $tagged_to_float
              (local.get $0))
            (call $tagged_to_float
              (local.get $1))))
        (local.set $4
          (ref.eq
            (local.get $0)
            (local.get $1)))))
    (return 
      (local.get $4)))  
  ;; end
) 
