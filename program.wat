(module
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 16) "Hello World\00")
 (export "memory" (memory $0))
 (export "hello" (func $hello))
 (export "sum" (func $sum))
 (export "fibonacci" (func $fibonacci))
 (func $hello (; 0 ;) (result i32)
  (i32.shr_s
   (i32.shl
    (i32.const 16)
    (i32.const 24)
   )
   (i32.const 24)
  )
 )
 (func $sum (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  (i32.add
   (get_local $1)
   (get_local $0)
  )
 )
 (func $fibonacci (; 2 ;) (param $0 i32) (result i32)
  (block $label$0
   (br_if $label$0
    (i32.ge_s
     (get_local $0)
     (i32.const 2)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.add
   (call $fibonacci
    (i32.add
     (get_local $0)
     (i32.const -1)
    )
   )
   (call $fibonacci
    (i32.add
     (get_local $0)
     (i32.const -2)
    )
   )
  )
 )
)
