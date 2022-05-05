(module  
  ;; type
  (type $BoxedInt (struct (field $type i32) (field $val i64)) (extends $Any))
  (type $Any (struct (field $type i32))) 
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
          (rtt.sub $BoxedInt
            (rtt.canon $Any)))))) 
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
              (rtt.canon $Any)))))))
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
