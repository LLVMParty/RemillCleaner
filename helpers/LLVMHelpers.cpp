/*
  Original author: https://github.com/fvrmatteo
*/

#include <cstdint>
#include <cstring>

#include "remill/Arch/X86/Runtime/State.h"

/*
  Restrict pointer types
*/

using rptr64 = size_t *__restrict__;
using rptr8 = uint8_t *__restrict__;

/*
  Memory layout (0 length arrays treated as a simple pointer to unknown memory)
*/

extern "C" uint8_t STACK[0];
extern "C" uint8_t RAM[0];
extern "C" uint8_t CTX[0];
extern "C" uint8_t CS[0];
extern "C" uint8_t GS[0];
extern "C" uint8_t HTABLE[0];
extern "C" uint8_t BCODE[0];
extern "C" uint8_t VREGS[0];
extern "C" uint64_t __undef;

/*
  Memory read intrinsics
*/

extern "C" __attribute__((always_inline)) uint8_t __remill_read_memory_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint16_t __remill_read_memory_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint32_t __remill_read_memory_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint64_t __remill_read_memory_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint8_t __remill_read_stack_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint16_t __remill_read_stack_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint32_t __remill_read_stack_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint64_t __remill_read_stack_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint8_t __remill_read_gs_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint16_t __remill_read_gs_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint32_t __remill_read_gs_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint64_t __remill_read_gs_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint8_t __remill_read_cs_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint16_t __remill_read_cs_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint32_t __remill_read_cs_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((always_inline)) uint64_t __remill_read_cs_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

/*
  Volatile memory read intrinsics
*/

extern "C" __attribute__((noinline)) volatile uint8_t __remill_read_volatile_memory_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint16_t __remill_read_volatile_memory_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint32_t __remill_read_volatile_memory_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint64_t __remill_read_volatile_memory_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &RAM[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint8_t __remill_read_volatile_stack_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint16_t __remill_read_volatile_stack_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint32_t __remill_read_volatile_stack_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint64_t __remill_read_volatile_stack_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &STACK[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint8_t __remill_read_volatile_gs_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint16_t __remill_read_volatile_gs_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint32_t __remill_read_volatile_gs_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint64_t __remill_read_volatile_gs_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &GS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint8_t __remill_read_volatile_cs_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint16_t __remill_read_volatile_cs_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint32_t __remill_read_volatile_cs_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) volatile uint64_t __remill_read_volatile_cs_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &CS[a], sizeof(v));
  return v;
}

/*
  Memory write intrinsics
*/

extern "C" __attribute__((always_inline)) Memory *__remill_write_memory_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_memory_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_memory_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_memory_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_stack_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_stack_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_stack_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_stack_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_gs_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_gs_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_gs_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_gs_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_cs_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_cs_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_cs_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_write_cs_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

/*
  Volatile memory write intrinsics
*/

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_memory_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_memory_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_memory_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_memory_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&RAM[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_stack_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_stack_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_stack_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_stack_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&STACK[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_gs_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_gs_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_gs_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_gs_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&GS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_cs_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_cs_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_cs_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_volatile_cs_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&CS[a], &v, sizeof(v));
  return m;
}

/*
  Memory write operation intrinsics
*/

