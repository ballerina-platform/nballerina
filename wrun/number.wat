(module 
  ;; type
  (type $Any (struct (field $type i32)))
  (type $Surrogate (array (mut i32))) 
  (type $String (struct (field $type i32) (field $val (mut anyref)) (field $surrogate (ref $Surrogate)) (field $hash (mut i32)))) 
  ;; tag
  (tag $bad-conversion) 
  ;; import
  (import "string" "eq" (func $str_eq (param anyref) (param anyref) (result i32))) 
  (import "int" "hex" (func $int_to_hex (param i64) (result anyref))) 
  ;; global
  (global $rttAny (rtt 0 $Any) (rtt.canon $Any))
  (global $rttString (rtt 1 $String) (rtt.sub $String (global.get $rttAny)))
  ;; export
  (export "bad-conversion" (tag $bad-conversion)) 
  ;; toHexString
  (func $toHexString (param $0 i64) (result (ref $String)) 
    (struct.new_with_rtt $String 
      (i32.const 1024)
      (call $int_to_hex 
        (local.get $0)) 
      (array.new_default_with_rtt $Surrogate 
        (i32.const 0) 
        (rtt.canon $Surrogate))
      (i32.const -1) 
      (global.get $rttString)))
  ;; $check_type_and_int_val
  (func $check_type_and_int_val (param $0 eqref) (param $1 i64) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local.set $2
      (i32.const 0)) 
    (local.set $3
      (call $get_type
        (local.get $0))) 
    (if 
      (i32.eq
        (local.get $3)
        (i32.const 128))
      (local.set $2
        (i64.eq
          (struct.get $BoxedInt $val
            (ref.cast
              (ref.as_data  
                (local.get $0))
              (global.get $rttBoxedInt)))
          (local.get $1))))
    (return
      (local.get $2))) 
  ;; $check_type_and_float_val
  (func $check_type_and_float_val (param $0 eqref) (param $1 f64) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local.set $2
      (i32.const 0)) 
    (local.set $3
      (call $get_type
        (local.get $0))) 
    (if 
      (i32.eq
        (local.get $3)
        (i32.const 256))
      (local.set $2
        (f64.eq
          (struct.get $Float $val
            (ref.cast
              (ref.as_data  
                (local.get $0))
              (global.get $rttFloat)))
          (local.get $1))))
    (return
      (local.get $2)))
  ;; $convert_to_float
  (func $convert_to_float (param $0 eqref) (result f64)
    (local $1 i32)
    (local $2 f64)
    (local.set $1
      (call $get_type
        (local.get $0)))
    (if 
      (i32.eq
        (local.get $1)
        (i32.const 256))
      (local.set $2
        (struct.get $Float $val 
          (ref.cast
            (ref.as_data
              (local.get $0))
            (global.get $rttFloat))))
      (if
        (i32.eq
          (local.get $1)
          (i32.const 128))
        (local.set $2
          (f64.convert_i64_s
            (struct.get $BoxedInt $val 
              (ref.cast
                (ref.as_data
                  (local.get $0))
                (global.get $rttBoxedInt)))))
        (throw $bad-conversion)))
    (return 
      (local.get $2)))
  ;; $convert_to_int
  (func $convert_to_int (param $0 eqref) (result i64)
    (local $1 i32)
    (local $2 i64)
    (local.set $1
      (call $get_type
        (local.get $0)))
    (if 
      (i32.eq
        (local.get $1)
        (i32.const 256))
      (local.set $2
        (i64.trunc_f64_s
          (f64.nearest
            (struct.get $Float $val 
              (ref.cast
                (ref.as_data
                  (local.get $0))
                (global.get $rttFloat))))))
      (if
        (i32.eq
          (local.get $1)
          (i32.const 128))
        (local.set $2
          (struct.get $BoxedInt $val 
            (ref.cast
              (ref.as_data
                (local.get $0))
              (global.get $rttBoxedInt))))
        (throw $bad-conversion)))
    (return 
      (local.get $2)))
  ;; $float_eq
  (func $float_eq (param $0 f64) (param $1 f64) (param $2 i32) (result i32)
    (local $3 i32)
    (local $4 i32)
    (if 
      (local.get $2)
      (return 
        (i64.eq
          (i64.reinterpret_f64
            (local.get $0))
          (i64.reinterpret_f64
            (local.get $1))))
      (block
        (local.set $3
          (f64.ne
            (local.get $0)
            (local.get $0)))
        (local.set $4
          (f64.ne
            (local.get $1)
            (local.get $1)))
        (if
          (i32.and
            (local.get $3)
            (local.get $4))
          (return
            (i32.const 1))
          (return
            (f64.eq
              (local.get $0)
              (local.get $1)))))))
  ;; $float_rem
  (func $float_rem (param $0 f64) (param $1 f64) (result f64)
    (local $2 i64) 
    (local $3 i64)
    (local $4 i64)
    (local $5 i64)
    (local $6 i64) 
    (local $7 i64)
    (local $8 f64)
    (local $9 i64)
    (local $10 i32)
    (local $11 i64)
    (if  ;; label = @1
      (f64.eq
        (f64.abs
          (local.get $1))
        (f64.const 0x1p+0 (;=1;)))
      (then
        (return
          (f64.copysign
            (f64.sub
              (local.get $0)
              (f64.trunc
                (local.get $0)))
            (local.get $0)))))
    (local.set $2
      (i64.reinterpret_f64
        (local.get $0)))
    (local.set $3
      (i64.reinterpret_f64
        (local.get $1)))
    (local.set $4
      (i64.and
        (i64.shr_u
          (local.get $2)
          (i64.const 52))
        (i64.const 2047)))
    (local.set $5
      (i64.and
        (i64.shr_u
          (local.get $3)
          (i64.const 52))
        (i64.const 2047)))
    (local.set $6
      (i64.shr_u
        (local.get $2)
        (i64.const 63)))
    (local.set $7
      (i64.shl
        (local.get $3)
        (i64.const 1)))
    (if  ;; label = @1
      (if (result i32)  ;; label = @2
        (if (result i32)  ;; label = @3
          (i64.eq
            (local.get $7)
            (i64.const 0))
          (then
            (i32.const 1))
          (else
            (i64.eq
              (local.get $4)
              (i64.const 2047))))
        (then
          (i32.const 1))
        (else
          (f64.ne
            (local.get $1)
            (local.get $1))))
      (then
        (local.set $8
          (f64.mul
            (local.get $0)
            (local.get $1)))
        (return
          (f64.div
            (local.get $8)
            (local.get $8)))))
    (local.set $9
      (i64.shl
        (local.get $2)
        (i64.const 1)))
    (if  ;; label = @1
      (i64.le_u
        (local.get $9)
        (local.get $7))
      (then
        (return
          (f64.mul
            (local.get $0)
            (f64.convert_i32_u
              (i64.ne
                (local.get $9)
                (local.get $7)))))))
    (if  ;; label = @1
      (i32.eqz
        (i64.ne
          (local.get $4)
          (i64.const 0)))
      (then
        (local.set $4
          (i64.sub
            (local.get $4)
            (i64.clz
              (i64.shl
                (local.get $2)
                (i64.const 12)))))
        (local.set $2
          (i64.shl
            (local.get $2)
            (i64.sub
              (i64.const 1)
              (local.get $4)))))
      (else
        (local.set $2
          (i64.and
            (local.get $2)
            (i64.shr_u
              (i64.const -1)
              (i64.const 12))))
        (local.set $2
          (i64.or
            (local.get $2)
            (i64.shl
              (i64.const 1)
              (i64.const 52))))))
    (if  ;; label = @1
      (i32.eqz
        (i64.ne
          (local.get $5)
          (i64.const 0)))
      (then
        (local.set $5
          (i64.sub
            (local.get $5)
            (i64.clz
              (i64.shl
                (local.get $3)
                (i64.const 12)))))
        (local.set $3
          (i64.shl
            (local.get $3)
            (i64.sub
              (i64.const 1)
              (local.get $5)))))
      (else
        (local.set $3
          (i64.and
            (local.get $3)
            (i64.shr_u
              (i64.const -1)
              (i64.const 12))))
        (local.set $3
          (i64.or
            (local.get $3)
            (i64.shl
              (i64.const 1)
              (i64.const 52))))))
    (loop  ;; label = @1
      (local.set $10
        (i64.gt_s
          (local.get $4)
          (local.get $5)))
      (if  ;; label = @2
        (local.get $10)
        (then
          (if  ;; label = @3
            (i64.ge_u
              (local.get $2)
              (local.get $3))
            (then
              (if  ;; label = @4
                (i64.eq
                  (local.get $2)
                  (local.get $3))
                (then
                  (return
                    (f64.mul
                      (f64.const 0x0p+0 (;=0;))
                      (local.get $0)))))
              (local.set $2
                (i64.sub
                  (local.get $2)
                  (local.get $3)))))
          (local.set $2
            (i64.shl
              (local.get $2)
              (i64.const 1)))
          (local.set $4
            (i64.sub
              (local.get $4)
              (i64.const 1)))
          (br 1 (;@1;)))))
    (if  ;; label = @1
      (i64.ge_u
        (local.get $2)
        (local.get $3))
      (then
        (if  ;; label = @2
          (i64.eq
            (local.get $2)
            (local.get $3))
          (then
            (return
              (f64.mul
                (f64.const 0x0p+0 (;=0;))
                (local.get $0)))))
        (local.set $2
          (i64.sub
            (local.get $2)
            (local.get $3)))))
    (local.set $11
      (i64.clz
        (i64.shl
          (local.get $2)
          (i64.const 11))))
    (local.set $4
      (i64.sub
        (local.get $4)
        (local.get $11)))
    (local.set $2
      (i64.shl
        (local.get $2)
        (local.get $11)))
    (if  ;; label = @1
      (i64.gt_s
        (local.get $4)
        (i64.const 0))
      (then
        (local.set $2
          (i64.sub
            (local.get $2)
            (i64.shl
              (i64.const 1)
              (i64.const 52))))
        (local.set $2
          (i64.or
            (local.get $2)
            (i64.shl
              (local.get $4)
              (i64.const 52)))))
      (else
        (local.set $2
          (i64.shr_u
            (local.get $2)
            (i64.add
              (i64.sub
                (i64.const 0)
                (local.get $4))
              (i64.const 1))))))
    (f64.reinterpret_i64
      (i64.or
        (local.get $2)
        (i64.shl
          (local.get $6)
          (i64.const 63)))))
  ;; end
  ) 
