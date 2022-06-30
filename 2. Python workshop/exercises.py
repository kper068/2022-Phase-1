from matplotlib.pyplot import subplot_mosaic


rows = []
with open("transmissions.csv") as file:  
    for row in file:
        row = row.strip()
        rows.append(row.split(", "))

""" transmission = [[] for i in range(len(rows)-1)]
sumTransmissions = []
i = 0
for row in rows[1:]:
    row[1] = row[1].replace(".", "-")
    transmission[i] = row[1].split("-")
    transmission[i] = [x for x in transmission[i] if x]
    transmission[i] = [int(x) for x in transmission[i]]
    sumTransmissions.append(sum(transmission[i]))
    i += 1
"""
rows.pop(0)
ids = [row[0] for row in rows]
transmissions = [row[1] for row in rows]
sums = []
for t in transmissions:
    current_sum = 0
    for char in t:
        try:
            current_sum += int(char)
        except:
            continue
    sums.append(current_sum)

ids = [int(x) for x in ids]
msg = {}
output_msg = ""

for i in range(0, len(ids)-1):
    msg[ids[i]] = chr(sums[i])
decrypted_msg = sorted(msg.items())
for id,letter in decrypted_msg:
    output_msg += letter
print(output_msg)