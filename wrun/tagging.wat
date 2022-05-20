(module  
  ;; type
  (type $Any (struct (field $type i32)))
  (type $BoxedInt (struct (field $type i32) (field $val i64)))
  (type $Float (struct (field $type i32) (field $val f64)))
  (type $HashTable (array (mut i32))) 
  (type $MapField (struct (field $key (mut eqref)) (field $value (mut eqref)))) 
  (type $MapKeys (array (mut eqref))) 
  (type $MapFieldArr (array (mut (ref null $MapField)))) 
  (type $MapFields (struct (field $members (mut (ref null $MapFieldArr))) (field $length (mut i32)))) 
  (type $Map (struct (field $type i32) (field $tableLengthShift (mut i32)) (field $table (mut (ref $HashTable))) (field $fArray (mut (ref $MapFields)))))   
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
  ;; export
  (export "tagged_to_int" (func $tagged_to_int)) 
  (export "tagged_to_float" (func $tagged_to_float)) 
  (export "tagged_to_boolean" (func $tagged_to_boolean)) 
  (export "get_type" (func $get_type)) 
  (export "get_type_children" (func $get_type_children)) 
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
        (i32.const 1)) ;; TYPE_BOOLEAN
      (if
        (ref.is_null
          (local.get $0))
        (return
          (i32.const 2)) ;; TYPE_NIL
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
  ;; $check_type_and_boolean_val
  (func $check_type_and_boolean_val (param $0 eqref) (param $1 i32) (result i32)
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
  ;; $check_type_and_nil_val
  (func $check_type_and_nil_val (param $0 eqref) (param $1 eqref) (result i32)
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
  ;; $tagged_equality
  (func $tagged_equality (param $0 eqref) (param $1 eqref) (result i32)
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
          (i32.const 0))
        (local.set $4
          (i64.eq
            (call $tagged_to_int
              (local.get $0))
            (call $tagged_to_int
              (local.get $1))))
        (if
          (i32.eq
            (local.get $2)
            (i32.const 1))
          (local.set $4
            (i32.eq
              (call $tagged_to_boolean
                (local.get $0))
              (call $tagged_to_boolean
                (local.get $1))))
          (if
            (i32.eq
              (local.get $2)
              (i32.const 8))
            (local.set $4
              (f64.eq
                (call $tagged_to_float
                  (local.get $0))
                (call $tagged_to_float
                  (local.get $1))))
            (if
              (i32.eq
                (local.get $2)
                (i32.const 5))
              (local.set $4
                (call $str_eq
                  (struct.get $String $val 
                    (ref.cast 
                      (ref.as_data 
                        (local.get $0)) 
                      (global.get $rttString)))
                  (struct.get $String $val 
                    (ref.cast 
                      (ref.as_data 
                        (local.get $1)) 
                      (global.get $rttString)))))
              (if
                (i32.eq
                  (local.get $2)
                  (i32.const 2))
                (local.set $4
                  (i32.and
                    (ref.is_null
                      (local.get $0))
                    (ref.is_null
                      (local.get $1))))))))))
    (return 
      (local.get $4)))  
  ;; end
) 
