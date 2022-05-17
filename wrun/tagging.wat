(module  
  ;; type
  (type $Any (struct (field $type i32)))
  (type $BoxedInt (struct (field $type i32) (field $val i64)))
  (type $HashTable (array (mut i32))) 
  (type $MapField (struct (field $key (mut eqref)) (field $value (mut eqref)))) 
  (type $MapKeys (array (mut eqref))) 
  (type $MapFieldArr (array (mut (ref null $MapField)))) 
  (type $MapFields (struct (field $members (mut (ref null $MapFieldArr))) (field $length (mut i32)))) 
  (type $Map (struct (field $type i32) (field $tableLengthShift (mut i32)) (field $table (mut (ref $HashTable))) (field $fArray (mut (ref $MapFields)))))   
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttBoxedInt (rtt 1 $BoxedInt) (rtt.sub $BoxedInt (global.get $rttAny)))
  (global $rttList (rtt 1 $List) (rtt.sub $List (global.get $rttAny)))
  (global $rttString (rtt 1 $String) (rtt.sub $String (global.get $rttAny)))
  (global $rttMap (rtt 1 $Map) (rtt.sub $Map (global.get $rttAny)))
  ;; export
  (export "tagged_to_int" (func $tagged_to_int)) 
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
  ;; end
) 
