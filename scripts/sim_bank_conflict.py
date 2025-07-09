# Simulate the bank conflict in Ara2
import pandas as pd
import numpy as np

np.random.seed(0)

def visualize_bank_index():
    Lane_byte_range = np.arange(0, N_Lanes * XLEN // 8)

    print("Byte:\t", end="")
    for i in Lane_byte_range:
        print(f"{i:x}", end=" ")
    print("\n")

def calcualte_hash(idx_lane, idx_bank, idx_bank_sub, idx_addr):
    """
    Calculate the hash of the gather indices for efficient bank conflict check
    """
    return (2.0*idx_addr-1) * (idx_lane * (2**(3+5)) + idx_bank * (2**2) + idx_bank_sub)

def check_conflict(idx_hash):
    """
    Check if there is any bank conflict in the gather indices.
    """
    s_ = idx_hash + idx_hash.reshape(-1, 1)
    s_[np.triu_indices_from(s_)] = -1
    ind_r, ind_c = np.where(s_==0)
    
    # print(idx_hash)
    # print(np.stack((ind_r, ind_c), axis=1))
    return np.stack((ind_r, ind_c), axis=1)

def calculate_bank_conflict_probability(
    par_gather: int =4,
    interleave_distance: int = 0,
    mapping: str = "bank",
    n_runs: int = 50,
    verbose: bool = False,
    ):
    assert LMUL*VLEN>=k_cluster*EEW, f"LMUL={LMUL}*VLEN={VLEN} must be greater than k_cluster={k_cluster}*EEW={EEW}"
    assert EEW>=np.log2(k_cluster), f"EEW={EEW} must be greater than log2(k_cluster)={np.log2(k_cluster)}"

    # Calculate the raw probability of bank conflict
    # when implementing parallel gather scheme
    n_elements_per_vlen = LMUL * VLEN // EEW
    bsz_cw = k_cluster # Batched size for weights/codewords
    n_bsz = n_elements_per_vlen // bsz_cw

    # Generate random gather index
    idx = np.random.randint(0, k_cluster, size=(n_runs, n_elements_per_vlen)).astype(np.uint16)
    offset = np.arange(n_bsz).repeat(bsz_cw) * bsz_cw
    idx = idx + offset.reshape(1, -1)
    
    # Use interleaving to reduce bank conflict
    if interleave_distance > 0:
        idx_interleaved = np.array([], dtype=np.uint16).reshape(idx.shape[0], 0)
        for j in range(interleave_distance):
            index = np.arange(j, idx.shape[1], interleave_distance)
            idx_interleaved = np.hstack((idx_interleaved, idx[:, index]))
        idx = idx_interleaved.astype(np.uint16)

    # Calculate the bank for each element
    # Each lane word holds XLEN*Lane/EEW elements
    n_elements_per_lane = XLEN * N_Lanes // EEW
    if mapping == "bank":
        # The i-th bank of each element
        # 0-15 for bank-0, 16-31 for bank-1, etc.
        idx_bank = (idx // n_elements_per_lane) % 8
        idx_bank = idx_bank.astype(np.uint16)
        idx_bank_sub = np.zeros_like(idx_bank) if N_Banks==8 else (idx % n_elements_per_lane)%(N_Banks//8)
        idx_addr = (idx // (n_elements_per_lane*8)).astype(np.uint16)
    else:
        raise ValueError(f"Invalid mapping: {mapping}")

    # Calculate the lane of each element
    idx_lane = ((idx % n_elements_per_lane) % N_Lanes).astype(np.uint16) + 1 # to prevent all-zero hash value
    idx_hash = calcualte_hash(idx_lane, idx_bank, idx_bank_sub, idx_addr).astype(np.int32)
    
    if verbose:
        for n, (i, j, k, l, m, h) in enumerate(zip(idx.flatten(), idx_lane.flatten(), idx_bank.flatten(), idx_bank_sub.flatten(), idx_addr.flatten(), idx_hash.flatten())):
            print(f"{n:d}:\t{i:d}\t@\tlane-{j:d}\tbank-{k:d}\tsub-bank-{l:d}\taddr-{m:d}\thash={h:d}")

    cnt_conflict, cnt_delay,  = 0, 0
    cnt_gather_per_vlen = n_elements_per_vlen // par_gather
    for i in range(n_runs):
        # Simulate each run of gather indices using parallel gathering
        for j in range(cnt_gather_per_vlen):
            h_ = idx_hash[i, j*par_gather:(j+1)*par_gather]
            ind_conflict = check_conflict(h_)
            # Update counters
            conflict_counts = len(np.unique(ind_conflict[:,0]))
            cnt_conflict += conflict_counts
            cnt_delay += 1 + (conflict_counts>0)*1.0

        #    if verbose:
        #     idx_lane_per_gather = idx_lane[i, j*par_gather:(j+1)*par_gather]
        #     idx_bank_per_gather = idx_bank[i, j*par_gather:(j+1)*par_gather]
        #     idx_bank_sub_per_gather = idx_bank_sub[i, j*par_gather:(j+1)*par_gather]
        #     idx_addr_per_gather = idx_addr[i, j*par_gather:(j+1)*par_gather]
        #     if len(ind_conflict) > 0:
        #         print(np.stack((idx_lane_per_gather, idx_bank_per_gather, idx_bank_sub_per_gather, idx_addr_per_gather, h_), axis=1))
        #         print(ind_conflict)
        #         for k_ in range(len(ind_conflict)):
        #             r, c = ind_conflict[k_]
        #             print(f"Conflict banks: \tlane-{idx_lane_per_gather[r]:d}\tbank-{idx_bank_per_gather[r]:d}\tsub-bank-{idx_bank_sub_per_gather[r]:d}\taddr-{idx_addr_per_gather[r]:d}")
    
    cnt_gather_total = n_runs*n_elements_per_vlen
    prob_conflict = cnt_conflict/cnt_gather_total * 100.0
    avg_delay_per_par_gather = cnt_delay/(cnt_gather_total/par_gather)
    total_latency = cnt_delay

    print(f"Configs: {k_cluster} clusters\t{N_Lanes} Lanes\t{N_Banks} Banks/Lane\tVLEN={VLEN}b\tLMUL={LMUL}\tEEW={EEW}\tpar_gather={par_gather}\tinterleave_distance={interleave_distance}")
    print(f"{cnt_gather_total} gathers with bank conflict probability: {prob_conflict:.2f}%\tAvg. delay: {avg_delay_per_par_gather:.2f}\tTotal latency: {total_latency:.0f}")
    return prob_conflict, avg_delay_per_par_gather, total_latency


XLEN = 64
EEW = 16

LMUL = 1 # Dont change this parameter
N_Lanes = 4
VLEN = 4096
N_Banks = 8

k_cluster = 256
par_gather = 8
# calculate_bank_conflict_probability(par_gather=par_gather, interleave_distance=0, n_runs=1, verbose=True)
# exit()
for k_cluster in [16, 32, 64, 128, 256]:
    for par_gather in [1, 2, 4, 8, 16, 32, 64, 128, 256]:
        calculate_bank_conflict_probability(par_gather=par_gather, interleave_distance=0, n_runs=50, verbose=False)
        # calculate_bank_conflict_probability(par_gather=par_gather, interleave_distance=par_gather, n_runs=50, verbose=False)

exit()
    
df = pd.DataFrame(columns=["N_Lanes", "N_Banks", "VLEN", "k_cluster", "use_interleaving", "par_gather", "prob_conflict", "avg_delay_per_par_gather", "total_latency"])

for N_Lanes in [4, 8]:
    for N_Banks in [8, 32]:
        for VLEN in [4096, 8192]:       
            for k_cluster in [16, 32, 64, 128, 256]:
                for par_gather in [1, 2, 4, 8, 16, 32]:
                    for use_interleaving in [False, True]:
                        prob_conflict, avg_delay_per_par_gather, total_latency = calculate_bank_conflict_probability(
                            par_gather=par_gather, 
                            use_interleaving=use_interleaving)

                        df = pd.concat([df, pd.DataFrame([{
                            "N_Lanes": N_Lanes,
                            "N_Banks": N_Banks,
                            "VLEN": VLEN,
                            "k_cluster": k_cluster,
                            "use_interleaving": use_interleaving,
                            "par_gather": par_gather,
                            "prob_conflict": prob_conflict,
                            "avg_delay_per_par_gather": avg_delay_per_par_gather,
                            "total_latency": total_latency
                        }])], ignore_index=True)

df["prob_conflict"] = df["prob_conflict"].round(2)
df["avg_delay_per_par_gather"] = df["avg_delay_per_par_gather"].round(2)
df["total_latency"] = df["total_latency"].round(2)
df.to_csv("sim_bank_conflict.csv", index=False)