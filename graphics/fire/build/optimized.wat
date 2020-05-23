(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_f64 (func (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "env" "seed" (func $~lib/builtins/seed (result f64)))
 (memory $0 1)
 (data (i32.const 1024) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1088) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1136) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1184) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1248) "\04\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00a\00\00\00\02")
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/fire (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0_64 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1_64 (mut i64) (i64.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1248))
 (export "memory" (memory $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "clear" (func $assembly/index/clear))
 (export "updateScreen" (func $assembly/index/updateScreen))
 (export "getDataBuffer" (func $assembly/index/getDataBuffer))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $3
   local.get $2
   i32.const 7
   i32.sub
   local.set $4
  end
  local.get $1
  i32.load offset=20
  local.set $2
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $2
   i32.store offset=20
  end
  local.get $2
  if
   local.get $2
   local.get $5
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.get $3
  local.get $4
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   local.get $4
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $2
   i32.store offset=96
   local.get $2
   i32.eqz
   if
    local.get $0
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.tee $2
    i32.load offset=4
    i32.const 1
    local.get $3
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.set $1
    local.get $2
    local.get $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $5
  i32.load
  local.tee $4
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $4
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $5
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    local.get $3
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $5
    i32.load
    local.set $4
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $7
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $8
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $8
    local.get $7
    i32.const 3
    i32.and
    i32.or
    local.tee $3
    i32.store
    local.get $2
    local.set $1
   end
  end
  local.get $5
  local.get $4
  i32.const 2
  i32.or
  i32.store
  local.get $5
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 256
  i32.lt_u
  if
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
  else
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
   local.set $6
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $3
  i32.store offset=20
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.get $2
  local.get $6
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $6
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  local.get $0
  i32.load offset=1568
  local.tee $2
  if
   local.get $2
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $2
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  end
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $0
  i32.eqz
  if
   i32.const 1
   memory.size
   local.tee $0
   i32.gt_s
   if (result i32)
    i32.const 1
    local.get $0
    i32.sub
    memory.grow
    i32.const 0
    i32.lt_s
   else
    i32.const 0
   end
   if
    unreachable
   end
   i32.const 1296
   local.tee $0
   i32.const 0
   i32.store
   i32.const 2864
   i32.const 0
   i32.store
   loop $for-loop|0
    local.get $1
    i32.const 23
    i32.lt_u
    if
     local.get $1
     i32.const 2
     i32.shl
     i32.const 1296
     i32.add
     i32.const 0
     i32.store offset=4
     i32.const 0
     local.set $2
     loop $for-loop|1
      local.get $2
      i32.const 16
      i32.lt_u
      if
       local.get $1
       i32.const 4
       i32.shl
       local.get $2
       i32.add
       i32.const 2
       i32.shl
       i32.const 1296
       i32.add
       i32.const 0
       i32.store offset=96
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $for-loop|1
      end
     end
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $for-loop|0
    end
   end
   i32.const 1296
   i32.const 2880
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   i32.const 1296
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.tee $3
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 1040
   i32.const 1104
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  i32.const 16
  local.get $1
  i32.const 16
  i32.gt_u
  select
  local.tee $1
  call $~lib/rt/tlsf/searchBlock
  local.tee $4
  i32.eqz
  if
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/searchBlock
   local.tee $4
   i32.eqz
   if
    local.get $1
    i32.const 536870904
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 1
     i32.const 27
     local.get $1
     i32.clz
     i32.sub
     i32.shl
     i32.const 1
     i32.sub
     i32.add
    else
     local.get $1
    end
    i32.const 16
    memory.size
    local.tee $4
    i32.const 16
    i32.shl
    i32.const 16
    i32.sub
    local.get $0
    i32.load offset=1568
    i32.ne
    i32.shl
    i32.add
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.set $5
    local.get $4
    local.get $5
    local.get $4
    local.get $5
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $5
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
    local.get $0
    local.get $4
    i32.const 16
    i32.shl
    memory.size
    i32.const 16
    i32.shl
    call $~lib/rt/tlsf/addMemory
    local.get $0
    local.get $1
    call $~lib/rt/tlsf/searchBlock
    local.set $4
   end
  end
  local.get $4
  i32.load
  drop
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $3
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $4
  i32.load
  local.tee $2
  i32.const -4
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 32
  i32.ge_u
  if
   local.get $4
   local.get $1
   local.get $2
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.add
   local.tee $1
   local.get $3
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $4
   local.get $2
   i32.const -2
   i32.and
   i32.store
   local.get $4
   i32.const 16
   i32.add
   local.tee $0
   local.get $4
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $0
   local.get $4
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1284
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.set $2
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   drop
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  i32.const 1284
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/memory/memory.fill (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store8
   local.get $0
   i32.const 2399996
   i32.add
   local.tee $1
   i32.const 0
   i32.store8 offset=3
   local.get $0
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=2
   local.get $1
   i32.const 0
   i32.store8 offset=2
   local.get $1
   i32.const 0
   i32.store8 offset=1
   local.get $0
   i32.const 0
   i32.store8 offset=3
   local.get $1
   i32.const 0
   i32.store8
   local.get $0
   i32.const 0
   local.get $0
   i32.sub
   i32.const 3
   i32.and
   local.tee $1
   i32.add
   local.tee $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 2400000
   local.get $1
   i32.sub
   i32.const -4
   i32.and
   local.tee $2
   i32.add
   i32.const 28
   i32.sub
   local.tee $1
   i32.const 0
   i32.store offset=24
   local.get $2
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=16
   local.get $1
   i32.const 0
   i32.store offset=20
   local.get $2
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $0
   i32.const 0
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=16
   local.get $0
   i32.const 0
   i32.store offset=20
   local.get $0
   i32.const 0
   i32.store offset=24
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   local.get $1
   i32.const 0
   i32.store offset=12
   local.get $0
   local.get $0
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $1
   i32.add
   local.set $0
   local.get $2
   local.get $1
   i32.sub
   local.set $1
   loop $while-continue|0
    local.get $1
    i32.const 32
    i32.ge_u
    if
     local.get $0
     i64.const 0
     i64.store
     local.get $0
     i64.const 0
     i64.store offset=8
     local.get $0
     i64.const 0
     i64.store offset=16
     local.get $0
     i64.const 0
     i64.store offset=24
     local.get $1
     i32.const 32
     i32.sub
     local.set $1
     local.get $0
     i32.const 32
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   call $~lib/rt/tlsf/maybeInitialize
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/allocateBlock
   i32.const 16
   i32.add
   local.tee $0
   i32.const 1284
   i32.gt_u
   if
    local.get $0
    i32.const 16
    i32.sub
    local.tee $2
    i32.load offset=4
    local.set $1
    local.get $2
    local.get $1
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $2
    i32.load
    drop
   end
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 2400000
  i32.const 0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $1
  call $~lib/memory/memory.fill
  local.get $0
  i32.load
  local.tee $2
  local.get $1
  i32.ne
  if
   local.get $1
   i32.const 1284
   i32.gt_u
   if
    local.get $1
    i32.const 16
    i32.sub
    local.tee $3
    i32.load offset=4
    local.set $4
    local.get $3
    local.get $4
    i32.const 1
    i32.add
    i32.store offset=4
    local.get $3
    i32.load
    drop
   end
   local.get $2
   i32.const 1284
   i32.gt_u
   if
    local.get $2
    i32.const 16
    i32.sub
    call $~lib/rt/pure/decrement
   end
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 2400000
  i32.store offset=8
  local.get $0
 )
 (func $assembly/index/clear
  (local $0 i32)
  loop $for-loop|0
   local.get $0
   i32.const 2400000
   i32.lt_s
   if
    global.get $assembly/index/fire
    i32.load offset=4
    local.get $0
    i32.add
    i32.const 0
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/math/NativeMath.seedRandom (param $0 i64)
  (local $1 i64)
  (local $2 i32)
  i32.const 1
  global.set $~lib/math/random_seeded
  local.get $0
  local.get $0
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state0_64
  global.get $~lib/math/random_state0_64
  i64.const -1
  i64.xor
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -49064778989728563
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  i64.const -4265267296055464877
  i64.mul
  local.tee $1
  local.get $1
  i64.const 33
  i64.shr_u
  i64.xor
  global.set $~lib/math/random_state1_64
  local.get $0
  i32.wrap_i64
  i32.const 1831565813
  i32.add
  local.set $2
 )
 (func $assembly/index/updateScreen
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  loop $for-loop|0
   local.get $2
   i32.const 1500
   i32.lt_s
   if
    global.get $~lib/math/random_seeded
    i32.eqz
    if
     call $~lib/builtins/seed
     i64.reinterpret_f64
     call $~lib/math/NativeMath.seedRandom
    end
    global.get $~lib/math/random_state0_64
    local.set $3
    global.get $~lib/math/random_state1_64
    local.tee $4
    global.set $~lib/math/random_state0_64
    local.get $4
    local.get $3
    local.get $3
    i64.const 23
    i64.shl
    i64.xor
    local.tee $3
    local.get $3
    i64.const 17
    i64.shr_u
    i64.xor
    i64.xor
    local.get $4
    i64.const 26
    i64.shr_u
    i64.xor
    global.set $~lib/math/random_state1_64
    local.get $2
    i32.const 597000
    i32.add
    i32.const 2
    i32.shl
    local.tee $0
    global.get $assembly/index/fire
    local.tee $1
    i32.load offset=4
    i32.add
    local.get $4
    i64.const 12
    i64.shr_u
    i64.const 4607182418800017408
    i64.or
    f64.reinterpret_i64
    f64.const 1
    f64.sub
    f64.const 255
    f64.mul
    f64.floor
    i32.trunc_f64_u
    i32.store8
    local.get $1
    i32.load offset=4
    local.get $0
    i32.const 1
    i32.add
    i32.add
    i32.const 0
    i32.store8
    local.get $1
    i32.load offset=4
    local.get $0
    i32.const 2
    i32.add
    i32.add
    i32.const 0
    i32.store8
    local.get $1
    i32.load offset=4
    local.get $0
    i32.const 3
    i32.add
    i32.add
    i32.const 255
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   i32.const 399
   i32.lt_s
   if
    i32.const 0
    local.set $0
    loop $for-loop|2
     local.get $0
     i32.const 1500
     i32.lt_s
     if
      local.get $2
      i32.const 1
      i32.add
      i32.const 1500
      i32.mul
      local.tee $6
      local.get $0
      i32.const 1500
      i32.add
      local.tee $7
      i32.const 1500
      i32.rem_s
      i32.add
      i32.const 2
      i32.shl
      local.set $8
      local.get $0
      local.get $2
      i32.const 1500
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      local.tee $5
      global.get $assembly/index/fire
      local.tee $1
      i32.load offset=4
      i32.add
      local.get $1
      i32.load offset=4
      local.get $2
      i32.const 2
      i32.add
      i32.const 1500
      i32.mul
      local.get $7
      i32.const 1500
      i32.rem_s
      i32.add
      i32.const 2
      i32.shl
      i32.add
      i32.load8_u
      local.get $1
      i32.load offset=4
      local.get $6
      local.get $0
      i32.const 1501
      i32.add
      i32.const 1500
      i32.rem_s
      i32.add
      i32.const 2
      i32.shl
      i32.add
      i32.load8_u
      local.get $1
      i32.load offset=4
      local.get $6
      local.get $0
      i32.const 1499
      i32.add
      i32.const 1500
      i32.rem_s
      i32.add
      i32.const 2
      i32.shl
      i32.add
      i32.load8_u
      local.get $8
      local.get $1
      i32.load offset=4
      i32.add
      i32.load8_u
      i32.add
      i32.add
      i32.add
      f64.convert_i32_u
      f64.const 4.01
      f64.div
      i32.trunc_f64_u
      i32.store8
      local.get $1
      i32.load offset=4
      local.get $5
      i32.const 1
      i32.add
      i32.add
      i32.const 0
      i32.store8
      local.get $1
      i32.load offset=4
      local.get $5
      i32.const 2
      i32.add
      i32.add
      i32.const 0
      i32.store8
      local.get $1
      i32.load offset=4
      local.get $5
      i32.const 3
      i32.add
      i32.add
      i32.const 255
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|2
     end
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
 )
 (func $assembly/index/getDataBuffer (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $assembly/index/fire
  i32.load
  local.tee $0
  i32.const 1284
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   local.tee $1
   i32.load offset=4
   local.set $2
   local.get $1
   local.get $2
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $1
   i32.load
   drop
  end
  local.get $0
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  memory.grow
  drop
  call $~lib/rt/tlsf/maybeInitialize
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
  local.tee $1
  i32.const 1284
  i32.gt_u
  if
   local.get $1
   i32.const 16
   i32.sub
   local.tee $2
   i32.load offset=4
   local.set $3
   local.get $2
   local.get $3
   i32.const 1
   i32.add
   i32.store offset=4
   local.get $2
   i32.load
   drop
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.set $assembly/index/fire
  loop $for-loop|0
   local.get $0
   i32.const 2400000
   i32.lt_s
   if
    local.get $0
    global.get $assembly/index/fire
    i32.load offset=4
    i32.add
    i32.const 0
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $~lib/rt/pure/__collect
  nop
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  drop
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 268435455
  i32.and
  local.tee $2
  i32.const 1
  i32.eq
  if
   block $__inlined_func$~lib/rt/__visit_members
    block $switch$1$default
     block $switch$1$case$4
      local.get $0
      i32.const 8
      i32.add
      i32.load
      br_table $__inlined_func$~lib/rt/__visit_members $__inlined_func$~lib/rt/__visit_members $switch$1$case$4 $switch$1$case$4 $switch$1$default
     end
     local.get $0
     i32.load offset=16
     local.tee $1
     if
      local.get $1
      local.tee $2
      i32.const 1284
      i32.ge_u
      if
       local.get $2
       i32.const 16
       i32.sub
       call $~lib/rt/pure/decrement
      end
     end
     br $__inlined_func$~lib/rt/__visit_members
    end
    unreachable
   end
   local.get $0
   local.get $0
   i32.load
   i32.const 1
   i32.or
   i32.store
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   local.get $1
   i32.const -268435456
   i32.and
   i32.or
   i32.store offset=4
  end
 )
)
