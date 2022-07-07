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
  (type $MappingDesc (struct (field $tid i32) (field $nFields i32) (field $restType eqref) (field $fieldTypes (mut (ref $AnyList))))) 
  (type $ListDesc (struct (field $tid i32) (field $restType eqref))) 
  (type $Map (struct (field $type i32) (field $desc (mut (ref $MappingDesc))) (field $tableLengthShift (mut i32)) (field $table (mut (ref $HashTable))) (field $fArray (mut (ref $MapFields)))))   
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  (type $List (struct (field $type i32) (field $default eqref) (field $desc (ref $ListDesc)) (field $arr (mut (ref $AnyList))) (field $len (mut i64)))) 
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
  (type $ArrMapSubtype (struct (field $func (ref $subTypeContains)) (field $bitSet i32))) 
  (type $SubTypeList (array (mut (ref null $Subtype))))
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
  (global $rttSubtype (rtt 0 $Subtype) (rtt.canon $Subtype))
  (global $rttPrecomputedSubtype (rtt 1 $PrecomputedSubtype) (rtt.sub $PrecomputedSubtype (global.get $rttSubtype)))
  (global $rttArrMapSubtype (rtt 1 $ArrMapSubtype) (rtt.sub $ArrMapSubtype (global.get $rttSubtype)))
  (global $rttRecordSubtype (rtt 1 $RecordSubtype) (rtt.sub $RecordSubtype (global.get $rttSubtype)))
  (global $rttIntSubtype (rtt 1 $IntSubtype) (rtt.sub $IntSubtype (global.get $rttSubtype)))
  (global $rttFloatSubtype (rtt 1 $FloatSubtype) (rtt.sub $FloatSubtype (global.get $rttSubtype)))
  (global $rttStringSubtype (rtt 1 $StringSubtype) (rtt.sub $StringSubtype (global.get $rttSubtype)))
  (global $rttDesc (rtt 0 $Desc) (rtt.canon $Desc))
  (global $rttMappingDesc (rtt 1 $MappingDesc) (rtt.sub $MappingDesc (global.get $rttDesc)))
  (global $rttListDesc (rtt 1 $ListDesc) (rtt.sub $ListDesc (global.get $rttDesc)))
  (global $rttRecordSubtypeField (rtt 0 $RecordSubtypeField) (rtt.canon $RecordSubtypeField))
  (global $rttComplexType (rtt 0 $ComplexType) (rtt.canon $ComplexType))
  (global $rttIntRange (rtt 0 $IntRange) (rtt.canon $IntRange))
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
  (export "_bal_array_subtype_contains" (func $_bal_array_subtype_contains)) 
  (export "_bal_int_subtype_contains" (func $_bal_int_subtype_contains)) 
  (export "_bal_string_subtype_contains" (func $_bal_string_subtype_contains)) 
  (export "_bal_false_subtype_contains" (func $_bal_false_subtype_contains)) 
  (export "_bal_float_subtype_contains" (func $_bal_float_subtype_contains)) 
  (export "_bal_true_subtype_contains" (func $_bal_true_subtype_contains)) 
  (export "_bal_precomputed_subtype_contains" (func $_bal_precomputed_subtype_contains)) 
  (export "_bal_type_contains" (func $_bal_type_contains)) 
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
  ;; $_bal_record_subtype_contains
  (func $_bal_record_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 (ref null $Map))
    (local $4 (ref null $MappingDesc))
    (local $5 i32)
    (local $6 i32)
    (local $7 (ref null $RecordSubtypeFields))
    (local $8 i32)
    (local $9 (ref null $AnyList))
    (local $10 (ref null $MapFieldArr))
    (local $11 (ref null $RecordSubtypeField))
    (local $12 (ref null $RecordSubtype))
    (local.set $2
      (call $_bal_get_type
        (local.get $1)))
    (if 
      (i32.ne
        (i32.and
          (local.get $2)  
          (i32.const 524288))
        (local.get $2))
      (return 
        (i32.const 0)))
    (local.set $3
      (ref.cast
        (ref.as_data
          (local.get $1))
        (global.get $rttMap)))
    (local.set $4
      (struct.get $Map $desc
        (ref.as_non_null
          (local.get $3))))
    (local.set $5
      (struct.get $MappingDesc $nFields
        (ref.as_non_null
          (local.get $4))))
    (local.set $12
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttRecordSubtype)))
    (local.set $6
      (struct.get $RecordSubtype $nFields
        (ref.as_non_null
          (local.get $12))))
    (if
      (i32.ne
        (local.get $5)
        (local.get $6))
      (return 
        (i32.const 0)))
    (local.set $7
      (struct.get $RecordSubtype $fields
        (ref.as_non_null
          (local.get $12))))
    (local.set $8
      (i32.const 0))
    (local.set $9
      (struct.get $MappingDesc $fieldTypes
        (ref.as_non_null
          (local.get $4))))
    (local.set $10
      (struct.get $MapFields $members
        (struct.get $Map $fArray
          (ref.as_non_null
            (local.get $3)))))
    (loop $loop$cont  
      (if
        (i32.lt_u
          (local.get $8)
          (local.get $5))
        (block
          (local.set $11
            (array.get $RecordSubtypeFields
              (ref.as_non_null
                (local.get $7))
              (local.get $8)))
          (if
            (i32.eqz
              (call $_bal_member_type_is_subtype_simple
                (array.get $AnyList
                  (ref.as_non_null
                    (local.get $9))
                  (local.get $8))
                (struct.get $RecordSubtypeField $bitset
                  (ref.as_non_null
                    (local.get $11)))))
            (return
              (i32.const 0))
            (block
              (if
                (i32.eqz
                  (call $_bal_string_eq
                    (struct.get $MapField $key
                      (array.get $MapFieldArr
                        (ref.as_non_null
                          (local.get $10))
                        (local.get $8)))
                    (struct.get $RecordSubtypeField $name
                      (ref.as_non_null
                        (local.get $11)))))
                  (return 
                    (i32.const 0)))
              (local.set $8
                (i32.add
                  (local.get $8)
                  (i32.const 1)))
              (br $loop$cont))))))
    (return
      (i32.const 1)))
  ;; $_bal_map_subtype_contains
  (func $_bal_map_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 (ref null $Map))
    (local $4 (ref null $MappingDesc))
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local $8 (ref null $AnyList))
    (local $9 (ref null $ArrMapSubtype))
    (local.set $2
      (call $_bal_get_type
        (local.get $1)))
    (if 
      (i32.ne
        (i32.and
          (local.get $2)  
          (i32.const 524288))
        (local.get $2))
      (return 
        (i32.const 0)))
    (local.set $3
      (ref.cast
        (ref.as_data
          (local.get $1))
        (global.get $rttMap)))
    (local.set $4
      (struct.get $Map $desc
        (ref.as_non_null
          (local.get $3))))
    (local.set $5
      (struct.get $MappingDesc $nFields
        (ref.as_non_null
          (local.get $4))))
    (local.set $9
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttArrMapSubtype)))
    (local.set $6
      (struct.get $ArrMapSubtype $bitSet
        (ref.as_non_null
          (local.get $9))))
    (local.set $7
      (i32.const 0))
    (local.set $8
      (struct.get $MappingDesc $fieldTypes
        (ref.as_non_null
          (local.get $4))))
    (loop $loop$cont  
      (if
        (i32.lt_u
          (local.get $7)
          (local.get $5))
        (if
          (i32.eqz
            (call $_bal_member_type_is_subtype_simple
              (array.get $AnyList
                (ref.as_non_null
                  (local.get $8))
                (local.get $7))
              (local.get $6)))
          (return
            (i32.const 0))
          (block
            (local.set $7
              (i32.add
                (local.get $7)
                (i32.const 1)))
            (br $loop$cont)))))
    (return
      (call $_bal_member_type_is_subtype_simple
        (struct.get $MappingDesc $restType
          (ref.as_non_null
            (local.get $4)))
        (local.get $6))))
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
  ;; $_bal_array_subtype_contains
  (func $_bal_array_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $ArrMapSubtype))
    (local $3 i32)
    (local $4 (ref null $ListDesc))
    (local.set $2
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttArrMapSubtype)))
    (local.set $3
      (struct.get $ArrMapSubtype $bitSet
        (ref.as_non_null
          (local.get $2))))
    (local.set $4
      (struct.get $List $desc 
        (ref.cast
          (ref.as_data
            (local.get $1))
          (global.get $rttList))))
    (return
      (call $_bal_member_type_is_subtype_simple
        (struct.get $ListDesc $restType
          (ref.as_non_null
            (local.get $4)))
        (local.get $3))))
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
  ;; $_bal_int_subtype_contains
  (func $_bal_int_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $IntSubtype))
    (local.set $2
      (ref.cast 
        (ref.as_data
          (local.get $0))
        (global.get $rttIntSubtype)))
    (return
      (call $_bal_int_range_list_contains
        (struct.get $IntSubtype $ranges
          (local.get $2))
        (call $_bal_tagged_to_int
          (local.get $1)))))
  ;; $_bal_int_range_list_contains
  (func $_bal_int_range_list_contains (param $0 (ref $IntSubtypeRanges)) (param $1 i64) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 (ref null $IntRange))
    (local.set $2 
      (i32.const 0))
    (local.set $3
      (array.len $IntSubtypeRanges
        (local.get $0)))
    (loop $cont$loop
      (if
        (i32.lt_u
          (local.get $2)
          (local.get $3))
        (block
          (local.set $4
            (array.get $IntSubtypeRanges
              (local.get $0)
              (local.get $2)))
          (if
            (i32.and
              (i64.ge_s
                (local.get $1)
                (struct.get $IntRange $min
                  (ref.as_non_null
                    (local.get $4))))
              (i64.le_s
                (local.get $1)
                (struct.get $IntRange $max
                  (ref.as_non_null
                    (local.get $4)))))
            (return 
              (i32.const 1)))
          (local.set $2
            (i32.add
              (local.get $2)
              (i32.const 1)))  
          (br $cont$loop))))
    (return
      (i32.const 0)))
  ;; $_bal_string_subtype_contains
  (func $_bal_string_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $StringSubtype))
    (local $3 (ref null $AnyList))
    (local $4 i32)
    (local $5 i32)
    (local.set $2
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttStringSubtype)))
    (local.set $3
      (struct.get $StringSubtype $values
        (ref.as_non_null
          (local.get $2))))
    (local.set $4
      (call $_bal_string_list_contains
        (ref.as_non_null
          (local.get $3))
        (local.get $1)))
    (if
      (i32.eqz
        (call $_bal_is_char
          (local.get $1)))
      (local.set $5
        (struct.get $StringSubtype $nonCharAllowed
          (ref.as_non_null
            (local.get $2))))
      (local.set $5
        (struct.get $StringSubtype $charAllowed
          (ref.as_non_null
            (local.get $2)))))
    (return 
      (i32.eq
        (local.get $4)
        (local.get $5))))
  ;; $_bal_string_list_contains
  (func $_bal_string_list_contains (param $0 (ref $AnyList)) (param $1 eqref) (result i32)
    (local $2 i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local.set $2
      (i32.const 0))
    (local.set $3
      (array.len $AnyList
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
            (call $_bal_string_compare
              (local.get $1)
              (array.get $AnyList
                (local.get $0)
                (local.get $4))))
          (if 
            (i32.eq  
              (local.get $5)
              (i32.const 1))
            (return
              (i32.const 1)))
          (if
            (i32.eqz
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
  ;; $_bal_float_subtype_contains
  (func $_bal_float_subtype_contains (param $0 eqref) (param $1 eqref) (result i32)
    (local $2 (ref null $FloatSubtype))
    (local.set $2
      (ref.cast 
        (ref.as_data
          (local.get $0))
        (global.get $rttFloatSubtype)))
    (return
      (call $_bal_float_subtype_contains_float
        (struct.get $FloatSubtype $values
          (ref.as_non_null
            (local.get $2)))
        (call $_bal_tagged_to_float
          (local.get $1))
        (struct.get $FloatSubtype $allowed
          (ref.as_non_null
            (local.get $2))))))
  ;; $_bal_float_subtype_contains_float
  (func $_bal_float_subtype_contains_float (param $0 (ref $FloatValues)) (param $1 f64) (param $2 i32) (result i32)
    (local $3 f64)
    (local $4 i32)
    (local.set $3
      (array.get $FloatValues
        (local.get $0)
        (i32.const 0)))
    (local.set $4
      (i32.const 0))
    (if
      (call $_bal_is_nan
        (local.get $3))
      (if
        (call $_bal_is_nan
          (local.get $1))
        (return
          (local.get $2))
        (local.set $4
          (i32.const 1)))
      (if
        (call $_bal_is_nan
          (local.get $1))
        (return
          (i32.xor
            (local.get $2)
            (i32.const 1)))))
    (return
      (i32.eq
        (call $_bal_float_list_contains
          (local.get $0)
          (local.get $1)
          (local.get $4))
        (local.get $2))))
  ;; $_bal_float_list_contains
  (func $_bal_float_list_contains (param $0 (ref $FloatValues)) (param $1 f64) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (local $5 f64)
    (local.set $3
      (array.len $FloatValues
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
            (array.get $FloatValues
              (local.get $0)
              (local.get $4)))
          (if 
            (f64.eq  
              (local.get $5)
              (local.get $1))
            (return
              (i32.const 1)))
          (if
            (f64.lt
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
  ;; $_bal_is_char
  (func $_bal_is_char (param $0 eqref) (result i32) 
    (return
      (i32.const 0)))
  ;; $_bal_string_compare
  (func $_bal_string_compare (param $0 eqref) (param $1 eqref) (result i32) 
    (return
      (i32.const 0)))
  ;; $_bal_is_nan
  (func $_bal_is_nan (param $0 f64) (result i32)
    (i32.xor
      (f64.eq
        (local.get $0)
        (local.get $0))
      (i32.const 1)))
  ;; $_bal_string_eq
  (func $_bal_string_eq (param $0 eqref) (param $1 eqref) (result i32)
    (return
      (i32.const 0)))
  ;; end
) 
