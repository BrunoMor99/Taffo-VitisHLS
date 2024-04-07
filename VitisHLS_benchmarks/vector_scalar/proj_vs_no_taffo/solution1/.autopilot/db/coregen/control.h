// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of A_0
//        bit 31~0 - A_0[31:0] (Read/Write)
// 0x14 : Data signal of A_0
//        bit 31~0 - A_0[63:32] (Read/Write)
// 0x18 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_A_0_DATA 0x10
#define CONTROL_BITS_A_0_DATA 64
