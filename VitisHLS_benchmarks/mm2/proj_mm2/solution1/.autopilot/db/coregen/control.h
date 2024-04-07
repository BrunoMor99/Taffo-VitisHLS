// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of A
//        bit 31~0 - A[31:0] (Read/Write)
// 0x14 : Data signal of A
//        bit 31~0 - A[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of B
//        bit 31~0 - B[31:0] (Read/Write)
// 0x20 : Data signal of B
//        bit 31~0 - B[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of C
//        bit 31~0 - C[31:0] (Read/Write)
// 0x2c : Data signal of C
//        bit 31~0 - C[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of D
//        bit 31~0 - D[31:0] (Read/Write)
// 0x38 : Data signal of D
//        bit 31~0 - D[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_A_DATA 0x10
#define CONTROL_BITS_A_DATA 64
#define CONTROL_ADDR_B_DATA 0x1c
#define CONTROL_BITS_B_DATA 64
#define CONTROL_ADDR_C_DATA 0x28
#define CONTROL_BITS_C_DATA 64
#define CONTROL_ADDR_D_DATA 0x34
#define CONTROL_BITS_D_DATA 64
