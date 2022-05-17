(module 
  ;; type
  (type $Any (struct (field $type i32)))
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  ;; import
  (import "string" "eq" (func $str_eq (param anyref) (param anyref) (result i32))) 
  (import "int" "hex" (func $int_to_hex (param i64) (result anyref))) 
  ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttString (rtt 1 $String) (rtt.sub $String (global.get $rttAny)))
  ;; toHexString
  (func $toHexString (param $0 i64) (result (ref $String)) 
    (struct.new_with_rtt $String 
      (i32.const 5)
      (call $int_to_hex 
        (local.get $0)) 
      (array.new_default_with_rtt $Surrogate 
        (i32.const 0) 
        (rtt.canon $Surrogate))
      (i32.const -1) 
      (global.get $rttString)))
  ;; end
  ) 
