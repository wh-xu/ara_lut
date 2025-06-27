# Simulate the bank conflict in Ara2
import numpy as np

np.random.seed(0)

EEW = 16
N_Lanes = 4
N_Banks = 8
XLEN = 64
VL = N_Lanes * XLEN // EEW

def visualize_bank_index():
    Lane_byte_range = np.arange(0, N_Lanes * XLEN // 8)

    print("Byte:\t", end="")
    for i in Lane_byte_range:
        print(f"{i:x}", end=" ")
    print("\n")


gather_idx = np.random.randint(0, np.log2(VL), size=VL)

print(gather_idx)

visualize_bank_index()
