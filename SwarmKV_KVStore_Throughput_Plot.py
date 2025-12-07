import os
import re
import statistics
import matplotlib.pyplot as plt
import seaborn as sns

# Set research-style aesthetics
sns.set(style="whitegrid", font_scale=1.2)
plt.rcParams.update({
    "figure.figsize": (8, 5),
    "axes.titlesize": 16,
    "axes.labelsize": 14,
    "xtick.labelsize": 12,
    "ytick.labelsize": 12,
    "legend.fontsize": 12,
    "lines.linewidth": 2,
    "lines.markersize": 6,
})

pattern = re.compile(r"^Local\s+tput:\s*(\d+)\s*kpos\b")
logs_dir = "logs_KVStore"

client_counts = []
client_tputs = []
print(f"{'Folder':<35} {'Throughput (kPOS)':<30}")
print("=" * 55)

for client_count in range(1, 17):
    folder_name = f"SwarmKV-KVStore-{client_count}-client"
    folder_path = os.path.join(logs_dir, folder_name)

    tput_vals = []

    for client_id in range(1, client_count + 1):
        client_file = os.path.join(folder_path, f"client{client_id}.txt")
        with open(client_file, "r") as f:
            lines = f.readlines()

        matches = [int(m.group(1)) for line in lines if (m := pattern.search(line))]
        tput_vals.append(matches[0])

    client_counts.append(client_count)
    client_tputs.append(statistics.mean(tput_vals))
    print(f"{folder_name:<35} {statistics.mean(tput_vals):<30.1f}")

# Plotting both curves on the same graph
plt.figure()

plt.plot(client_counts, client_tputs, marker='o')

plt.title("Average Throughput vs Number of Clients")
plt.xlabel("Number of Clients")
plt.ylabel("Throughput (kPOS)")
plt.xticks(client_counts)
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.legend(loc="upper left", frameon=True)
plt.tight_layout()
plt.savefig("SwarmKV-KVStore-Throughput.png")
plt.show()

print("Plot saved as 'SwarmKV-KVStore-Throughput.png'.")