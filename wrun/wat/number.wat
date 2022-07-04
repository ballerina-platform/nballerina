(module 
  ;; tag
  (tag $bad-conversion) 
  (tag $overflow) 
  ;; export
  (export "overflow" (tag $overflow)) 
  (export "bad-conversion" (tag $bad-conversion)) 
  ;; $_bal_check_type_and_int_val
  (func $_bal_check_type_and_int_val (param $0 eqref) (param $1 i64) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local.set $2
      (i32.const 0)) 
    (local.set $3
      (call $_bal_get_type
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
  ;; $_bal_check_type_and_float_val
  (func $_bal_check_type_and_float_val (param $0 eqref) (param $1 f64) (result i32)
    (local $2 i32) 
    (local $3 i32) 
    (local.set $2
      (i32.const 0)) 
    (local.set $3
      (call $_bal_get_type
        (local.get $0))) 
    (if 
      (i32.eq
        (local.get $3)
        (i32.const 256))
      (local.set $2
        (call $_bal_float_eq
          (struct.get $Float $val
            (ref.cast
              (ref.as_data  
                (local.get $0))
              (global.get $rttFloat)))
          (local.get $1))))
    (return
      (local.get $2)))
  ;; $_bal_convert_to_float
  (func $_bal_convert_to_float (param $0 eqref) (result (ref $Float))
    (local $1 i32)
    (local $2 f64)
    (local.set $1
      (call $_bal_get_type
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
      (struct.new_with_rtt $Float
        (i32.const 256)
        (local.get $2)
        (global.get $rttFloat))))
  ;; $_bal_convert_to_int
  (func $_bal_convert_to_int (param $0 eqref) (result (ref $BoxedInt))
    (local $1 i32)
    (local $2 i64)
    (local.set $1
      (call $_bal_get_type
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
      (struct.new_with_rtt $BoxedInt
        (i32.const 128)
        (local.get $2)
        (global.get $rttBoxedInt))))
  ;; $_bal_float_rem
  (func $_bal_float_rem (param $0 f64) (param $1 f64) (result f64)
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
    (if
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
  ;; $_bal_float_eq
  (func $_bal_float_eq (param $0 f64) (param $1 f64) (result i32)
    (local $2 i32)
    (local $3 i32)
    (block
      (local.set $2
        (f64.ne
          (local.get $0)
          (local.get $0)))
      (local.set $3
        (f64.ne
          (local.get $1)
          (local.get $1)))
      (if
        (i32.and
          (local.get $2)
          (local.get $3))
        (return
          (i32.const 1))
        (return
          (f64.eq
            (local.get $0)
            (local.get $1))))))
  ;; $_bal_check_overflow_add
  (func $_bal_check_overflow_add (param $0 i64) (param $1 i64)
    (if 
      (i32.and 
        (i64.gt_s 
          (local.get $0) 
          (i64.const 0)) 
        (i64.gt_s 
          (local.get $1) 
          (i64.const 0))) 
      (if 
        (i64.gt_s 
          (local.get $0) 
          (i64.sub 
            (i64.const 9223372036854775807) 
            (local.get $1))) 
        (throw $overflow)) 
      (if 
        (i32.and 
          (i64.lt_s 
            (local.get $0) 
            (i64.const 0)) 
          (i64.lt_s 
            (local.get $1) 
            (i64.const 0))) 
        (if 
          (i64.lt_s 
            (local.get $0) 
            (i64.sub 
              (i64.const -9223372036854775808) 
              (local.get $1))) 
          (throw $overflow)))))
  ;; $_bal_check_overflow_sub
  (func $_bal_check_overflow_sub (param $0 i64) (param $1 i64)
    (if 
      (i32.and 
        (i64.ge_s 
          (local.get $0) 
          (i64.const 0)) 
        (i64.lt_s 
          (local.get $1) 
          (i64.const 0))) 
      (if 
        (i64.gt_s 
          (local.get $0) 
          (i64.add 
            (i64.const 9223372036854775807) 
            (local.get $1))) 
        (throw $overflow)) 
      (if 
        (i32.and 
          (i64.lt_s 
            (local.get $0) 
            (i64.const 0)) 
          (i64.gt_s 
            (local.get $1) 
            (i64.const 0))) 
        (if 
          (i64.lt_s 
            (local.get $0) 
            (i64.add 
              (i64.const -9223372036854775808) 
              (local.get $1))) 
          (throw $overflow)))))  
  ;; $_bal_check_overflow_mul
  (func $_bal_check_overflow_mul (param $0 i64) (param $1 i64)
    (if 
      (i32.and 
        (i64.gt_s 
          (local.get $0) 
          (i64.const 0)) 
        (i64.gt_s 
          (local.get $1) 
          (i64.const 0))) 
      (if 
        (i64.gt_s 
          (local.get $1) 
          (i64.div_s 
            (i64.const 9223372036854775807) 
            (local.get $0))) 
        (throw $overflow)) 
      (if 
        (i32.and 
          (i64.lt_s 
            (local.get $0) 
            (i64.const 0)) 
          (i64.lt_s 
            (local.get $1) 
            (i64.const 0))) 
        (if 
          (i64.lt_s 
            (local.get $1) 
            (i64.div_s 
              (i64.const 9223372036854775807) 
              (local.get $0))) 
          (throw $overflow)) 
        (if 
          (i32.and 
            (i64.lt_s 
              (local.get $0) 
              (i64.const -1)) 
            (i64.gt_s 
              (local.get $1) 
              (i64.const 0))) 
          (if 
            (i64.gt_s 
              (local.get $1) 
              (i64.div_s 
                (i64.const -9223372036854775808) 
                (local.get $0))) 
            (throw $overflow)) 
          (if 
            (i32.and 
              (i64.gt_s 
                (local.get $0) 
                (i64.const 0)) 
              (i64.lt_s 
                (local.get $1) 
                (i64.const 0))) 
            (if 
              (i64.lt_s 
                (local.get $1) 
                (i64.div_s 
                  (i64.const -9223372036854775808) 
                  (local.get $0))) 
              (throw $overflow)))))))
  ;; $_bal_check_overflow_div
  (func $_bal_check_overflow_div (param $0 i64) (param $1 i64)      
    (if 
      (i32.and 
        (i64.eq 
          (i64.const -1) 
          (local.get $1)) 
        (i64.eq 
          (i64.const -9223372036854775808) 
          (local.get $0))) 
      (throw $overflow)))
  ;; $_bal_is_nan
  (func $_bal_is_nan (param $0 f64) (result i32)
    (i32.xor
      (f64.eq
        (local.get $0)
        (local.get $0))
      (i32.const 1)))
  ;; end
  ) 
