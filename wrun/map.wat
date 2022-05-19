(module 
  ;; type
  (type $Any (struct (field $type i32)))
  (type $HashTable (array (mut i32))) 
  (type $MapField (struct (field $key (mut eqref)) (field $value (mut eqref)))) 
  (type $MapKeys (array (mut eqref))) 
  (type $MapFieldArr (array (mut (ref null $MapField)))) 
  (type $MapFields (struct (field $members (mut (ref null $MapFieldArr))) (field $length (mut i32)))) 
  (type $Map (struct (field $type i32) (field $tableLengthShift (mut i32)) (field $table (mut (ref $HashTable))) (field $fArray (mut (ref $MapFields)))))   
  ;; import
  (import "string" "hash" (func $hash_string (param anyref) (result i32))) 
  ;; global
    ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttMap (rtt 1 $Map) (rtt.sub $Map (global.get $rttAny)))
  ;; export
  (export "_bal_map_array_len" (func $_bal_map_array_len)) 
  (export "_bal_mapping_construct" (func $_bal_mapping_construct)) 
  (export "_bal_mapping_init_member" (func $_bal_mapping_init_member)) 
  (export "_bal_map_insert" (func $_bal_map_insert)) 
  (export "_bal_mapping_set" (func $_bal_mapping_set)) 
  (export "_bal_map_table_grow" (func $_bal_map_table_grow)) 
  (export "_bal_map_array_grow" (func $_bal_map_array_grow)) 
  (export "_bal_map_replace" (func $_bal_map_replace)) 
  (export "_bal_map_matches" (func $_bal_map_matches)) 
  (export "_bal_map_fetch" (func $_bal_map_fetch)) 
  (export "_bal_map_lookup" (func $_bal_map_lookup)) 
  (export "_bal_mapping_get" (func $_bal_mapping_get)) 
  (export "_bal_map_get_keys" (func $_bal_map_get_keys)) 
  (export "_bal_mapping_get_key" (func $_bal_mapping_get_key)) 
  (export "_bal_mapping_num_keys" (func $_bal_mapping_num_keys)) 
  ;; $_bal_map_array_len
  (func $_bal_map_array_len (param $0 i32) (result i32)
    (local $1 i32)
    (local $2 i64)
    (if 
      (i32.lt_u
        (local.get $0)
        (i32.const 4))
      (block
        (local.set $1  
          (i32.const 4)))
      (block
        (local.set $2
          (i64.add 
            (i64.extend_i32_u
              (local.get $0)) 
            (i64.shr_u 
              (i64.extend_i32_u
                (local.get $0)) 
              (i64.const 1))))
        (if
          (i64.ge_u
            (local.get $2)
            (i64.const 4294967295))
          (local.set $1
            (i32.const 4294967295))
          (local.set $1
            (i32.wrap_i64
              (local.get $2))))))
    (return 
      (local.get $1)))
  ;; $_bal_mapping_construct
  (func $_bal_mapping_construct (param $0 i32) (result (ref $Map))
    (local $1 i32)
    (local $2 i32)
    (local.set $1
      (i32.const 2))
    (local.set $2
      (call $_bal_map_array_len 
        (local.get $0)))    
    (loop $loop
      (if
        (i32.ge_u
          (local.get $0)
          (i32.shl
            (i32.const 1)
            (local.get $1)))
        (block
          (local.set $1
            (i32.add  
              (local.get $1)
              (i32.const 1)))
          (br $loop))))
    (local.set $1
      (i32.add  
        (local.get $1)
        (i32.const 1)))
    (struct.new_with_rtt $Map
      (i32.const 6)
      (local.get $1)
      (array.new_with_rtt $HashTable
        (i32.const -1)
        (i32.shl 
          (i32.const 1)
          (local.get $1))
        (rtt.canon $HashTable))
      (struct.new_with_rtt $MapFields 
        (array.new_default_with_rtt $MapFieldArr
          (local.get $2)
          (rtt.canon $MapFieldArr))
        (i32.const 0)
        (rtt.canon $MapFields))
      (global.get $rttMap)))
  ;; $_bal_mapping_init_member
  (func $_bal_mapping_init_member (param $0 (ref $Map)) (param $1 eqref) (param $2 eqref) ;; map, key, val
    (local $3 i32)
    (local $4 (ref null $MapFields))
    (local $5 i32)
    (local $6 (ref null $MapFieldArr))
    (local.set $3
      (call $get_string_hash
        (local.get $1)))
    (local.set $4
      (struct.get $Map $fArray
        (local.get $0)))
    (local.set $5
      (struct.get $MapFields $length
        (ref.as_non_null
          (local.get $4))))
    (local.set $6
      (struct.get $MapFields $members
        (ref.as_non_null
          (local.get $4))))
    (array.set $MapFieldArr
      (ref.as_non_null
        (local.get $6))
      (local.get $5)
      (struct.new_with_rtt $MapField
        (local.get $1)
        (local.get $2)
        (rtt.canon $MapField)))
    (struct.set $MapFields $length
      (ref.as_non_null
        (local.get $4))
      (i32.add
        (local.get $5)
        (i32.const 1)))
    (call $_bal_map_insert
      (local.get $0)
      (local.get $1)
      (local.get $3)
      (local.get $5)))
  ;; $_bal_map_insert
  (func $_bal_map_insert (param $0 (ref $Map)) (param $1 eqref) (param $2 i32) (param $3 i32) ;;map, key, hash, index in fArray ;; tableLength
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local.set $4
      (i32.sub
        (i32.shl
          (i32.const 1)
          (struct.get $Map $tableLengthShift
            (local.get $0)))
        (i32.const 1)))
    (local.set $5
      (i32.and  
        (local.get $2)
        (local.get $4)))
    (block $loop$br
      (loop $loop
        (local.set $6
          (call $_bal_map_replace
            (struct.get $Map $table ;;Hashtable
              (local.get $0))
            (local.get $5) ;; index to check
            (local.get $3))) ;; index in fArray
        (if 
          (i32.eq 
            (local.get $6)
            (i32.const -1))
          (br $loop$br))
        (if 
          (call $_bal_map_matches
            (struct.get $Map $fArray
              (local.get $0))
            (local.get $1)
            (local.get $6))
          (br $loop$br))
        (if 
          (i32.eqz
            (local.get $5))
          (local.set $5
            (local.get $4))
          (local.set $5
            (i32.sub
              (local.get $5)
              (i32.const 1))))
        (br $loop))))
  ;; $_bal_map_insert_init
  (func $_bal_map_insert_init (param $0 (ref $Map)) (param $1 eqref) (param $2 i32) (param $3 i32) ;;map, key, hash, index in fArray ;; tableLength
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local.set $4
      (i32.sub
        (i32.shl
          (i32.const 1)
          (struct.get $Map $tableLengthShift
            (local.get $0)))
        (i32.const 1)))
    (local.set $5
      (i32.and  
        (local.get $2)
        (local.get $4)))
    (block $loop$br
      (loop $loop
        (local.set $6
          (call $_bal_map_replace
            (struct.get $Map $table ;;Hashtable
              (local.get $0))
            (local.get $5) ;; index to check
            (local.get $3))) ;; index in fArray
        (if 
          (i32.eq 
            (local.get $6)
            (i32.const -1))
          (br $loop$br))
        (if 
          (i32.eqz
            (local.get $5))
          (local.set $5
            (local.get $4))
          (local.set $5
            (i32.sub
              (local.get $5)
              (i32.const 1))))
        (br $loop))))
  ;; $_bal_mapping_set
  (func $_bal_mapping_set (param $0 (ref $Map)) (param $1 eqref) (param $2 eqref) ;; map, key, val
    (local $3 (ref null $MapFields))
    (local $4 i32)
    (local $5 i32)
    (local $6 i32)
    (local $7 i32)
    (local.set $7
      (call $_bal_map_lookup
        (local.get $0)
        (local.get $1)
        (call $get_string_hash
          (local.get $1))))
    (if
      (i32.eq
        (local.get $7)
        (i32.const -1))
      (block
        (call $_bal_mapping_init_member
          (local.get $0)
          (local.get $1)
          (local.get $2))
        (local.set $4
          (struct.get $MapFields $length
            (struct.get $Map $fArray
              (local.get $0))))
        (local.set $5
          (array.len $MapFieldArr
            (struct.get $MapFields $members
              (struct.get $Map $fArray  
                (local.get $0)))))
        (if 
          (i32.eq
            (local.get $5)
            (local.get $4))
          (call $_bal_map_array_grow
            (local.get $0)
            (local.get $4)))
        (local.set $6
          (i32.shl
            (i32.const 1)
            (i32.sub  
              (struct.get $Map $tableLengthShift
                (local.get $0))
              (i32.const 1))))
        (if
          (i32.ge_u
            (local.get $4)
            (local.get $6))
          (block
            (struct.set $Map $tableLengthShift
              (local.get $0)
              (i32.add
                (i32.const 1)
                (struct.get $Map $tableLengthShift
                  (local.get $0))))
            (call $_bal_map_table_grow
              (local.get $0)))))
      (array.set $MapFieldArr
        (struct.get $MapFields $members
          (struct.get $Map $fArray
            (local.get $0)))
        (local.get $7)
        (struct.new_with_rtt $MapField
          (local.get $1)
          (local.get $2)
          (rtt.canon $MapField)))))
  ;; $_bal_map_table_grow
  (func $_bal_map_table_grow (param $0 (ref $Map)) 
    (local $1 i32)
    (local $2 (ref null $HashTable))
    (local $3 (ref null $MapFieldArr))
    (local $4 i32)
    (local $5 i32)
    (local $6 eqref)
    (local.set $1
      (struct.get $Map $tableLengthShift
        (local.get $0)))
    (local.set $2
      (array.new_with_rtt $HashTable
        (i32.const -1)
        (i32.shl 
          (i32.const 1)
          (local.get $1))
        (rtt.canon $HashTable)))
    (local.set $3
      (struct.get $MapFields $members
        (struct.get $Map $fArray
          (local.get $0))))
    (local.set $4
      (struct.get $MapFields $length
        (struct.get $Map $fArray  
          (local.get $0))))
    (struct.set $Map $table
      (local.get $0)
      (ref.as_non_null
        (local.get $2)))
    (local.set $5
      (i32.const 0))
    (loop $loop
      (if
        (i32.lt_u
          (local.get $5)
          (local.get $4))
        (block
          (local.set $6
            (struct.get $MapField $key  
              (array.get $MapFieldArr 
                (ref.as_non_null
                  (local.get $3))
                (local.get $5))))
          (call $_bal_map_insert_init 
            (local.get $0)
            (local.get $6)
            (call $get_string_hash
              (local.get $6))
            (local.get $5))
          (local.set $5
            (i32.add
              (local.get $5)
              (i32.const 1)))
          (br $loop)))))
  ;; $_bal_map_array_grow 
  (func $_bal_map_array_grow (param $0 (ref $Map)) (param $1 i32)
    (local $2 (ref null $MapFieldArr)) 
    (local $3 i32) 
    (local $4 (ref null $MapFieldArr)) 
    (local $5 i32)  
    (local.set $2 
      (struct.get $MapFields $members 
        (struct.get $Map $fArray
          (local.get $0))))
    (local.set $3
      (call $_bal_map_array_len
        (local.get $1))) 
    (local.set $4 
      (array.new_default_with_rtt $MapFieldArr 
        (local.get $3) 
        (rtt.canon $MapFieldArr))) 
    (local.set $5 
      (i32.const 0)) 
    (loop $block1$continue 
      (if 
        (i32.lt_u
          (local.get $5) 
          (local.get $1)) 
        (block 
          (array.set $MapFieldArr 
            (ref.as_non_null
              (local.get $4)) 
            (local.get $5) 
            (array.get $MapFieldArr  
              (ref.as_non_null
                (local.get $2)) 
              (local.get $5))) 
          (local.set $5 
            (i32.add 
              (local.get $5) 
              (i32.const 1))) 
          (br $block1$continue))))
    (struct.set $Map $fArray 
      (local.get $0) 
      (struct.new_with_rtt $MapFields
        (local.get $4)
        (local.get $1)
        (rtt.canon $MapFields)))) 
  ;; $_bal_map_replace
  (func $_bal_map_replace (param $0 (ref $HashTable)) (param $1 i32) (param $2 i32) (result i32);; $0 - hashtable ; 1-i; 2-n
    (local $3 i32)
    (local.set $3
      (array.get $HashTable
        (local.get $0)
        (local.get $1)))
    (if
      (i32.eq
        (local.get $3)
        (i32.const -1))
      (array.set $HashTable
        (local.get $0)
        (local.get $1)
        (local.get $2)))
    (local.get $3))
  ;; $_bal_map_matches
  (func $_bal_map_matches (param $0 (ref $MapFields)) (param $1 eqref) (param $2 i32) (result i32)
    (local $3 (ref null $MapField))
    (local.set $3
      (array.get $MapFieldArr 
        (struct.get $MapFields $members
          (local.get $0))
        (local.get $2)))
    (call $str_eq
      (struct.get $String $val
        (ref.cast
          (ref.as_data
            (local.get $1))
          (global.get $rttString)))
      (struct.get $String $val
        (ref.cast
          (ref.as_data
            (struct.get $MapField $key
              (ref.as_non_null
                (local.get $3))))
          (global.get $rttString)))))
  ;; $_bal_map_fetch
  (func $_bal_map_fetch (param $0 (ref $HashTable)) (param $1 i32) (result i32);; $0 - hashtable ; 1-i; 2-n
    (local $3 i32)
    (local.set $3
      (array.get $HashTable
        (local.get $0)
        (local.get $1)))
    (local.get $3))
  ;; $_bal_map_lookup
  (func $_bal_map_lookup (param $0 (ref $Map)) (param $1 eqref) (param $2 i32) (result i32);;map, key, hash
    (local $3 i32)
    (local $4 i32)
    (local $5 i32)
    (local.set $3
      (i32.sub
        (i32.shl
          (i32.const 1)
          (struct.get $Map $tableLengthShift
            (local.get $0)))
        (i32.const 1)))
    (local.set $4
      (i32.and  
        (local.get $2)
        (local.get $3)))
    (block $loop$br
      (loop $loop
        (local.set $5
          (call $_bal_map_fetch
            (struct.get $Map $table ;;Hashtable
              (local.get $0))
            (local.get $4))) ;; index to check
        (if 
          (i32.eq 
            (local.get $5)
            (i32.const -1))
          (br $loop$br))
        (if 
          (call $_bal_map_matches
            (struct.get $Map $fArray
              (local.get $0))
            (local.get $1)
            (local.get $5))
          (br $loop$br))
        (if 
          (i32.eqz
            (local.get $4))
          (local.set $4
            (local.get $3))
          (local.set $4
            (i32.sub
              (local.get $4)
              (i32.const 1))))
        (br $loop)))
    (return 
      (local.get $5)))
  ;; $_bal_mapping_get
  (func $_bal_mapping_get (param $0 eqref) (param $1 eqref) (result eqref);;map, key
    (local $2 i32)
    (local $3 (ref null $Map))
    (local.set $3
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttMap)))
    (local.set $2
      (call $_bal_map_lookup
        (ref.as_non_null
          (local.get $3))
        (local.get $1)
        (call $get_string_hash
          (local.get $1))))
    (if
      (i32.eq
        (local.get $2)
        (i32.const -1))
      (return 
        (ref.null data)))
    (struct.get $MapField $value
      (array.get $MapFieldArr 
        (struct.get $MapFields $members
          (struct.get $Map $fArray
            (ref.as_non_null
              (local.get $3))))
        (local.get $2))))
  ;; $_bal_map_get_keys
  (func $_bal_map_get_keys (param $0 eqref) (result eqref)
    (local $1 (ref null $Map))
    (local $2 i32)
    (local $3 (ref null $MapKeys))
    (local $4 (ref null $MapFieldArr))
    (local $5 i32)
    (local.set $1
      (ref.cast
        (ref.as_data
          (local.get $0))
        (global.get $rttMap)))
    (local.set $2
      (struct.get $MapFields $length
        (struct.get $Map $fArray
          (ref.as_non_null
            (local.get $1)))))
    (local.set $3
      (array.new_default_with_rtt $MapKeys
        (local.get $2)
        (rtt.canon $MapKeys)))
    (local.set $4
      (struct.get $MapFields $members
        (struct.get $Map $fArray
          (ref.as_non_null
            (local.get $1)))))
    (local.set $5
      (i32.const 0))
    (loop $loop
      (if
        (i32.lt_u
          (local.get $5)
          (local.get $2))
        (block
          (array.set $MapKeys
            (local.get $3)
            (local.get $5)
            (struct.get $MapField $key
              (array.get $MapFieldArr
                (ref.as_non_null
                  (local.get $4))
                (local.get $5))))
          (local.set $5
            (i32.add 
              (local.get $5)
              (i32.const 1)))
          (br $loop))))
    (ref.as_non_null
      (local.get $3)))
  ;; $_bal_mapping_get_key
  (func $_bal_mapping_get_key (param $0 eqref) (param $1 i32) (result eqref)
    (array.get $MapKeys
      (ref.cast
        (ref.as_data
          (local.get $0))
        (rtt.canon $MapKeys))
      (local.get $1)))
  ;; $_bal_mapping_num_keys
  (func $_bal_mapping_num_keys (param $0 eqref) (result i32)
    (array.len $MapKeys
      (ref.cast
        (ref.as_data
          (local.get $0))
        (rtt.canon $MapKeys))))
  ;; $length
  (func $length (param $0 eqref) (result i64) 
    (local $1 i64) 
    (block 
      (block $blockList 
        (drop 
          (block $blockStr 
            (result (ref null any)) 
            (drop 
              (br_on_cast_fail $blockStr 
                (ref.as_data 
                  (local.get $0)) 
                (global.get $rttString))) 
            (local.set $1 
              (call $bal_str_len 
                (ref.cast 
                  (ref.as_data 
                    (local.get $0)) 
                  (global.get $rttString)))) 
            (br $blockList) 
            (ref.null any)))
        (drop 
          (block $blockMap
            (result (ref null any)) 
            (drop 
              (br_on_cast_fail $blockMap
                (ref.as_data 
                  (local.get $0)) 
                (global.get $rttMap))) 
            (local.set $1 
              (i64.extend_i32_u
                (call $_bal_mapping_num_keys 
                  (call $_bal_map_get_keys
                    (ref.cast 
                      (ref.as_data 
                        (local.get $0)) 
                      (global.get $rttMap)))))) 
            (br $blockList) 
            (ref.null any)))   
        (local.set $1 
          (struct.get $List $len 
            (ref.cast 
              (ref.as_data 
                (local.get $0)) 
              (global.get $rttList))))) 
      (return 
        (local.get $1))))
  ;; $get_string_hash
  (func $get_string_hash (param $0 eqref) (result i32)
    (local $1 (ref null $String))
    (local $2 i32)
    (local $3 anyref)
    (local.set $1
      (ref.cast 
        (ref.as_data
          (local.get $0))
        (global.get $rttString)))
    (local.set $2
      (struct.get $String $hash
        (ref.as_non_null
          (local.get $1))))
    (local.set $3
      (struct.get $String $val
        (ref.as_non_null
          (local.get $1))))
    (if
      (i32.eq
        (local.get $2)
        (i32.const -1))
      (struct.set $String $hash
        (local.get $1)
        (call $hash_string
          (local.get $3))))
    (return 
      (struct.get $String $hash
        (local.get $1))))
  ;; end
  )
