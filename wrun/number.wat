(module 
  ;; type
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  ;; import
  (import "string" "eq" (func $str_eq (param anyref) (param anyref) (result i32))) 
  (import "int" "hex" (func $int_to_hex (param i64) (result anyref))) 
  ;; toHexString
  (func $toHexString (param $0 i64) (result (ref $String)) 
    (struct.new_with_rtt $String 
      (call $int_to_hex 
        (local.get $0)) 
      (array.new_default_with_rtt $Surrogate 
        (i32.const 0) 
        (rtt.canon $Surrogate))
      (i32.const -1) 
      (rtt.canon $String)))
  ;; end
  ) 
