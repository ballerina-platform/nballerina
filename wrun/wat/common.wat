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
  (type $Desc (struct (field $tid i32))) 
  (type $ListDesc (struct (field $tid i32) (field $restType eqref) (field $filler eqref) (field $minLength i32) (field $memberTypes (mut (ref $AnyList))) )) 
  (type $MappingDesc (struct (field $tid i32) (field $restType eqref) (field $filler eqref) (field $nFields i32) (field $fieldTypes (mut (ref $AnyList))))) 
  (type $Map (struct (field $type i32) (field $desc (mut (ref $MappingDesc))) (field $tableLengthShift (mut i32)) (field $table (mut (ref $HashTable))) (field $fArray (mut (ref $MapFields)))))   
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  (type $Decimal (struct (field $type i32) (field $val (mut anyref)))) 
  (type $List (struct (field $type i32) (field $desc (ref $ListDesc)) (field $arr (mut (ref $AnyList))) (field $len (mut i64)))) 
  (type $AnyList (array (mut eqref))) 
  (type $Subtype (struct (field $func (ref $subTypeContains))))
  (type $RecordSubtypeField (struct (field $name (mut eqref)) (field $bitset (mut i32)))) 
  (type $RecordSubtypeFields (array (mut (ref null $RecordSubtypeField)))) 
  (type $RecordSubtype (struct (field $func (ref $subTypeContains)) (field $nFields i32) (field $fields (mut (ref $RecordSubtypeFields))))) 
  (type $PrecomputedTids (array (mut i32))) 
  (type $PrecomputedSubtype (struct (field $func (ref $subTypeContains)) (field $tids (mut (ref $PrecomputedTids))))) 
  (type $IntRange (struct (field $min i64) (field $max i64))) 
  (type $IntSubtypeRanges (array (mut (ref null $IntRange)))) 
  (type $IntSubtype (struct (field $func (ref $subTypeContains)) (field $ranges (mut (ref $IntSubtypeRanges))))) 
  (type $StringSubtype (struct (field $func (ref $subTypeContains)) (field $charAllowed i32) (field $nonCharAllowed i32) (field $values (mut (ref $AnyList))))) 
  (type $FloatValues (array (mut f64))) 
  (type $FloatSubtype (struct (field $func (ref $subTypeContains)) (field $allowed i32) (field $values (mut (ref $FloatValues))))) 
  (type $DecimalValues (array (mut (ref null $Decimal)))) 
  (type $DecimalSubtype (struct (field $func (ref $subTypeContains)) (field $allowed i32) (field $values (mut (ref $DecimalValues))))) 
  (type $ArrMapSubtype (struct (field $func (ref $subTypeContains)) (field $bitSet i32))) 
  (type $SubTypeList (array (mut (ref null $Subtype))))
  (type $ComplexType (struct (field $all i32) (field $some i32) (field $subtypes (mut (ref $SubTypeList))))) 
  (type $EqStack (struct (field $p1 eqref) (field $p2 eqref) (field $next (ref null $EqStack)))) 
  ;; import
  (import "console" "log" (func $println (param eqref))) 
  (import "int" "hex" (func $_js_int_to_hex (param i64) (result anyref))) 
  ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttBoxedInt (rtt 1 $BoxedInt) (rtt.sub $BoxedInt (global.get $rttAny)))
  (global $rttFloat (rtt 1 $Float) (rtt.sub $Float (global.get $rttAny)))
  (global $rttList (rtt 1 $List) (rtt.sub $List (global.get $rttAny)))
  (global $rttString (rtt 1 $String) (rtt.sub $String (global.get $rttAny)))
  (global $rttDecimal (rtt 1 $Decimal) (rtt.sub $Decimal (global.get $rttAny)))
  (global $rttMap (rtt 1 $Map) (rtt.sub $Map (global.get $rttAny)))
  (global $rttError (rtt 1 $Error) (rtt.sub $Error (global.get $rttAny)))
  (global $rttSubtype (rtt 0 $Subtype) (rtt.canon $Subtype))
  (global $rttPrecomputedSubtype (rtt 1 $PrecomputedSubtype) (rtt.sub $PrecomputedSubtype (global.get $rttSubtype)))
  (global $rttArrMapSubtype (rtt 1 $ArrMapSubtype) (rtt.sub $ArrMapSubtype (global.get $rttSubtype)))
  (global $rttRecordSubtype (rtt 1 $RecordSubtype) (rtt.sub $RecordSubtype (global.get $rttSubtype)))
  (global $rttIntSubtype (rtt 1 $IntSubtype) (rtt.sub $IntSubtype (global.get $rttSubtype)))
  (global $rttFloatSubtype (rtt 1 $FloatSubtype) (rtt.sub $FloatSubtype (global.get $rttSubtype)))
  (global $rttStringSubtype (rtt 1 $StringSubtype) (rtt.sub $StringSubtype (global.get $rttSubtype)))
  (global $rttDecimalSubtype (rtt 1 $DecimalSubtype) (rtt.sub $DecimalSubtype (global.get $rttSubtype)))
  (global $rttDesc (rtt 0 $Desc) (rtt.canon $Desc))
  (global $rttMappingDesc (rtt 1 $MappingDesc) (rtt.sub $MappingDesc (global.get $rttDesc)))
  (global $rttListDesc (rtt 1 $ListDesc) (rtt.sub $ListDesc (global.get $rttDesc)))
  (global $rttRecordSubtypeField (rtt 0 $RecordSubtypeField) (rtt.canon $RecordSubtypeField))
  (global $rttComplexType (rtt 0 $ComplexType) (rtt.canon $ComplexType))
  (global $rttIntRange (rtt 0 $IntRange) (rtt.canon $IntRange))
  (global $rttEqStack (rtt 0 $EqStack) (rtt.canon $EqStack))
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
  (export "_bal_get_decimal" (func $_bal_get_decimal))
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
  ;; $_bal_get_decimal
  (func $_bal_get_decimal (param $0 eqref) (result anyref) 
    (struct.get $Decimal $val 
      (ref.cast 
        (ref.as_data 
          (local.get $0)) 
        (global.get $rttDecimal))))
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
          (i32.const 262144))
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
