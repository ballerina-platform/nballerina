(module  
  ;; type
  (type $subTypeContains (func (param eqref eqref) (result i32)))
  (type $Any (struct (field $type i32)))
  (type $BoxedInt (struct (field $type i32) (field $val i64)))
  (type $Float (struct (field $type i32) (field $val f64)))
  (type $Error (struct (field $type i32) (field $val (ref $String))))
  (type $HashTable (array (mut i32))) 
  (type $MapField (struct (field $key (mut eqref)) (field $value (mut eqref)))) 
  (type $MapKeys (array (mut eqref))) 
  (type $MapFieldArr (array (mut (ref null $MapField)))) 
  (type $MapFields (struct (field $members (mut (ref null $MapFieldArr))) (field $length (mut i32)))) 
  (type $MappingDesc (struct (field $tid i32) (field $nFields i32) (field $restType i31ref) (field $fieldTypes (mut (ref $AnyList))))) 
  (type $Map (struct (field $type i32) (field $desc (mut (ref $MappingDesc))) (field $tableLengthShift (mut i32)) (field $table (mut (ref $HashTable))) (field $fArray (mut (ref $MapFields)))))   
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  (type $List (struct (field $type i32) (field $default eqref) (field $atomic i32) (field $arr (mut (ref $AnyList))) (field $len (mut i64)))) 
  (type $AnyList (array (mut eqref))) 
  (type $SubType (struct (field $func (ref $subTypeContains))))
  (type $RecordSubtypeField (struct (field $name (mut eqref)) (field $bitset (mut i32)))) 
  (type $RecordSubtypeFields (array (mut (ref null $RecordSubtypeField)))) 
  (type $RecordSubtype (struct (field $func (ref $subTypeContains)) (field $nFields i32) (field $fields (mut (ref $RecordSubtypeFields))))) 
  (type $PrecomputedTids (array (mut i32))) 
  (type $PrecomputedSubtype (struct (field $func (ref $subTypeContains)) (field $length i32) (field $tids (mut (ref $PrecomputedTids))))) 
  (type $ArrMapSubtype (struct (field $func (ref $subTypeContains)) (field $bitSet i32))) 
  (type $SubTypeList (array (mut (ref null $SubType))))
  (type $ComplexType (struct (field $all i32) (field $some i32) (field $subtypes (mut (ref $SubTypeList))))) 
  ;; import
  (import "console" "log" (func $println (param eqref))) 
  (import "int" "hex" (func $_js_int_to_hex (param i64) (result anyref))) 
  ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttBoxedInt (rtt 1 $BoxedInt) (rtt.sub $BoxedInt (global.get $rttAny)))
  (global $rttFloat (rtt 1 $Float) (rtt.sub $Float (global.get $rttAny)))
  (global $rttList (rtt 1 $List) (rtt.sub $List (global.get $rttAny)))
  (global $rttString (rtt 1 $String) (rtt.sub $String (global.get $rttAny)))
  (global $rttMap (rtt 1 $Map) (rtt.sub $Map (global.get $rttAny)))
  (global $rttError (rtt 1 $Error) (rtt.sub $Error (global.get $rttAny)))
  (global $rttSubType (rtt 0 $SubType) (rtt.canon $SubType))
  (global $rttPrecomputedSubtype (rtt 1 $PrecomputedSubtype) (rtt.sub $PrecomputedSubtype (global.get $rttSubType)))
  (global $rttArrMapSubtype (rtt 1 $ArrMapSubtype) (rtt.sub $ArrMapSubtype (global.get $rttSubType)))
  (global $rttRecordSubtype (rtt 1 $RecordSubtype) (rtt.sub $RecordSubtype (global.get $rttSubType)))
  (global $rttMappingDesc (rtt 0 $MappingDesc) (rtt.canon $MappingDesc))
  (global $rttRecordSubtypeField (rtt 0 $RecordSubtypeField) (rtt.canon $RecordSubtypeField))
  (global $rttComplexType (rtt 0 $ComplexType) (rtt.canon $ComplexType))
  ;; tag
  (tag $bad-conversion) 
  ;; export
  (export "bad-conversion" (tag $bad-conversion)) 
  (export "_bal_tagged_to_int" (func $_bal_tagged_to_int)) 
  (export "_bal_tagged_to_float" (func $_bal_tagged_to_float)) 
  (export "_bal_tagged_to_boolean" (func $_bal_tagged_to_boolean)) 
  (export "_bal_get_type" (func $_bal_get_type)) 
  (export "_bal_get_type_children" (func $_bal_get_type_children)) 
  (export "_bal_get_error" (func $_bal_get_error)) 
  (export "_bal_get_string" (func $_bal_get_string)) 
  (export "_bal_record_subtype_contains" (func $_bal_record_subtype_contains)) 
  (export "_bal_map_subtype_contains" (func $_bal_map_subtype_contains)) 
  (export "_bal_precomputed_subtype_contains" (func $_bal_precomputed_subtype_contains)) 
  (export "_bal_array_subtype_contains" (func $_bal_array_subtype_contains)) 
  ;; $_bal_record_subtype_contains
  (func $_bal_record_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (i32.const 0)))
  ;; $_bal_precomputed_subtype_contains
  (func $_bal_precomputed_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (i32.const 0)))
  ;; $_bal_map_subtype_contains
  (func $_bal_map_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (i32.const 0)))
  ;; $_bal_array_subtype_contains
  (func $_bal_array_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (i32.const 0)))
  ;; $toHexString
  (func $toHexString (param $0 i64) (result (ref $String)) 
    (struct.new_with_rtt $String 
      (i32.const 1024)
      (call $_js_int_to_hex 
        (local.get $0)) 
      (array.new_default_with_rtt $Surrogate 
        (i32.const 0) 
        (rtt.canon $Surrogate))
      (i32.const -1) 
      (global.get $rttString)))
  ;; $_bal_tagged_to_int
  (func $_bal_tagged_to_int (param $0 eqref) (result i64) 
    (return 
      (struct.get $BoxedInt $val 
        (ref.cast 
          (ref.as_data 
            (local.get $0)) 
          (global.get $rttBoxedInt)))))
  ;; $_bal_tagged_to_float
  (func $_bal_tagged_to_float (param $0 eqref) (result f64) 
    (return 
      (struct.get $Float $val 
        (ref.cast 
          (ref.as_data 
            (local.get $0)) 
          (global.get $rttFloat))))) 
  ;; $_bal_tagged_to_boolean
  (func $_bal_tagged_to_boolean (param $0 eqref) (result i32) 
    (return 
      (i31.get_u 
        (ref.as_i31 
          (local.get $0))))) 
  ;; $_bal_get_type
  (func $_bal_get_type (param $0 eqref) (result i32) 
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
  ;; $_bal_get_type_children
  (func $_bal_get_type_children (param $0 eqref) (param $1 eqref) (result i32) 
    (if 
      (ref.eq 
        (local.get $0) 
        (local.get $1)) 
      (return 
        (i32.const 4)) 
      (return 
        (call $_bal_get_type 
          (local.get $1)))))
  ;; $_bal_get_string
  (func $_bal_get_string (param $0 eqref) (result anyref) 
    (struct.get $String $val 
      (ref.cast 
        (ref.as_data 
          (local.get $0)) 
        (global.get $rttString))))
  ;; $_bal_get_error
  (func $_bal_get_error (param $0 eqref) (result anyref) 
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
  ;; $length
  (func $length (param $0 eqref) (result i64) 
    (local $1 i64) 
    (local $2 i32)
    (local.set $2
      (call $_bal_get_type
        (local.get $0)))
    (if
      (i32.eq
        (local.get $2)
        (i32.const 1024))
      (local.set $1
        (call $_bal_string_length
          (local.get $0)))
      (if
        (i32.eq
          (local.get $2)
          (i32.const 262148))
        (local.set $1 
          (call $_bal_list_length
            (local.get $0)))
        (local.set $1 
          (call $_bal_map_length
            (local.get $0)))))
      (return 
        (local.get $1)))
  ;; $_bal_map_length
  (func $_bal_map_length (param $0 eqref) (result i64)
    (i64.const 0))
  ;; $_bal_string_length
  (func $_bal_string_length (param $0 eqref) (result i64)
    (i64.const 0))
  ;; $_bal_list_length
  (func $_bal_list_length (param $0 eqref) (result i64)
    (i64.const 0))
  ;; end
) 