extern "C" __attribute__((noinline)) Memory *__remill_xor_memory_8(Memory *m, size_t a, uint8_t v) { return __remill_write_memory_8(m, a, __remill_read_memory_8(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_xor_memory_16(Memory *m, size_t a, uint16_t v) { return __remill_write_memory_16(m, a, __remill_read_memory_16(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_xor_memory_32(Memory *m, size_t a, uint32_t v) { return __remill_write_memory_32(m, a, __remill_read_memory_32(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_xor_memory_64(Memory *m, size_t a, uint64_t v) { return __remill_write_memory_64(m, a, __remill_read_memory_64(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_memory_8(Memory *m, size_t a, uint8_t v) { return __remill_write_memory_8(m, a, __remill_read_memory_8(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_memory_16(Memory *m, size_t a, uint16_t v) { return __remill_write_memory_16(m, a, __remill_read_memory_16(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_memory_32(Memory *m, size_t a, uint32_t v) { return __remill_write_memory_32(m, a, __remill_read_memory_32(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_memory_64(Memory *m, size_t a, uint64_t v) { return __remill_write_memory_64(m, a, __remill_read_memory_64(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_memory_8(Memory *m, size_t a, uint8_t v) { return __remill_write_memory_8(m, a, __remill_read_memory_8(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_memory_16(Memory *m, size_t a, uint16_t v) { return __remill_write_memory_16(m, a, __remill_read_memory_16(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_memory_32(Memory *m, size_t a, uint32_t v) { return __remill_write_memory_32(m, a, __remill_read_memory_32(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_memory_64(Memory *m, size_t a, uint64_t v) { return __remill_write_memory_64(m, a, __remill_read_memory_64(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_memory_8(Memory *m, size_t a, uint8_t v) { return __remill_write_memory_8(m, a, __remill_read_memory_8(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_memory_16(Memory *m, size_t a, uint16_t v) { return __remill_write_memory_16(m, a, __remill_read_memory_16(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_memory_32(Memory *m, size_t a, uint32_t v) { return __remill_write_memory_32(m, a, __remill_read_memory_32(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_memory_64(Memory *m, size_t a, uint64_t v) { return __remill_write_memory_64(m, a, __remill_read_memory_64(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_memory_8(Memory *m, size_t a, uint8_t v) { return __remill_write_memory_8(m, a, __remill_read_memory_8(m, a) - v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_memory_16(Memory *m, size_t a, uint16_t v) { return __remill_write_memory_16(m, a, __remill_read_memory_16(m, a) - v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_memory_32(Memory *m, size_t a, uint32_t v) { return __remill_write_memory_32(m, a, __remill_read_memory_32(m, a) - v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_memory_64(Memory *m, size_t a, uint64_t v) { return __remill_write_memory_64(m, a, __remill_read_memory_64(m, a) - v); }

/*
  Context read/write intrinsics
*/

extern "C" __attribute__((noinline)) uint8_t __remill_read_context_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &CTX[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint16_t __remill_read_context_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &CTX[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint32_t __remill_read_context_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &CTX[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint64_t __remill_read_context_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &CTX[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_context_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&CTX[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_context_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&CTX[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_context_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&CTX[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_context_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&CTX[a], &v, sizeof(v));
  return m;
}

/*
  Virtual registers read/write intrinsics
*/

extern "C" __attribute__((noinline)) uint8_t __remill_read_vregs_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &VREGS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint16_t __remill_read_vregs_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &VREGS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint32_t __remill_read_vregs_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &VREGS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint64_t __remill_read_vregs_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &VREGS[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_vregs_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&VREGS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_vregs_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&VREGS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_vregs_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&VREGS[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_vregs_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&VREGS[a], &v, sizeof(v));
  return m;
}

/*
  Handlers table read/write intrinsics
*/

extern "C" __attribute__((noinline)) uint8_t __remill_read_htable_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &HTABLE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint16_t __remill_read_htable_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &HTABLE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint32_t __remill_read_htable_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &HTABLE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint64_t __remill_read_htable_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &HTABLE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_htable_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&HTABLE[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_htable_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&HTABLE[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_htable_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&HTABLE[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_htable_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&HTABLE[a], &v, sizeof(v));
  return m;
}

/*
  Bytecode read/write intrinsics
*/

extern "C" __attribute__((noinline)) uint8_t __remill_read_bcode_8(Memory *m, size_t a) {
  uint8_t v = 0;
  std::memcpy(&v, &BCODE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint16_t __remill_read_bcode_16(Memory *m, size_t a) {
  uint16_t v = 0;
  std::memcpy(&v, &BCODE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint32_t __remill_read_bcode_32(Memory *m, size_t a) {
  uint32_t v = 0;
  std::memcpy(&v, &BCODE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) uint64_t __remill_read_bcode_64(Memory *m, size_t a) {
  uint64_t v = 0;
  std::memcpy(&v, &BCODE[a], sizeof(v));
  return v;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_bcode_8(Memory *m, size_t a, uint8_t v) {
  std::memcpy(&BCODE[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_bcode_16(Memory *m, size_t a, uint16_t v) {
  std::memcpy(&BCODE[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_bcode_32(Memory *m, size_t a, uint32_t v) {
  std::memcpy(&BCODE[a], &v, sizeof(v));
  return m;
}

extern "C" __attribute__((noinline)) Memory *__remill_write_bcode_64(Memory *m, size_t a, uint64_t v) {
  std::memcpy(&BCODE[a], &v, sizeof(v));
  return m;
}

/*
  Context write operation intrinsics
*/

extern "C" __attribute__((noinline)) Memory *__remill_xor_context_8(Memory *m, size_t a, uint8_t v) { return __remill_write_context_8(m, a, __remill_read_context_8(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_xor_context_16(Memory *m, size_t a, uint16_t v) { return __remill_write_context_16(m, a, __remill_read_context_16(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_xor_context_32(Memory *m, size_t a, uint32_t v) { return __remill_write_context_32(m, a, __remill_read_context_32(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_xor_context_64(Memory *m, size_t a, uint64_t v) { return __remill_write_context_64(m, a, __remill_read_context_64(m, a) ^ v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_context_8(Memory *m, size_t a, uint8_t v) { return __remill_write_context_8(m, a, __remill_read_context_8(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_context_16(Memory *m, size_t a, uint16_t v) { return __remill_write_context_16(m, a, __remill_read_context_16(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_context_32(Memory *m, size_t a, uint32_t v) { return __remill_write_context_32(m, a, __remill_read_context_32(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_add_context_64(Memory *m, size_t a, uint64_t v) { return __remill_write_context_64(m, a, __remill_read_context_64(m, a) + v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_context_8(Memory *m, size_t a, uint8_t v) { return __remill_write_context_8(m, a, __remill_read_context_8(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_context_16(Memory *m, size_t a, uint16_t v) { return __remill_write_context_16(m, a, __remill_read_context_16(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_context_32(Memory *m, size_t a, uint32_t v) { return __remill_write_context_32(m, a, __remill_read_context_32(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_and_context_64(Memory *m, size_t a, uint64_t v) { return __remill_write_context_64(m, a, __remill_read_context_64(m, a) & v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_context_8(Memory *m, size_t a, uint8_t v) { return __remill_write_context_8(m, a, __remill_read_context_8(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_context_16(Memory *m, size_t a, uint16_t v) { return __remill_write_context_16(m, a, __remill_read_context_16(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_context_32(Memory *m, size_t a, uint32_t v) { return __remill_write_context_32(m, a, __remill_read_context_32(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_or_context_64(Memory *m, size_t a, uint64_t v) { return __remill_write_context_64(m, a, __remill_read_context_64(m, a) | v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_context_8(Memory *m, size_t a, uint8_t v) { return __remill_write_context_8(m, a, __remill_read_context_8(m, a) - v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_context_16(Memory *m, size_t a, uint16_t v) { return __remill_write_context_16(m, a, __remill_read_context_16(m, a) - v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_context_32(Memory *m, size_t a, uint32_t v) { return __remill_write_context_32(m, a, __remill_read_context_32(m, a) - v); }

extern "C" __attribute__((noinline)) Memory *__remill_sub_context_64(Memory *m, size_t a, uint64_t v) { return __remill_write_context_64(m, a, __remill_read_context_64(m, a) - v); }

/*
  Memory compare exchange intrinsics
*/

extern "C" __attribute__((always_inline)) Memory *__remill_compare_exchange_memory_8(Memory *m, addr_t addr, uint8_t &expected, uint8_t desired) {
  // 1. Determine the volatile address
  volatile uint8_t *ptr = (uint8_t *)(&RAM[addr]);
  // 2. Fetch the destination value
  uint8_t destination = *ptr;
  // 3. Compare the destination with the expected value
  if (destination == expected) {
    *ptr = desired;
  } else {
    expected = destination;
  }
  // 4. Return the memory reference
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_compare_exchange_memory_16(Memory *m, addr_t addr, uint16_t &expected, uint16_t desired) {
  // 1. Determine the volatile address
  volatile uint16_t *ptr = (uint16_t *)(&RAM[addr]);
  // 2. Fetch the destination value
  uint16_t destination = *ptr;
  // 3. Compare the destination with the expected value
  if (destination == expected) {
    *ptr = desired;
  } else {
    expected = destination;
  }
  // 4. Return the memory reference
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_compare_exchange_memory_32(Memory *m, addr_t addr, uint32_t &expected, uint32_t desired) {
  // 1. Determine the volatile address
  volatile uint32_t *ptr = (uint32_t *)(&RAM[addr]);
  // 2. Fetch the destination value
  uint32_t destination = *ptr;
  // 3. Compare the destination with the expected value
  if (destination == expected) {
    *ptr = desired;
  } else {
    expected = destination;
  }
  // 4. Return the memory reference
  return m;
}

extern "C" __attribute__((always_inline)) Memory *__remill_compare_exchange_memory_64(Memory *m, addr_t addr, uint64_t &expected, uint64_t desired) {
  // 1. Determine the volatile address
  volatile uint64_t *ptr = (uint64_t *)(&RAM[addr]);
  // 2. Fetch the destination value
  uint64_t destination = *ptr;
  // 3. Compare the destination with the expected value
  if (destination == expected) {
    *ptr = desired;
  } else {
    expected = destination;
  }
  // 4. Return the memory reference
  return m;
}
