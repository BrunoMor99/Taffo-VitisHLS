// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of data
//        bit 31~0 - data[31:0] (Read/Write)
// 0x14 : Data signal of data
//        bit 31~0 - data[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of cov
//        bit 31~0 - cov[31:0] (Read/Write)
// 0x20 : Data signal of cov
//        bit 31~0 - cov[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of mean
//        bit 31~0 - mean[31:0] (Read/Write)
// 0x2c : Data signal of mean
//        bit 31~0 - mean[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_DATA_DATA 0x10
#define CONTROL_BITS_DATA_DATA 64
#define CONTROL_ADDR_COV_DATA  0x1c
#define CONTROL_BITS_COV_DATA  64
#define CONTROL_ADDR_MEAN_DATA 0x28
#define CONTROL_BITS_MEAN_DATA 64