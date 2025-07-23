enum vlmul{
    VLMUL1_8 = 0x5,
    VLMUL1_4 = 0x6,
    VLMUL1_2 = 0x7,
    VLMUL1 = 0x0,
    VLMUL2 = 0x1,
    VLMUL4 = 0x2,
    VLMUL8 = 0x3,
};

enum vsew{
    VSEW8 = 0x0,
    VSEW16 = 0x1,
    VSEW32 = 0x2,
    VSEW64 = 0x3,
};

enum vma{
    VMA_U = 0x0,
    VMA_A = 0x1,
};

enum vta{
    VTA_U = 0x0,
    VTA_A = 0x1,
};

enum vlut_type{
    CBSEQ   = 0x0,
    CB4     = 0x1,
    CB8     = 0x2,
    CB16    = 0x3,
    CB32    = 0x4,
    CB64    = 0x5,
    CB128   = 0x6,
    CB256   = 0x7,
};

enum vlut_pack{
    VPACK_OFF = 0x0,
    VPACK_ON  = 0x1,
};

uint32_t get_vsetvl_cfg(uint8_t vsew, uint8_t vlmul, uint8_t vma, uint8_t vta, uint8_t vlut_mode, uint8_t vlut_pack){
    uint32_t cfg = 0;
    cfg |= vlmul;
    cfg |= (vsew << 3);
    cfg |= (vta << 6);
    cfg |= (vma << 7);
    cfg |= (vlut_mode << 8);
    cfg |= (vlut_pack << 11);
    return cfg;
}

